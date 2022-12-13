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
    vector[3] customer_order_rate;
    vector[3] process_noise_uniform_driving;
    int process_noise_scale;
    array[N] vector[R] production_rate_stocked_obs;
    array[N] vector[R] production_start_rate_stocked_obs;
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
    array[R] real<lower=0> fractional_wip_adjustment_time;
    real<lower=0> m_noise_scale;
    real<lower=0> fractional_inventory_adjustment_time;
}

transformed parameters {
    // Define integ_outcome (sytax), target simulated (semantic) vector
    array[N] vector[R] backlog; 
    array[N] vector[R] expected_order_rate; 
    array[N] vector[R] inventory; 
    array[N] vector[R] process_noise; 
    array[N] vector[R] production_rate_stocked; 
    array[N] vector[R] production_start_rate_stocked; 
    array[N] vector[R] work_in_process_inventory; 

    // Generate integration approximation 
    for (r in 1:R){
        array[N] vector[7] integrated_result = ode_rk45(vensim_ode_func, initial_outcome, initial_time, integration_times, time_step, process_noise_scale);

        // Assign target simulated to latent stock vectors
        backlog[:, r] = integrated_result[:, 1];
        expected_order_rate[:, r] = integrated_result[:, 2];
        inventory[:, r] = integrated_result[:, 3];
        process_noise[:, r] = integrated_result[:, 4];
        production_rate_stocked[:, r] = integrated_result[:, 5];
        production_start_rate_stocked[:, r] = integrated_result[:, 6];
        work_in_process_inventory[:, r] = integrated_result[:, 7];
    }
}

model{
    fractional_wip_adjustment_time ~ normal(rep_vector(0.5, R), 0.05);
    m_noise_scale ~ normal(10.0, 1.0);
    fractional_inventory_adjustment_time ~ normal(0.125, 0.0125);
    for (r in 1:R)
        production_rate_stocked_obs[:, r] ~ normal(production_rate_stocked[:, r], m_noise_scale);
    for (r in 1:R)
        production_start_rate_stocked_obs[:, r] ~ normal(production_start_rate_stocked[:, r], m_noise_scale);
}

generated quantities{
    // Define observed vector (matching vector)
    array[N] vector[R] production_rate_stocked_obs_post;
    array[N] vector[R] production_start_rate_stocked_obs_post;
    // Assign generated value to observed vector (matching vector)
    for (r in 1:R){
        production_rate_stocked_obs_post[:, r] = normal_rng(production_rate_stocked[:, r], m_noise_scale);
        production_start_rate_stocked_obs_post[:, r] = normal_rng(production_start_rate_stocked[:, r], m_noise_scale);
    }

    real loglik;
    for (r in 1:R){
        loglik += normal_lpdf(production_rate_stocked_obs[:, r]|production_rate_stocked[:, r], m_noise_scale);
        loglik += normal_lpdf(production_start_rate_stocked_obs[:, r]|production_start_rate_stocked[:, r], m_noise_scale);
    }
}
