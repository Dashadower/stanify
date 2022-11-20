functions{
    #include Inven_6est_dot5_pnoise_functions.stan
}

data{
    int n_t;
    int n_r;
    int n_q;
    real time_step;
    vector[20] customer_order_rate;
    vector[20] process_noise_uniform_driving;
    real process_noise_scale;
    vector[20] production_rate_stocked_obs;
    vector[20] production_start_rate_stocked_obs;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {0.01, 0.04, 0.06999999999999999, 0.09999999999999999, 0.13, 0.16, 0.19, 0.22, 0.25, 0.28, 0.31, 0.33999999999999997, 0.37, 0.4, 0.43, 0.45999999999999996, 0.49, 0.52, 0.55, 0.58};
}

parameters{
    real<lower=0> wip_adjustment_time;
    real<lower=0> manufacturing_cycle_time;
    real<lower=0> inventory_adjustment_time;
    real<lower=0> minimum_order_processing_time;
    real<lower=0> target_delivery_delay;
    real<lower=0> m_noise_scale;
    real<lower=0> safety_stock_coverage;
}

transformed parameters {
    // Initial ODE values
    real process_noise__init = 0;
    real production_rate_stocked__init = 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) / 8) / 8 * fmax(0, 1 + 0);
    real production_start_rate_stocked__init = fmax(0, fmax(0, fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) / 8) + (8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) / 8) - 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) / 8)) / 2));
    real backlog__init = dataFunc__customer_order_rate(0, time_step) * 2;
    real work_in_process_inventory__init = 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) / 8);
    real expected_order_rate__init = dataFunc__customer_order_rate(0, time_step);
    real inventory__init = 2 + 2 * dataFunc__customer_order_rate(0, time_step);

    vector[7] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = process_noise__init;
    initial_outcome[2] = production_rate_stocked__init;
    initial_outcome[3] = production_start_rate_stocked__init;
    initial_outcome[4] = backlog__init;
    initial_outcome[5] = work_in_process_inventory__init;
    initial_outcome[6] = expected_order_rate__init;
    initial_outcome[7] = inventory__init;

    vector[7] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, target_delivery_delay, manufacturing_cycle_time, wip_adjustment_time, time_step, inventory_adjustment_time, minimum_order_processing_time, safety_stock_coverage, process_noise_scale);
    array[n_t] real process_noise = integrated_result[:, 1];
    array[n_t] real production_rate_stocked = integrated_result[:, 2];
    array[n_t] real production_start_rate_stocked = integrated_result[:, 3];
    array[n_t] real backlog = integrated_result[:, 4];
    array[n_t] real work_in_process_inventory = integrated_result[:, 5];
    array[n_t] real expected_order_rate = integrated_result[:, 6];
    array[n_t] real inventory = integrated_result[:, 7];
}

model{
    wip_adjustment_time ~ normal(2, 0.02);
    manufacturing_cycle_time ~ normal(8, 0.08);
    inventory_adjustment_time ~ normal(8, 0.08);
    minimum_order_processing_time ~ normal(2, 0.02);
    target_delivery_delay ~ normal(2, 0.02);
    m_noise_scale ~ normal(0.01, 0.0005);
    safety_stock_coverage ~ normal(2, 0.02);
    production_rate_stocked_obs ~ normal(production_rate_stocked, m_noise_scale);
    production_start_rate_stocked_obs ~ normal(production_start_rate_stocked, m_noise_scale);
}

generated quantities{
    vector[20] production_rate_stocked_obs_posterior = to_vector(normal_rng(production_rate_stocked, m_noise_scale));
    vector[20] production_start_rate_stocked_obs_posterior = to_vector(normal_rng(production_start_rate_stocked, m_noise_scale));

    real loglik;
    loglik += normal_lpdf(production_rate_stocked_obs|production_rate_stocked, m_noise_scale);
    loglik += normal_lpdf(production_start_rate_stocked_obs|production_start_rate_stocked, m_noise_scale);
}
