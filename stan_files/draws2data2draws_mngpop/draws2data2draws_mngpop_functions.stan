// Begin ODE declaration
real dataFunc__process_noise_uniform_driving(real time, real time_step){
    // DataStructure for variable process_noise_uniform_driving
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = 0.24684536075337637;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (0.2744819312013751 - 0.24684536075337637) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 0.2744819312013751;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (-0.49438368601204596 - 0.2744819312013751) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = -0.49438368601204596;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (0.14721911736230187 - -0.49438368601204596) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 0.14721911736230187;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (-0.04193468978381898 - 0.14721911736230187) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = -0.04193468978381898;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (0.2444870603599948 - -0.04193468978381898) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = 0.2444870603599948;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (-0.32178419252854984 - 0.2444870603599948) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = -0.32178419252854984;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (-0.30303139369464027 - -0.32178419252854984) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = -0.30303139369464027;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (0.13932703234512034 - -0.30303139369464027) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 0.13932703234512034;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (-0.18683573382318686 - 0.13932703234512034) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = -0.18683573382318686;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (-0.17842221732287578 - -0.18683573382318686) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = -0.17842221732287578;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (0.2784733926672771 - -0.17842221732287578) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = 0.2784733926672771;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (0.1447479350734887 - 0.2784733926672771) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = 0.1447479350734887;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (-0.07349122506873562 - 0.1447479350734887) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = -0.07349122506873562;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (-0.38239862958517035 - -0.07349122506873562) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = -0.38239862958517035;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (-0.05904309565689958 - -0.38239862958517035) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = -0.05904309565689958;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (0.06160103010114315 - -0.05904309565689958) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = 0.06160103010114315;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (0.2657595496221825 - 0.06160103010114315) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 0.2657595496221825;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (-0.15719971236358066 - 0.2657595496221825) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = -0.15719971236358066;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (0.06318696906182897 - -0.15719971236358066) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    return 0.06318696906182897;
}

vector vensim_ode_func(real time, vector outcome, real pred_birth_frac, real prey_birth_frac, real process_noise_scale, real time_step){
    vector[3] dydt;  // Return vector of the ODE function

    // State variables
    real prey = outcome[1];
    real process_noise = outcome[2];
    real predator = outcome[3];

    real correlation_time_over_time_step = 100;
    real correlation_time = correlation_time_over_time_step * time_step;
    real prey_death_frac = 0.05;
    real prey_death_rate = prey_death_frac * predator * prey;
    real one_centered_process_noise = process_noise + 1;
    real predator_birth_rate = pred_birth_frac * prey * predator * one_centered_process_noise;
    real white_noise = 4.89 * correlation_time_over_time_step ^ 0.5 * dataFunc__process_noise_uniform_driving(time, time_step) * process_noise_scale;
    real white_minus_process = white_noise - process_noise;
    real process_noise_change_rate = white_minus_process / correlation_time;
    real reference_predator = 4;
    real pred_death_frac = 0.8;
    real predator_death_rate = pred_death_frac * predator;
    real predator_dydt = predator_birth_rate - predator_death_rate;
    real reference_prey = 30;
    real process_noise_dydt = process_noise_change_rate;
    real prey_birth_rate = prey_birth_frac * prey;
    real prey_dydt = prey_birth_rate - prey_death_rate;

    dydt[1] = prey_dydt;
    dydt[2] = process_noise_dydt;
    dydt[3] = predator_dydt;

    return dydt;
}
