functions{
    #include functions.stan
}

data{
    int <lower=0> S;  // # of draws from prior 
    int <lower=0> M;  // # of draws from posterior (# of chains * # of draws from each chain)
    int <lower=0> N;  // # of observation
    int <lower=0> Q;  // # of target_simulated_stock and obs_vectors 
    int <lower=0> R;  // # of subgroups for hierarchical Bayes 
    real <lower=0> time_step;
    array[N] real integration_times;
    vector[200] customer_order_rate;
    vector[200] process_noise_uniform_driving;
    real process_noise_scale;
    array[N] real production_rate_stocked_obs;
    array[N] real production_start_rate_stocked_obs;
}

transformed data {
    real initial_time = 0.0;

    // Initial ODE values
    real backlog__init = dataFunc__customer_order_rate(0, time_step) * 2;
    real expected_order_rate__init = dataFunc__customer_order_rate(0, time_step);
    real inventory__init = 2 + 2 * dataFunc__customer_order_rate(0, time_step);
    real process_noise__init = 0;
    real production_rate_stocked__init = 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) * 1 / 8) / 8 * fmax(0, 1 + 0);
    real production_start_rate_stocked__init = fmax(0, fmax(0, fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) * 1 / 8) + (8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) * 1 / 8) - 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) * 1 / 8)) * 1 / 2));
    real work_in_process_inventory__init = 8 * fmax(0, dataFunc__customer_order_rate(0, time_step) + (2 + 2 * dataFunc__customer_order_rate(0, time_step) - 2 + 2 * dataFunc__customer_order_rate(0, time_step)) * 1 / 8);

    // Initialize ODE stock vector
    vector[7] initial_outcome; 
    initial_outcome[1] = backlog__init;
    initial_outcome[2] = expected_order_rate__init;
    initial_outcome[3] = inventory__init;
    initial_outcome[4] = process_noise__init;
    initial_outcome[5] = production_rate_stocked__init;
    initial_outcome[6] = production_start_rate_stocked__init;
    initial_outcome[7] = work_in_process_inventory__init;
}

parameters{
    real<lower=0> fractional_wip_adjustment_time;
    real<lower=0> m_noise_scale;
    real<lower=0> fractional_inventory_adjustment_time;
}

transformed parameters {
    // Define integ_outcome (sytax), target simulated (semantic) vector
    array[N] real backlog; 
    array[N] real expected_order_rate; 
    array[N] real inventory; 
    array[N] real process_noise; 
    array[N] real production_rate_stocked; 
    array[N] real production_start_rate_stocked; 
    array[N] real work_in_process_inventory; 

    // Generate integration approximation 
    vector[7] integrated_result[N] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, integration_times, time_step, process_noise_scale);

    // Assign approximated integration to target simulated vectors
    backlog = integrated_result[:, 1];
    expected_order_rate = integrated_result[:, 2];
    inventory = integrated_result[:, 3];
    process_noise = integrated_result[:, 4];
    production_rate_stocked = integrated_result[:, 5];
    production_start_rate_stocked = integrated_result[:, 6];
    work_in_process_inventory = integrated_result[:, 7];
}

model{
    fractional_wip_adjustment_time ~ normal(0.5, 0.05);
    m_noise_scale ~ normal(10.0, 1.0);
    fractional_inventory_adjustment_time ~ normal(0.125, 0.0125);
    production_rate_stocked_obs ~ normal(production_rate_stocked, m_noise_scale);
    production_start_rate_stocked_obs ~ normal(production_start_rate_stocked, m_noise_scale);
}

generated quantities{
    // Define and assign generated value to posterior predictive vector
    array[N] real production_rate_stocked_obs_post = normal_rng(production_rate_stocked, m_noise_scale);
    array[N] real production_start_rate_stocked_obs_post = normal_rng(production_start_rate_stocked, m_noise_scale);

    real loglik;
    loglik += normal_lpdf(production_rate_stocked_obs|production_rate_stocked, m_noise_scale);
    loglik += normal_lpdf(production_start_rate_stocked_obs|production_start_rate_stocked, m_noise_scale);
}