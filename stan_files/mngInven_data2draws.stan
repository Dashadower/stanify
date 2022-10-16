functions{
    #include mngInven_functions.stan
}

data{
    int n_t;
    vector[20] customer_order_rate;
    vector[20] process_noise_std_norm_data;
    vector[20] production_start_rate_m_noise_trun_norm_data;
    vector[20] production_rate_m_noise_trun_norm_data;
    vector[20] production_rate_stocked_obs;
    vector[20] production_start_rate_stocked_obs;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}

parameters{
    real<lower=0> inventory_adjustment_time;
    real<lower=0> minimum_order_processing_time;
    real<lower=0> m_noise_scale;
}

transformed parameters {
    // Initial ODE values
    real production_start_rate_stocked__init = (fmax(0, ((fmax(0, ((10.01)) + ((((0.5) + (2.01)) * ((10.01))) - ((((0.5) + (2.01)) * ((10.01)))) / (7.01)))) + (((6.01) * (fmax(0, ((10.01)) + ((((0.5) + (2.01)) * ((10.01))) - ((((0.5) + (2.01)) * ((10.01)))) / (7.01))))) - (((6.01) * (fmax(0, ((10.01)) + ((((0.5) + (2.01)) * ((10.01))) - ((((0.5) + (2.01)) * ((10.01)))) / (7.01)))))) / (3.01)))));
    real inventory__init = (((0.5) + (2.01)) * ((10.01)));
    real process_noise__init = ((1) * (0.1) * 2 - ((0.0625) / (10)) / ((0.0625) / (10)) ^ 0.5);
    real backlog__init = ((10.01)) * (2.01);
    real production_rate_stocked__init = (fmax(0, 1 + (((1) * (0.1) * 2 - ((0.0625) / (10)) / ((0.0625) / (10)) ^ 0.5))) * (((6.01) * (fmax(0, ((10.01)) + ((((0.5) + (2.01)) * ((10.01))) - ((((0.5) + (2.01)) * ((10.01)))) / (7.01)))))) / (6.01));
    real work_in_process_inventory__init = ((6.01) * (fmax(0, ((10.01)) + ((((0.5) + (2.01)) * ((10.01))) - ((((0.5) + (2.01)) * ((10.01)))) / (7.01)))));
    real expected_order_rate__init = (10.01);

    vector[7] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = production_start_rate_stocked__init;
    initial_outcome[2] = inventory__init;
    initial_outcome[3] = process_noise__init;
    initial_outcome[4] = backlog__init;
    initial_outcome[5] = production_rate_stocked__init;
    initial_outcome[6] = work_in_process_inventory__init;
    initial_outcome[7] = expected_order_rate__init;

    vector[7] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, minimum_order_processing_time, inventory_adjustment_time);
    array[n_t] real production_start_rate_stocked = integrated_result[:, 1];
    array[n_t] real inventory = integrated_result[:, 2];
    array[n_t] real process_noise = integrated_result[:, 3];
    array[n_t] real backlog = integrated_result[:, 4];
    array[n_t] real production_rate_stocked = integrated_result[:, 5];
    array[n_t] real work_in_process_inventory = integrated_result[:, 6];
    array[n_t] real expected_order_rate = integrated_result[:, 7];
}

model{
    inventory_adjustment_time ~ normal(7.01, 0.7);
    minimum_order_processing_time ~ normal(0.5, 0.05);
    m_noise_scale ~ normal(0.01, 0.0005);
    production_rate_stocked_obs ~ normal(production_rate_stocked, m_noise_scale);
    production_start_rate_stocked_obs ~ normal(production_start_rate_stocked, m_noise_scale);
}

