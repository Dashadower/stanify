import matplotlib
matplotlib.use('TkAgg')
import pandas as pd
import numpy as np
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.calibrator.draws_data_mapper import  draws2data, data2draws
from stanify.builders.stan_model import StanVensimModel
from stanify.calibrator.visualizer import prior_pred_check, posterior_check

# generator with process noise
# equations from vensim
vf = VensimFile('vensim_models/mngInven/mng_inven.mdl')
vf.parse()
structural_assumption = vf.get_abstract_model()

# TODO get time step
n_t = 100 #1600 #int(18/0.0625) # 18 weeks
time_step = .0625
# "ass_param_scalar" : ("inventory_coverage", "manufacturing_cycle_time", "safety_stock_coverage", "time_to_average_order_rate", "wip_adjustment_time"),
setting_assumption = {
    "est_param" : ("inventory_adjustment_time", "minimum_order_processing_time"),
    "target_simulated_vector_names" : ("production_rate_stocked", "production_start_rate_stocked"),
    "driving_vector_names" : ("customer_order_rate", "m_noise_std_half_normal", "p_noise_std_normal"),
    "model_name": "mngInven"
}

# data for stan blocks
numeric_data_assumption = {
    "n_t": n_t,
    "time_step": .03,
    "customer_order_rate": np.tile(pd.read_csv('data/example_retail_sales.csv').iloc[:n_t, 1], 1),
    "process_noise_std_normal": np.random.normal(0,1, size=n_t),
    "measurement_noise_std_half_normal": np.abs(np.random.normal(0,1, size=n_t),)
}
# "process_noise_uniform_driving": np.random.uniform(low=-.5, high=.5, size=n_t),
# 'process_noise_scale': 0.1

for key in setting_assumption['target_simulated_vector_names']:
    numeric_data_assumption[f"{key}_obs"] = [0]*n_t

model = StanVensimModel(structural_assumption)
model.set_numeric(numeric_data_assumption)
model.set_setting(**setting_assumption)

model.set_prior("inventory_adjustment_time", "normal", 7.01, 0.7, lower=0)
model.set_prior("minimum_order_processing_time", "normal", 0.5, 0.05, lower=0)

model.set_prior("m_noise_scale", "normal", 0.01, 0.0005, lower = 0)

for key in setting_assumption['target_simulated_vector_names']:
    model.set_prior(f"{key}_obs", "normal", f"{key}", "m_noise_scale")

model.build_stan_functions()
obs_xr = draws2data(model, numeric_data_assumption, iter_sampling = 30) # run this only once; it compiles and stores data
#obs_xr = xr.open_dataset(f"data/{setting_assumption['model_name']}/generator.nc")

obs_dict = {k: v.values.flatten() for (k,v) in obs_xr[['prey_obs','predator_obs']].items()}
prior_pred_check(setting_assumption)

prior_pred_check(setting_assumption)

# estimator without process noise
numeric_data_assumption["process_noise_scale"] = 0.0
for key, value in obs_dict.items():
    numeric_data_assumption[key] = value

model.update_numeric({'prey_obs': obs_dict['prey_obs'], 'predator_obs': obs_dict['predator_obs'],'process_noise_scale': 0.0 })

posterior = data2draws(model, numeric_data_assumption, iter_sampling = 1000)
#posterior = xr.open_dataset(f"data/{setting_assumption['model_name']}/estimator.nc")

posterior_check(setting_assumption)
