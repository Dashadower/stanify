import math
import os
from ..builders.utilities import get_data_path, idata2netcdf4store, get_structure
from ..builders.stan_model import vensim2stan
import cmdstanpy

from ..calibrator.visualizer import prior_pred_check, posterior_check
import numpy as np
import xarray as xr
xr.set_options(display_expand_attrs = False)
import arviz as az

def trunc4StanNegBinom(real_series):
    """
    DataArray type real series
    """
    int_series = [math.trunc(i) for i in real_series]
    return int_series


def draws2data(model, iter_sampling=1):
    """
    Parameters
    ----------
    model: model with constructed function and draws2data stanfile
    draws2data_numeric_assumption: driving data and realized random variable
    iter_sampling: S numbers of prior samples which should

    Returns
    -------
    matching_data: InferenceData type with shape (chain: 1, (prior_)draw: S, (regional_)group: R)
    """

    draws2data_data = model.stanify_draws2data().sample(data=model.numeric, fixed_param=True, iter_sampling=iter_sampling)

    draws2data_idata = az.from_cmdstanpy(draws2data_data)

    nc_path = f"{get_data_path(model.model_name)}/generator.nc"
    idata2netcdf4store(nc_path, draws2data_idata)
    return draws2data_idata #TODO return all vs sample_stats


def data2draws(model, chains = 4, iter_sampling = 250):
    """
    Parameters
    ----------
    model: configuration combination of structural, setting, numeric
    chains: number of different explorations in posterior space
    iter_sampling: number of sample after HMC warmup (= effective MCMC sample)

    Returns
    -------
    InferenceData type
    """
    # for key in model.target_simulated_vector_names:
    #     data2draws_numeric_assumption[f"{key}_obs"] = trunc4StanNegBinom(data2draws_numeric_assumption[f"{key}_obs"])
    data2draws_data = model.stanify_data2draws().sample(data=model.numeric, chains=chains,
                                                 iter_sampling=iter_sampling)
    data2draws_idata = az.from_cmdstanpy(data2draws_data)

    nc_path = f"{get_data_path(model.model_name)}/estimator.nc"
    idata2netcdf4store(nc_path, data2draws_idata)

    return data2draws_idata


def draws2data2draws(vensim, setting, numeric, prior_coord, S, M, N):
    """
    vensim: vensim filepath which provides structral assumption
    setting: modeler's selection of which parameter to estimate
    numeric: driving data
    prior_coord: dictionary-like container for estimated parameters (default point mass for assumed parameters)
    S: number of draws from prior; prior samples are dim: stored in sbc_xr as [S * M]
    M: number of draws from posterior; posterior samples are stored in sbc_xr as [S * M]
    N: length of matching timeseries vectors (final time - initial time (0)) / time_step, but
    """
    # matching vectors match draws2data and data2draws
    for matching in setting['target_simulated_vector_names']:
        numeric[f"{matching}_obs"] = [0] * N

    # set four model components: structure, numeric, setting, prior
    model = vensim2stan(get_structure(vensim))
    model.set_numeric(numeric)
    model.set_setting(**setting)

    # perception (brain, flow)
    for est_param in prior_coord:
        model.set_prior(est_param[0], est_param[1], est_param[2], est_param[3], lower = est_param[4])

    # measurement (eye, stock)
    matching_vector_names = model.get_matching_vector_names()

    for target in setting['target_simulated_vector_names']:
        model.set_prior(f"{target}_obs", "normal", f"{target}", "m_noise_scale")

    model.build_stan_functions()
    draws2data_idata = draws2data(model, iter_sampling=S)

    for s in range(S):
        model_data2draws = model_update(model, draws2data_idata, s)
        data2draws_idata = data2draws(model_data2draws, chains=4, iter_sampling=int(M/4))
        draws2data_idata.rename({'posterior': 'prior'}, inplace=True)

        if s == 0:
            sbc_idata = data2draws_idata.extend(draws2data_idata)
        sbc_idata[matching_vector_names].iloc['prior_draw' == s] = draws2data_idata[matching_vector_names].sel(draw=s)

    nc_path = f"{get_data_path(model.model_name)}/generator.nc"
    idata2netcdf4store(nc_path, sbc_idata)
    test_q_lst = ['loglik']
    return diagnose(sbc_idata, test_q_lst)


def model_update(model, draws2data_idata, s):
    """
    Parameters
    ----------
    draws2data_idata: InferenceData with dimension (general: chain, draws, initial_outcome_dim_0, integrated_result_dim_0, integrated_result_dim_1,
                                                   specific: prey_dim_0, process_noise_dim_0, predator_dim_0, prey_obs_dim_0, predator_obs_dim_0)
    s: prior_draw_idx

    Returns
    -------
    model_data2draws: process noise turned-off model
    numeric_data2draws: draws2data_s added as observed data
    """
    matching_vector_names = model.get_matching_vector_names()
    obs_dict = {k: v.values.flatten() for (k, v) in draws2data_idata.posterior[matching_vector_names].sel(draw=s).items()}

    for matching in matching_vector_names:
        model.update_numeric({f'{matching}': obs_dict[f'{matching}']})
    model.update_numeric({'process_noise_scale': 0.0})
    return model


def diagnose(sbc_xr, test_quantity, matching_obs): #TODO variable-wise?

    prior_sample = sbc_xr.prior_sample #[dim: prior_draws (no chain, draws..)]
    posterior_sample = sbc_xr.posterior_sample
    matching_simulated = sbc_xr.matching_simulated
    matching_simulated_obs = sbc_xr.matching_simulated_obs
    target_obs = sbc_xr.sbc_xr
    loglik = 1 #TODO
    return compare(test_quantity(prior_sample, target_simulated, target_simulated_obs, target_obs),
                   test_quantity(posterior_sample, target_simulated, target_simulated_obs, target_obs))

def compare(a, b):
    return np.abs(a-b)