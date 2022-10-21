import matplotlib
matplotlib.use('TkAgg')
import numpy as np
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.calibrator.draws_data_mapper import  draws2data, data2draws
from stanify.builders.stan_model import StanVensimModel
from stanify.calibrator.visualizer import prior_pred_check, posterior_check

vf = VensimFile('vensim_models/prey_predator/prey_predator_p_noise.mdl')
vf.parse()
structural_assumption = vf.get_abstract_model()

n_t = 20
time_step= .0325
setting_assumption = {
    "est_param" : ("alpha", "beta", "gamma", "delta"),
    "target_simulated_vector_names" : ("prey", "predator"),
    "driving_vector_names" : ("process_noise_std_norm_data", "time_step"),
    "model_name": "prey_predator_pn",
}


## numeric data (using values in vensim)
numeric_assumption = {
    "integration_times": list(range(1, n_t + 1)),
    "initial_time": 0.0,
    "n_t": n_t,
    "process_noise_std_norm_data": np.random.normal(0,1, size=n_t),
    "time_step" : np.repeat(time_step, n_t)
}

for key in setting_assumption.get('target_simulated_vector_names'):
    numeric_assumption[f"{key}_obs"] = list(range(1, n_t + 1))

model = StanVensimModel(structural_assumption)
model.set_setting(**setting_assumption)
model.set_numeric(numeric_assumption)

# model.set_prior("alpha", "normal", 0.8, 0.08, lower = 0)
# model.set_prior("beta", "normal", 0.05, 0.005, lower = 0)
# model.set_prior("delta", "normal", 0.05, 0.005, lower = 0)
# model.set_prior("gamma", "normal", 0.8, 0.08, lower = 0)
model.set_prior("process_noise_scale", )
model.set_prior("time_step", "normal", time_step, 0.000001, lower = 0)
model.set_prior("alpha", "normal", 0.8, 0.0001, lower = 0)
model.set_prior("beta", "normal", 0.05, 0.0001, lower = 0)
model.set_prior("delta", "normal", 0.05,0.0001, lower = 0)
model.set_prior("gamma", "normal", 0.8, 0.0001, lower = 0)

model.set_prior("m_noise_scale", "normal", 0.5, 0.05, lower = 0)

for key in setting_assumption['target_simulated_vector_names']:
    model.set_prior(f"{key}_obs", "normal", f"{key}", "m_noise_scale")

model.build_stan_functions()

prior_pred_obs = draws2data(model, numeric_assumption)
# you only need to run `draws2data` once; next you can run below
# prior_pred_obs_xr = xr.open_dataset(f"data/{setting_assumption['model_name']}/generator.nc")

prior_pred_check(setting_assumption)

# estimator
for key, value in prior_pred_obs[1].items():
    numeric_assumption[key + "_obs"] = value
    print(value)

posterior = data2draws(model, numeric_assumption)
# you only need to run `draws2data` once; next you can run below
# posterior = xr.open_dataset(f"data/{setting_assumption['model_name']}/estimator.nc")

posterior_check(setting_assumption)


# data_df = pd.read_csv("data/hudson-bay-lynx-hare.csv")[['predator', 'prey']].iloc[:, :n_t]

# loglik_diagnostic(posterior, data_df, hierarchy = "n_g" in numeric_assumption.keys())