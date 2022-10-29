// Begin ODE declaration
real dataFunc__process_noise_uniform_driving(real time, real time_step){
    // DataStructure for variable process_noise_uniform_driving
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = -0.40801832383480496;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (0.03294213010886149 - -0.40801832383480496) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 0.03294213010886149;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (0.3726038291696959 - 0.03294213010886149) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = 0.3726038291696959;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (0.3286030824062408 - 0.3726038291696959) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 0.3286030824062408;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (-0.0012787818648271054 - 0.3286030824062408) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = -0.0012787818648271054;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (0.17813460559537653 - -0.0012787818648271054) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = 0.17813460559537653;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (-0.32534913474701876 - 0.17813460559537653) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = -0.32534913474701876;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (0.21484990935435755 - -0.32534913474701876) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = 0.21484990935435755;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (0.05856870555061022 - 0.21484990935435755) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 0.05856870555061022;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (-0.09254303550164211 - 0.05856870555061022) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = -0.09254303550164211;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (0.29759622978976197 - -0.09254303550164211) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = 0.29759622978976197;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (0.1583621926646409 - 0.29759622978976197) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = 0.1583621926646409;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (0.27275731920919555 - 0.1583621926646409) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = 0.27275731920919555;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (0.48240179109439374 - 0.27275731920919555) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = 0.48240179109439374;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (-0.18522683414807928 - 0.48240179109439374) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = -0.18522683414807928;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (0.08030969853795511 - -0.18522683414807928) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = 0.08030969853795511;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (0.09794881351558937 - 0.08030969853795511) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = 0.09794881351558937;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (0.07291834185271817 - 0.09794881351558937) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 0.07291834185271817;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (-0.3822247493607761 - 0.07291834185271817) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = -0.3822247493607761;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (0.3421204062598481 - -0.3822247493607761) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    else if(time <= time_step * 20){
        intercept = 0.3421204062598481;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (0.43524555710709256 - 0.3421204062598481) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = 0.43524555710709256;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (0.4492735579427861 - 0.43524555710709256) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = 0.4492735579427861;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (-0.477343769734212 - 0.4492735579427861) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = -0.477343769734212;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (0.2603264455675388 - -0.477343769734212) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = 0.2603264455675388;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (0.0715164123586226 - 0.2603264455675388) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = 0.0715164123586226;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (0.21677831430926375 - 0.0715164123586226) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = 0.21677831430926375;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (-0.40356614204225194 - 0.21677831430926375) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = -0.40356614204225194;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (-0.2445925410720451 - -0.40356614204225194) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = -0.2445925410720451;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (-0.128735226569051 - -0.2445925410720451) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = -0.128735226569051;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (0.2136274888858093 - -0.128735226569051) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = 0.2136274888858093;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (-0.3563217208207974 - 0.2136274888858093) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = -0.3563217208207974;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (-0.28675481421180704 - -0.3563217208207974) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = -0.28675481421180704;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (0.13082010441621106 - -0.28675481421180704) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = 0.13082010441621106;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (0.0494446278244417 - 0.13082010441621106) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 0.0494446278244417;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (-0.074247136016234 - 0.0494446278244417) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = -0.074247136016234;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (-0.35678223235477247 - -0.074247136016234) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = -0.35678223235477247;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (0.25471652212783336 - -0.35678223235477247) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = 0.25471652212783336;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (0.45603912874438446 - 0.25471652212783336) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = 0.45603912874438446;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (-0.24856651725231516 - 0.45603912874438446) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = -0.24856651725231516;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (0.02727972544020041 - -0.24856651725231516) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = 0.02727972544020041;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (0.3508093881340354 - 0.02727972544020041) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = 0.3508093881340354;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (-0.14572000877933378 - 0.3508093881340354) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = -0.14572000877933378;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (-0.27351233759964133 - -0.14572000877933378) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = -0.27351233759964133;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (0.016908014341699862 - -0.27351233759964133) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = 0.016908014341699862;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (0.03030473689048563 - 0.016908014341699862) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = 0.03030473689048563;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (0.4481926196024876 - 0.03030473689048563) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = 0.4481926196024876;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (0.20354236767050404 - 0.4481926196024876) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = 0.20354236767050404;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (-0.3489182914264002 - 0.20354236767050404) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = -0.3489182914264002;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (-0.4064366370546606 - -0.3489182914264002) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = -0.4064366370546606;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (0.39211115663575236 - -0.4064366370546606) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = 0.39211115663575236;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (-0.23077913903212532 - 0.39211115663575236) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = -0.23077913903212532;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (0.3558548512278801 - -0.23077913903212532) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 0.3558548512278801;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (-0.13354094134909877 - 0.3558548512278801) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = -0.13354094134909877;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (0.2894346131883784 - -0.13354094134909877) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = 0.2894346131883784;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (0.20294284216532343 - 0.2894346131883784) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = 0.20294284216532343;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (0.23506415257429614 - 0.20294284216532343) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = 0.23506415257429614;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (-0.22361815882861247 - 0.23506415257429614) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = -0.22361815882861247;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (0.24182551065888702 - -0.22361815882861247) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = 0.24182551065888702;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (0.05458856949003177 - 0.24182551065888702) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = 0.05458856949003177;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (0.10191648993608615 - 0.05458856949003177) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = 0.10191648993608615;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (-0.14343370328408944 - 0.10191648993608615) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = -0.14343370328408944;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (0.1371320065380186 - -0.14343370328408944) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = 0.1371320065380186;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (0.18880445776043497 - 0.1371320065380186) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = 0.18880445776043497;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (-0.3108716332878605 - 0.18880445776043497) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = -0.3108716332878605;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (0.4323289113881976 - -0.3108716332878605) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = 0.4323289113881976;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (-0.056403056840660826 - 0.4323289113881976) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = -0.056403056840660826;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (-0.11802230325256391 - -0.056403056840660826) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = -0.11802230325256391;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (-0.3304234794633235 - -0.11802230325256391) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = -0.3304234794633235;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (-0.06401291213782767 - -0.3304234794633235) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = -0.06401291213782767;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (0.34353896194956257 - -0.06401291213782767) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = 0.34353896194956257;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (-0.2651202913474293 - 0.34353896194956257) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = -0.2651202913474293;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (0.11109819037549495 - -0.2651202913474293) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = 0.11109819037549495;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (-0.3548755553199081 - 0.11109819037549495) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = -0.3548755553199081;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (-0.25574334956339384 - -0.3548755553199081) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = -0.25574334956339384;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (-0.25328089187795433 - -0.25574334956339384) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = -0.25328089187795433;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (0.4541886489336746 - -0.25328089187795433) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = 0.4541886489336746;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (0.2727760684521352 - 0.4541886489336746) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = 0.2727760684521352;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (-0.1120445890383045 - 0.2727760684521352) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = -0.1120445890383045;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (-0.26228304951550374 - -0.1120445890383045) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = -0.26228304951550374;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (-0.09719015086543858 - -0.26228304951550374) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = -0.09719015086543858;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (-0.11429456749142441 - -0.09719015086543858) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = -0.11429456749142441;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (0.19282382226106765 - -0.11429456749142441) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = 0.19282382226106765;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (-0.06608624543261354 - 0.19282382226106765) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = -0.06608624543261354;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (0.07131443576395669 - -0.06608624543261354) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = 0.07131443576395669;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (0.41927716139946214 - 0.07131443576395669) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = 0.41927716139946214;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (-0.19817949407494795 - 0.41927716139946214) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = -0.19817949407494795;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (0.21893515991094115 - -0.19817949407494795) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = 0.21893515991094115;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (0.12931033113290558 - 0.21893515991094115) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = 0.12931033113290558;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (0.2059735553758757 - 0.12931033113290558) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = 0.2059735553758757;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (0.3633905188720995 - 0.2059735553758757) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = 0.3633905188720995;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (0.25118824412745067 - 0.3633905188720995) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 0.25118824412745067;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (0.3535248459611814 - 0.25118824412745067) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = 0.3535248459611814;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (0.4462340916445928 - 0.3535248459611814) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = 0.4462340916445928;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (0.2395542511777765 - 0.4462340916445928) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 0.2395542511777765;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (0.27625243946301314 - 0.2395542511777765) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = 0.27625243946301314;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (-0.39795186156553786 - 0.27625243946301314) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = -0.39795186156553786;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (-0.31044478548587284 - -0.39795186156553786) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = -0.31044478548587284;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (0.07036017017493157 - -0.31044478548587284) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = 0.07036017017493157;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (0.1670827953327919 - 0.07036017017493157) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = 0.1670827953327919;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (-0.03543185226038392 - 0.1670827953327919) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    else if(time <= time_step * 100){
        intercept = -0.03543185226038392;
        real local_time_step = time_step * 100 - time_step * 99;
        slope = (0.3427223172878058 - -0.03543185226038392) / local_time_step;
        return intercept + slope * (time - time_step * 99);
    }
    else if(time <= time_step * 101){
        intercept = 0.3427223172878058;
        real local_time_step = time_step * 101 - time_step * 100;
        slope = (-0.2430753198279485 - 0.3427223172878058) / local_time_step;
        return intercept + slope * (time - time_step * 100);
    }
    else if(time <= time_step * 102){
        intercept = -0.2430753198279485;
        real local_time_step = time_step * 102 - time_step * 101;
        slope = (-0.4499911509448612 - -0.2430753198279485) / local_time_step;
        return intercept + slope * (time - time_step * 101);
    }
    else if(time <= time_step * 103){
        intercept = -0.4499911509448612;
        real local_time_step = time_step * 103 - time_step * 102;
        slope = (-0.004251241409717443 - -0.4499911509448612) / local_time_step;
        return intercept + slope * (time - time_step * 102);
    }
    else if(time <= time_step * 104){
        intercept = -0.004251241409717443;
        real local_time_step = time_step * 104 - time_step * 103;
        slope = (0.04770065014869307 - -0.004251241409717443) / local_time_step;
        return intercept + slope * (time - time_step * 103);
    }
    else if(time <= time_step * 105){
        intercept = 0.04770065014869307;
        real local_time_step = time_step * 105 - time_step * 104;
        slope = (-0.3455819031327847 - 0.04770065014869307) / local_time_step;
        return intercept + slope * (time - time_step * 104);
    }
    else if(time <= time_step * 106){
        intercept = -0.3455819031327847;
        real local_time_step = time_step * 106 - time_step * 105;
        slope = (-0.4485036524450784 - -0.3455819031327847) / local_time_step;
        return intercept + slope * (time - time_step * 105);
    }
    else if(time <= time_step * 107){
        intercept = -0.4485036524450784;
        real local_time_step = time_step * 107 - time_step * 106;
        slope = (0.4432162504440964 - -0.4485036524450784) / local_time_step;
        return intercept + slope * (time - time_step * 106);
    }
    else if(time <= time_step * 108){
        intercept = 0.4432162504440964;
        real local_time_step = time_step * 108 - time_step * 107;
        slope = (-0.11267321190948931 - 0.4432162504440964) / local_time_step;
        return intercept + slope * (time - time_step * 107);
    }
    else if(time <= time_step * 109){
        intercept = -0.11267321190948931;
        real local_time_step = time_step * 109 - time_step * 108;
        slope = (-0.002643146601008728 - -0.11267321190948931) / local_time_step;
        return intercept + slope * (time - time_step * 108);
    }
    else if(time <= time_step * 110){
        intercept = -0.002643146601008728;
        real local_time_step = time_step * 110 - time_step * 109;
        slope = (-0.0025902654281337867 - -0.002643146601008728) / local_time_step;
        return intercept + slope * (time - time_step * 109);
    }
    else if(time <= time_step * 111){
        intercept = -0.0025902654281337867;
        real local_time_step = time_step * 111 - time_step * 110;
        slope = (0.41051197590843125 - -0.0025902654281337867) / local_time_step;
        return intercept + slope * (time - time_step * 110);
    }
    else if(time <= time_step * 112){
        intercept = 0.41051197590843125;
        real local_time_step = time_step * 112 - time_step * 111;
        slope = (0.2507611988644458 - 0.41051197590843125) / local_time_step;
        return intercept + slope * (time - time_step * 111);
    }
    else if(time <= time_step * 113){
        intercept = 0.2507611988644458;
        real local_time_step = time_step * 113 - time_step * 112;
        slope = (0.09706587181129034 - 0.2507611988644458) / local_time_step;
        return intercept + slope * (time - time_step * 112);
    }
    else if(time <= time_step * 114){
        intercept = 0.09706587181129034;
        real local_time_step = time_step * 114 - time_step * 113;
        slope = (0.48176444493801096 - 0.09706587181129034) / local_time_step;
        return intercept + slope * (time - time_step * 113);
    }
    else if(time <= time_step * 115){
        intercept = 0.48176444493801096;
        real local_time_step = time_step * 115 - time_step * 114;
        slope = (0.4018338512499404 - 0.48176444493801096) / local_time_step;
        return intercept + slope * (time - time_step * 114);
    }
    else if(time <= time_step * 116){
        intercept = 0.4018338512499404;
        real local_time_step = time_step * 116 - time_step * 115;
        slope = (-0.3821338850639042 - 0.4018338512499404) / local_time_step;
        return intercept + slope * (time - time_step * 115);
    }
    else if(time <= time_step * 117){
        intercept = -0.3821338850639042;
        real local_time_step = time_step * 117 - time_step * 116;
        slope = (-0.2707380917363281 - -0.3821338850639042) / local_time_step;
        return intercept + slope * (time - time_step * 116);
    }
    else if(time <= time_step * 118){
        intercept = -0.2707380917363281;
        real local_time_step = time_step * 118 - time_step * 117;
        slope = (-0.26315434110635816 - -0.2707380917363281) / local_time_step;
        return intercept + slope * (time - time_step * 117);
    }
    else if(time <= time_step * 119){
        intercept = -0.26315434110635816;
        real local_time_step = time_step * 119 - time_step * 118;
        slope = (0.07063716782418483 - -0.26315434110635816) / local_time_step;
        return intercept + slope * (time - time_step * 118);
    }
    else if(time <= time_step * 120){
        intercept = 0.07063716782418483;
        real local_time_step = time_step * 120 - time_step * 119;
        slope = (-0.3117835589151643 - 0.07063716782418483) / local_time_step;
        return intercept + slope * (time - time_step * 119);
    }
    else if(time <= time_step * 121){
        intercept = -0.3117835589151643;
        real local_time_step = time_step * 121 - time_step * 120;
        slope = (-0.4475763150065133 - -0.3117835589151643) / local_time_step;
        return intercept + slope * (time - time_step * 120);
    }
    else if(time <= time_step * 122){
        intercept = -0.4475763150065133;
        real local_time_step = time_step * 122 - time_step * 121;
        slope = (-0.47410771903295357 - -0.4475763150065133) / local_time_step;
        return intercept + slope * (time - time_step * 121);
    }
    else if(time <= time_step * 123){
        intercept = -0.47410771903295357;
        real local_time_step = time_step * 123 - time_step * 122;
        slope = (0.4204161050212404 - -0.47410771903295357) / local_time_step;
        return intercept + slope * (time - time_step * 122);
    }
    else if(time <= time_step * 124){
        intercept = 0.4204161050212404;
        real local_time_step = time_step * 124 - time_step * 123;
        slope = (-0.1608811667885549 - 0.4204161050212404) / local_time_step;
        return intercept + slope * (time - time_step * 123);
    }
    else if(time <= time_step * 125){
        intercept = -0.1608811667885549;
        real local_time_step = time_step * 125 - time_step * 124;
        slope = (0.4721380835756702 - -0.1608811667885549) / local_time_step;
        return intercept + slope * (time - time_step * 124);
    }
    else if(time <= time_step * 126){
        intercept = 0.4721380835756702;
        real local_time_step = time_step * 126 - time_step * 125;
        slope = (0.22383163722198574 - 0.4721380835756702) / local_time_step;
        return intercept + slope * (time - time_step * 125);
    }
    else if(time <= time_step * 127){
        intercept = 0.22383163722198574;
        real local_time_step = time_step * 127 - time_step * 126;
        slope = (0.009497464090089114 - 0.22383163722198574) / local_time_step;
        return intercept + slope * (time - time_step * 126);
    }
    else if(time <= time_step * 128){
        intercept = 0.009497464090089114;
        real local_time_step = time_step * 128 - time_step * 127;
        slope = (0.43609380882965854 - 0.009497464090089114) / local_time_step;
        return intercept + slope * (time - time_step * 127);
    }
    else if(time <= time_step * 129){
        intercept = 0.43609380882965854;
        real local_time_step = time_step * 129 - time_step * 128;
        slope = (-0.03855720799479945 - 0.43609380882965854) / local_time_step;
        return intercept + slope * (time - time_step * 128);
    }
    else if(time <= time_step * 130){
        intercept = -0.03855720799479945;
        real local_time_step = time_step * 130 - time_step * 129;
        slope = (0.2917664931369147 - -0.03855720799479945) / local_time_step;
        return intercept + slope * (time - time_step * 129);
    }
    else if(time <= time_step * 131){
        intercept = 0.2917664931369147;
        real local_time_step = time_step * 131 - time_step * 130;
        slope = (0.339038377379588 - 0.2917664931369147) / local_time_step;
        return intercept + slope * (time - time_step * 130);
    }
    else if(time <= time_step * 132){
        intercept = 0.339038377379588;
        real local_time_step = time_step * 132 - time_step * 131;
        slope = (-0.432061375780462 - 0.339038377379588) / local_time_step;
        return intercept + slope * (time - time_step * 131);
    }
    else if(time <= time_step * 133){
        intercept = -0.432061375780462;
        real local_time_step = time_step * 133 - time_step * 132;
        slope = (-0.24641152241037445 - -0.432061375780462) / local_time_step;
        return intercept + slope * (time - time_step * 132);
    }
    else if(time <= time_step * 134){
        intercept = -0.24641152241037445;
        real local_time_step = time_step * 134 - time_step * 133;
        slope = (-0.4647297661100891 - -0.24641152241037445) / local_time_step;
        return intercept + slope * (time - time_step * 133);
    }
    else if(time <= time_step * 135){
        intercept = -0.4647297661100891;
        real local_time_step = time_step * 135 - time_step * 134;
        slope = (0.2272622376415565 - -0.4647297661100891) / local_time_step;
        return intercept + slope * (time - time_step * 134);
    }
    else if(time <= time_step * 136){
        intercept = 0.2272622376415565;
        real local_time_step = time_step * 136 - time_step * 135;
        slope = (0.24774769965359733 - 0.2272622376415565) / local_time_step;
        return intercept + slope * (time - time_step * 135);
    }
    else if(time <= time_step * 137){
        intercept = 0.24774769965359733;
        real local_time_step = time_step * 137 - time_step * 136;
        slope = (0.3885281430161026 - 0.24774769965359733) / local_time_step;
        return intercept + slope * (time - time_step * 136);
    }
    else if(time <= time_step * 138){
        intercept = 0.3885281430161026;
        real local_time_step = time_step * 138 - time_step * 137;
        slope = (-0.4782050336065109 - 0.3885281430161026) / local_time_step;
        return intercept + slope * (time - time_step * 137);
    }
    else if(time <= time_step * 139){
        intercept = -0.4782050336065109;
        real local_time_step = time_step * 139 - time_step * 138;
        slope = (0.41564503516967644 - -0.4782050336065109) / local_time_step;
        return intercept + slope * (time - time_step * 138);
    }
    else if(time <= time_step * 140){
        intercept = 0.41564503516967644;
        real local_time_step = time_step * 140 - time_step * 139;
        slope = (0.12860338664988324 - 0.41564503516967644) / local_time_step;
        return intercept + slope * (time - time_step * 139);
    }
    else if(time <= time_step * 141){
        intercept = 0.12860338664988324;
        real local_time_step = time_step * 141 - time_step * 140;
        slope = (0.26678443340779145 - 0.12860338664988324) / local_time_step;
        return intercept + slope * (time - time_step * 140);
    }
    else if(time <= time_step * 142){
        intercept = 0.26678443340779145;
        real local_time_step = time_step * 142 - time_step * 141;
        slope = (-0.2717746518661076 - 0.26678443340779145) / local_time_step;
        return intercept + slope * (time - time_step * 141);
    }
    else if(time <= time_step * 143){
        intercept = -0.2717746518661076;
        real local_time_step = time_step * 143 - time_step * 142;
        slope = (-0.1290003938840748 - -0.2717746518661076) / local_time_step;
        return intercept + slope * (time - time_step * 142);
    }
    else if(time <= time_step * 144){
        intercept = -0.1290003938840748;
        real local_time_step = time_step * 144 - time_step * 143;
        slope = (0.19821938408107687 - -0.1290003938840748) / local_time_step;
        return intercept + slope * (time - time_step * 143);
    }
    else if(time <= time_step * 145){
        intercept = 0.19821938408107687;
        real local_time_step = time_step * 145 - time_step * 144;
        slope = (-0.2549651349137926 - 0.19821938408107687) / local_time_step;
        return intercept + slope * (time - time_step * 144);
    }
    else if(time <= time_step * 146){
        intercept = -0.2549651349137926;
        real local_time_step = time_step * 146 - time_step * 145;
        slope = (-0.4049077781787881 - -0.2549651349137926) / local_time_step;
        return intercept + slope * (time - time_step * 145);
    }
    else if(time <= time_step * 147){
        intercept = -0.4049077781787881;
        real local_time_step = time_step * 147 - time_step * 146;
        slope = (-0.45163248965929614 - -0.4049077781787881) / local_time_step;
        return intercept + slope * (time - time_step * 146);
    }
    else if(time <= time_step * 148){
        intercept = -0.45163248965929614;
        real local_time_step = time_step * 148 - time_step * 147;
        slope = (0.38115743110719214 - -0.45163248965929614) / local_time_step;
        return intercept + slope * (time - time_step * 147);
    }
    else if(time <= time_step * 149){
        intercept = 0.38115743110719214;
        real local_time_step = time_step * 149 - time_step * 148;
        slope = (0.14269284250009262 - 0.38115743110719214) / local_time_step;
        return intercept + slope * (time - time_step * 148);
    }
    else if(time <= time_step * 150){
        intercept = 0.14269284250009262;
        real local_time_step = time_step * 150 - time_step * 149;
        slope = (-0.397263280290176 - 0.14269284250009262) / local_time_step;
        return intercept + slope * (time - time_step * 149);
    }
    else if(time <= time_step * 151){
        intercept = -0.397263280290176;
        real local_time_step = time_step * 151 - time_step * 150;
        slope = (0.011665471223232804 - -0.397263280290176) / local_time_step;
        return intercept + slope * (time - time_step * 150);
    }
    else if(time <= time_step * 152){
        intercept = 0.011665471223232804;
        real local_time_step = time_step * 152 - time_step * 151;
        slope = (0.32595763220563634 - 0.011665471223232804) / local_time_step;
        return intercept + slope * (time - time_step * 151);
    }
    else if(time <= time_step * 153){
        intercept = 0.32595763220563634;
        real local_time_step = time_step * 153 - time_step * 152;
        slope = (0.3222895999087856 - 0.32595763220563634) / local_time_step;
        return intercept + slope * (time - time_step * 152);
    }
    else if(time <= time_step * 154){
        intercept = 0.3222895999087856;
        real local_time_step = time_step * 154 - time_step * 153;
        slope = (0.37754763452090145 - 0.3222895999087856) / local_time_step;
        return intercept + slope * (time - time_step * 153);
    }
    else if(time <= time_step * 155){
        intercept = 0.37754763452090145;
        real local_time_step = time_step * 155 - time_step * 154;
        slope = (0.2288315945658861 - 0.37754763452090145) / local_time_step;
        return intercept + slope * (time - time_step * 154);
    }
    else if(time <= time_step * 156){
        intercept = 0.2288315945658861;
        real local_time_step = time_step * 156 - time_step * 155;
        slope = (-0.3900561425717016 - 0.2288315945658861) / local_time_step;
        return intercept + slope * (time - time_step * 155);
    }
    else if(time <= time_step * 157){
        intercept = -0.3900561425717016;
        real local_time_step = time_step * 157 - time_step * 156;
        slope = (0.2010193658119933 - -0.3900561425717016) / local_time_step;
        return intercept + slope * (time - time_step * 156);
    }
    else if(time <= time_step * 158){
        intercept = 0.2010193658119933;
        real local_time_step = time_step * 158 - time_step * 157;
        slope = (-0.02273962644827232 - 0.2010193658119933) / local_time_step;
        return intercept + slope * (time - time_step * 157);
    }
    else if(time <= time_step * 159){
        intercept = -0.02273962644827232;
        real local_time_step = time_step * 159 - time_step * 158;
        slope = (0.4961701764401302 - -0.02273962644827232) / local_time_step;
        return intercept + slope * (time - time_step * 158);
    }
    else if(time <= time_step * 160){
        intercept = 0.4961701764401302;
        real local_time_step = time_step * 160 - time_step * 159;
        slope = (0.37042470801811 - 0.4961701764401302) / local_time_step;
        return intercept + slope * (time - time_step * 159);
    }
    else if(time <= time_step * 161){
        intercept = 0.37042470801811;
        real local_time_step = time_step * 161 - time_step * 160;
        slope = (0.05015639686887963 - 0.37042470801811) / local_time_step;
        return intercept + slope * (time - time_step * 160);
    }
    else if(time <= time_step * 162){
        intercept = 0.05015639686887963;
        real local_time_step = time_step * 162 - time_step * 161;
        slope = (-0.49560409715283793 - 0.05015639686887963) / local_time_step;
        return intercept + slope * (time - time_step * 161);
    }
    else if(time <= time_step * 163){
        intercept = -0.49560409715283793;
        real local_time_step = time_step * 163 - time_step * 162;
        slope = (0.07797594366605831 - -0.49560409715283793) / local_time_step;
        return intercept + slope * (time - time_step * 162);
    }
    else if(time <= time_step * 164){
        intercept = 0.07797594366605831;
        real local_time_step = time_step * 164 - time_step * 163;
        slope = (-0.1738813430179037 - 0.07797594366605831) / local_time_step;
        return intercept + slope * (time - time_step * 163);
    }
    else if(time <= time_step * 165){
        intercept = -0.1738813430179037;
        real local_time_step = time_step * 165 - time_step * 164;
        slope = (-0.4922771099165645 - -0.1738813430179037) / local_time_step;
        return intercept + slope * (time - time_step * 164);
    }
    else if(time <= time_step * 166){
        intercept = -0.4922771099165645;
        real local_time_step = time_step * 166 - time_step * 165;
        slope = (-0.30083120296563626 - -0.4922771099165645) / local_time_step;
        return intercept + slope * (time - time_step * 165);
    }
    else if(time <= time_step * 167){
        intercept = -0.30083120296563626;
        real local_time_step = time_step * 167 - time_step * 166;
        slope = (0.17380079150340755 - -0.30083120296563626) / local_time_step;
        return intercept + slope * (time - time_step * 166);
    }
    else if(time <= time_step * 168){
        intercept = 0.17380079150340755;
        real local_time_step = time_step * 168 - time_step * 167;
        slope = (-0.039365257892246985 - 0.17380079150340755) / local_time_step;
        return intercept + slope * (time - time_step * 167);
    }
    else if(time <= time_step * 169){
        intercept = -0.039365257892246985;
        real local_time_step = time_step * 169 - time_step * 168;
        slope = (0.47048974035726343 - -0.039365257892246985) / local_time_step;
        return intercept + slope * (time - time_step * 168);
    }
    else if(time <= time_step * 170){
        intercept = 0.47048974035726343;
        real local_time_step = time_step * 170 - time_step * 169;
        slope = (-0.40125443120697035 - 0.47048974035726343) / local_time_step;
        return intercept + slope * (time - time_step * 169);
    }
    else if(time <= time_step * 171){
        intercept = -0.40125443120697035;
        real local_time_step = time_step * 171 - time_step * 170;
        slope = (0.4669466338136946 - -0.40125443120697035) / local_time_step;
        return intercept + slope * (time - time_step * 170);
    }
    else if(time <= time_step * 172){
        intercept = 0.4669466338136946;
        real local_time_step = time_step * 172 - time_step * 171;
        slope = (0.3545987945690505 - 0.4669466338136946) / local_time_step;
        return intercept + slope * (time - time_step * 171);
    }
    else if(time <= time_step * 173){
        intercept = 0.3545987945690505;
        real local_time_step = time_step * 173 - time_step * 172;
        slope = (-0.35611131217193237 - 0.3545987945690505) / local_time_step;
        return intercept + slope * (time - time_step * 172);
    }
    else if(time <= time_step * 174){
        intercept = -0.35611131217193237;
        real local_time_step = time_step * 174 - time_step * 173;
        slope = (0.44180347947363563 - -0.35611131217193237) / local_time_step;
        return intercept + slope * (time - time_step * 173);
    }
    else if(time <= time_step * 175){
        intercept = 0.44180347947363563;
        real local_time_step = time_step * 175 - time_step * 174;
        slope = (-0.4370870942400228 - 0.44180347947363563) / local_time_step;
        return intercept + slope * (time - time_step * 174);
    }
    else if(time <= time_step * 176){
        intercept = -0.4370870942400228;
        real local_time_step = time_step * 176 - time_step * 175;
        slope = (-0.052583041364720584 - -0.4370870942400228) / local_time_step;
        return intercept + slope * (time - time_step * 175);
    }
    else if(time <= time_step * 177){
        intercept = -0.052583041364720584;
        real local_time_step = time_step * 177 - time_step * 176;
        slope = (-0.12129641073079489 - -0.052583041364720584) / local_time_step;
        return intercept + slope * (time - time_step * 176);
    }
    else if(time <= time_step * 178){
        intercept = -0.12129641073079489;
        real local_time_step = time_step * 178 - time_step * 177;
        slope = (-0.2417755695383086 - -0.12129641073079489) / local_time_step;
        return intercept + slope * (time - time_step * 177);
    }
    else if(time <= time_step * 179){
        intercept = -0.2417755695383086;
        real local_time_step = time_step * 179 - time_step * 178;
        slope = (-0.2808963184616444 - -0.2417755695383086) / local_time_step;
        return intercept + slope * (time - time_step * 178);
    }
    else if(time <= time_step * 180){
        intercept = -0.2808963184616444;
        real local_time_step = time_step * 180 - time_step * 179;
        slope = (0.43426324228022994 - -0.2808963184616444) / local_time_step;
        return intercept + slope * (time - time_step * 179);
    }
    else if(time <= time_step * 181){
        intercept = 0.43426324228022994;
        real local_time_step = time_step * 181 - time_step * 180;
        slope = (-0.3261065904670163 - 0.43426324228022994) / local_time_step;
        return intercept + slope * (time - time_step * 180);
    }
    else if(time <= time_step * 182){
        intercept = -0.3261065904670163;
        real local_time_step = time_step * 182 - time_step * 181;
        slope = (0.09317429137669364 - -0.3261065904670163) / local_time_step;
        return intercept + slope * (time - time_step * 181);
    }
    else if(time <= time_step * 183){
        intercept = 0.09317429137669364;
        real local_time_step = time_step * 183 - time_step * 182;
        slope = (0.2167921326777842 - 0.09317429137669364) / local_time_step;
        return intercept + slope * (time - time_step * 182);
    }
    else if(time <= time_step * 184){
        intercept = 0.2167921326777842;
        real local_time_step = time_step * 184 - time_step * 183;
        slope = (0.037069824537446894 - 0.2167921326777842) / local_time_step;
        return intercept + slope * (time - time_step * 183);
    }
    else if(time <= time_step * 185){
        intercept = 0.037069824537446894;
        real local_time_step = time_step * 185 - time_step * 184;
        slope = (0.3381767653423088 - 0.037069824537446894) / local_time_step;
        return intercept + slope * (time - time_step * 184);
    }
    else if(time <= time_step * 186){
        intercept = 0.3381767653423088;
        real local_time_step = time_step * 186 - time_step * 185;
        slope = (-0.4179875801897136 - 0.3381767653423088) / local_time_step;
        return intercept + slope * (time - time_step * 185);
    }
    else if(time <= time_step * 187){
        intercept = -0.4179875801897136;
        real local_time_step = time_step * 187 - time_step * 186;
        slope = (-0.46977129654682126 - -0.4179875801897136) / local_time_step;
        return intercept + slope * (time - time_step * 186);
    }
    else if(time <= time_step * 188){
        intercept = -0.46977129654682126;
        real local_time_step = time_step * 188 - time_step * 187;
        slope = (0.21033412047925626 - -0.46977129654682126) / local_time_step;
        return intercept + slope * (time - time_step * 187);
    }
    else if(time <= time_step * 189){
        intercept = 0.21033412047925626;
        real local_time_step = time_step * 189 - time_step * 188;
        slope = (0.027311287590673916 - 0.21033412047925626) / local_time_step;
        return intercept + slope * (time - time_step * 188);
    }
    else if(time <= time_step * 190){
        intercept = 0.027311287590673916;
        real local_time_step = time_step * 190 - time_step * 189;
        slope = (0.19468357653810453 - 0.027311287590673916) / local_time_step;
        return intercept + slope * (time - time_step * 189);
    }
    else if(time <= time_step * 191){
        intercept = 0.19468357653810453;
        real local_time_step = time_step * 191 - time_step * 190;
        slope = (-0.34291837319655605 - 0.19468357653810453) / local_time_step;
        return intercept + slope * (time - time_step * 190);
    }
    else if(time <= time_step * 192){
        intercept = -0.34291837319655605;
        real local_time_step = time_step * 192 - time_step * 191;
        slope = (-0.30179480235659584 - -0.34291837319655605) / local_time_step;
        return intercept + slope * (time - time_step * 191);
    }
    else if(time <= time_step * 193){
        intercept = -0.30179480235659584;
        real local_time_step = time_step * 193 - time_step * 192;
        slope = (0.1594056037784808 - -0.30179480235659584) / local_time_step;
        return intercept + slope * (time - time_step * 192);
    }
    else if(time <= time_step * 194){
        intercept = 0.1594056037784808;
        real local_time_step = time_step * 194 - time_step * 193;
        slope = (-0.2393502218862108 - 0.1594056037784808) / local_time_step;
        return intercept + slope * (time - time_step * 193);
    }
    else if(time <= time_step * 195){
        intercept = -0.2393502218862108;
        real local_time_step = time_step * 195 - time_step * 194;
        slope = (0.08739316457614277 - -0.2393502218862108) / local_time_step;
        return intercept + slope * (time - time_step * 194);
    }
    else if(time <= time_step * 196){
        intercept = 0.08739316457614277;
        real local_time_step = time_step * 196 - time_step * 195;
        slope = (0.3175080813249028 - 0.08739316457614277) / local_time_step;
        return intercept + slope * (time - time_step * 195);
    }
    else if(time <= time_step * 197){
        intercept = 0.3175080813249028;
        real local_time_step = time_step * 197 - time_step * 196;
        slope = (0.42597244894051356 - 0.3175080813249028) / local_time_step;
        return intercept + slope * (time - time_step * 196);
    }
    else if(time <= time_step * 198){
        intercept = 0.42597244894051356;
        real local_time_step = time_step * 198 - time_step * 197;
        slope = (-0.1380348110227283 - 0.42597244894051356) / local_time_step;
        return intercept + slope * (time - time_step * 197);
    }
    else if(time <= time_step * 199){
        intercept = -0.1380348110227283;
        real local_time_step = time_step * 199 - time_step * 198;
        slope = (0.17207471290548082 - -0.1380348110227283) / local_time_step;
        return intercept + slope * (time - time_step * 198);
    }
    return 0.17207471290548082;
}

vector vensim_ode_func(real time, vector outcome, real pred_birth_frac, real process_noise_scale, real prey_birth_frac, real time_step){
    vector[3] dydt;  // Return vector of the ODE function

    // State variables
    real predator = outcome[1];
    real process_noise = outcome[2];
    real prey = outcome[3];

    real one_centered_process_noise = process_noise + 1;
    real pred_death_frac = 0.8;
    real prey_death_frac = 0.05;
    real reference_predator = 4;
    real prey_birth_rate = prey_birth_frac * prey;
    real reference_prey = 30;
    real predator_birth_rate = pred_birth_frac * prey * predator * one_centered_process_noise;
    real predator_death_rate = pred_death_frac * predator;
    real predator_dydt = predator_birth_rate - predator_death_rate;
    real correlation_time_over_time_step = 100;
    real correlation_time = correlation_time_over_time_step * time_step;
    real white_noise = 4.89 * correlation_time_over_time_step ^ 0.5 * dataFunc__process_noise_uniform_driving(time, time_step) * process_noise_scale;
    real white_minus_process = white_noise - process_noise;
    real process_noise_change_rate = white_minus_process / correlation_time;
    real process_noise_dydt = process_noise_change_rate;
    real prey_death_rate = prey_death_frac * predator * prey;
    real prey_dydt = prey_birth_rate - prey_death_rate;

    dydt[1] = predator_dydt;
    dydt[2] = process_noise_dydt;
    dydt[3] = prey_dydt;

    return dydt;
}
