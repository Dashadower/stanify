real lookupFunc__table_for_order_fulfillment(real x){
    // x (0, 2) = (0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.0)
    // y (0, 1) = (0.0, 0.2, 0.4, 0.58, 0.73, 0.85, 0.93, 0.97, 0.99, 1.0, 1.0, 1.0)
    real slope;
    real intercept;

    if(x <= 0.2){
        intercept = 0.0;
        slope = (0.2 - 0.0) / (0.2 - 0.0);
        return intercept + slope * (x - 0.0);
    }
    else if(x <= 0.4){
        intercept = 0.2;
        slope = (0.4 - 0.2) / (0.4 - 0.2);
        return intercept + slope * (x - 0.2);
    }
    else if(x <= 0.6){
        intercept = 0.4;
        slope = (0.58 - 0.4) / (0.6 - 0.4);
        return intercept + slope * (x - 0.4);
    }
    else if(x <= 0.8){
        intercept = 0.58;
        slope = (0.73 - 0.58) / (0.8 - 0.6);
        return intercept + slope * (x - 0.6);
    }
    else if(x <= 1.0){
        intercept = 0.73;
        slope = (0.85 - 0.73) / (1.0 - 0.8);
        return intercept + slope * (x - 0.8);
    }
    else if(x <= 1.2){
        intercept = 0.85;
        slope = (0.93 - 0.85) / (1.2 - 1.0);
        return intercept + slope * (x - 1.0);
    }
    else if(x <= 1.4){
        intercept = 0.93;
        slope = (0.97 - 0.93) / (1.4 - 1.2);
        return intercept + slope * (x - 1.2);
    }
    else if(x <= 1.6){
        intercept = 0.97;
        slope = (0.99 - 0.97) / (1.6 - 1.4);
        return intercept + slope * (x - 1.4);
    }
    else if(x <= 1.8){
        intercept = 0.99;
        slope = (1.0 - 0.99) / (1.8 - 1.6);
        return intercept + slope * (x - 1.6);
    }
    else if(x <= 2.0){
        intercept = 1.0;
        slope = (1.0 - 1.0) / (2.0 - 1.8);
        return intercept + slope * (x - 1.8);
    }
    else if(x <= 2.0){
        intercept = 1.0;
        slope = (1.0 - 1.0) / (2.0 - 2.0);
        return intercept + slope * (x - 2.0);
    }
    return 1.0;
}

// Begin ODE declaration
real dataFunc__customer_order_rate(real time, real time_step){
    // DataStructure for variable customer_order_rate
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = 146376;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (147079 - 146376) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 147079;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (159336 - 147079) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = 159336;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (163669 - 159336) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 163669;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (170068 - 163669) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = 170068;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (168663 - 170068) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = 168663;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (169890 - 168663) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = 169890;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (170364 - 169890) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = 170364;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (164617 - 170364) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 164617;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (173655 - 164617) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = 173655;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (171547 - 173655) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = 171547;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (208838 - 171547) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = 208838;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (153221 - 208838) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = 153221;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (150087 - 153221) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = 150087;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (170439 - 150087) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = 170439;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (176456 - 170439) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = 176456;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (182231 - 176456) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = 182231;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (181535 - 182231) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 181535;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (183682 - 181535) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = 183682;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (183318 - 183682) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    else if(time <= time_step * 20){
        intercept = 183318;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (177406 - 183318) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = 177406;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (182737 - 177406) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = 182737;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (187443 - 182737) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = 187443;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (224540 - 187443) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = 224540;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (161349 - 224540) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = 161349;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (162841 - 161349) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = 162841;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (192319 - 162841) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = 192319;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (189569 - 192319) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = 189569;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (194927 - 189569) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = 194927;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (197946 - 194927) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = 197946;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (193355 - 197946) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = 193355;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (202388 - 193355) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = 202388;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (193954 - 202388) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = 193954;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (197956 - 193954) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 197956;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (202520 - 197956) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = 202520;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (241111 - 202520) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = 241111;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (175344 - 241111) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = 175344;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (172138 - 175344) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = 172138;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (201279 - 172138) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = 201279;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (196039 - 201279) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = 196039;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (210478 - 196039) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = 210478;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (211844 - 210478) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = 211844;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (203411 - 211844) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = 203411;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (214248 - 203411) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = 214248;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (202122 - 214248) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = 202122;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (204044 - 202122) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = 204044;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (212190 - 204044) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = 212190;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (247491 - 212190) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = 247491;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (185019 - 247491) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = 185019;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (192380 - 185019) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = 192380;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (212110 - 192380) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = 212110;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (211718 - 212110) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 211718;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (226936 - 211718) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = 226936;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (217511 - 226936) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = 217511;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (218111 - 217511) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = 218111;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (226062 - 218111) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = 226062;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (209250 - 226062) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = 209250;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (222663 - 209250) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = 222663;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (223953 - 222663) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = 223953;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (258081 - 223953) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = 258081;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (200389 - 258081) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = 200389;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (197556 - 200389) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = 197556;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (225133 - 197556) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = 225133;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (220329 - 225133) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = 220329;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (234190 - 220329) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = 234190;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (227365 - 234190) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = 227365;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (231521 - 227365) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = 231521;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (235252 - 231521) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = 235252;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (222807 - 235252) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = 222807;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (232251 - 222807) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = 232251;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (228284 - 232251) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = 228284;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (271054 - 228284) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = 271054;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (207853 - 271054) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = 207853;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (203863 - 207853) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = 203863;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (230313 - 203863) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = 230313;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (234503 - 230313) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = 234503;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (245027 - 234503) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = 245027;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (244067 - 245027) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = 244067;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (241431 - 244067) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = 241431;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (240462 - 241431) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = 240462;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (231243 - 240462) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = 231243;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (244234 - 231243) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = 244234;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (240991 - 244234) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = 240991;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (288969 - 240991) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = 288969;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (218126 - 288969) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = 218126;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (220650 - 218126) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = 220650;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (253550 - 220650) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = 253550;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (250783 - 253550) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = 250783;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (262113 - 250783) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = 262113;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (260918 - 262113) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = 260918;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (262051 - 260918) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 262051;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (265089 - 262051) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = 265089;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (253905 - 265089) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = 253905;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (258040 - 253905) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 258040;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (264106 - 258040) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = 264106;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (317659 - 264106) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = 317659;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (236422 - 317659) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = 236422;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (250580 - 236422) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = 250580;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (279515 - 250580) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = 279515;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (264417 - 279515) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    return 264417;
}

real dataFunc__process_noise_uniform_driving(real time, real time_step){
    // DataStructure for variable process_noise_uniform_driving
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = 0.4190067897542967;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (0.11675877005809232 - 0.4190067897542967) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 0.11675877005809232;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (-0.02709120841571866 - 0.11675877005809232) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = -0.02709120841571866;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (0.1417471260077494 - -0.02709120841571866) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 0.1417471260077494;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (-0.10794392319075696 - 0.1417471260077494) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = -0.10794392319075696;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (-0.14384737011074222 - -0.10794392319075696) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = -0.14384737011074222;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (0.39290258292802205 - -0.14384737011074222) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = 0.39290258292802205;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (-0.11222494852460896 - 0.39290258292802205) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = -0.11222494852460896;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (0.03615657189676402 - -0.11222494852460896) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 0.03615657189676402;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (0.07722375127372294 - 0.03615657189676402) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = 0.07722375127372294;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (0.2468241907761477 - 0.07722375127372294) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = 0.2468241907761477;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (-0.4518863876783369 - 0.2468241907761477) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = -0.4518863876783369;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (-0.1678806642878744 - -0.4518863876783369) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = -0.1678806642878744;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (-0.11861758800091904 - -0.1678806642878744) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = -0.11861758800091904;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (-0.20824701334335827 - -0.11861758800091904) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = -0.20824701334335827;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (-0.1176008878395487 - -0.20824701334335827) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = -0.1176008878395487;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (-0.2162864453707518 - -0.1176008878395487) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = -0.2162864453707518;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (-0.036670162998139855 - -0.2162864453707518) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = -0.036670162998139855;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (-0.24355317011347022 - -0.036670162998139855) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = -0.24355317011347022;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (-0.1052822453520249 - -0.24355317011347022) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    else if(time <= time_step * 20){
        intercept = -0.1052822453520249;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (0.28789694996275017 - -0.1052822453520249) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = 0.28789694996275017;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (0.23833493524869032 - 0.28789694996275017) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = 0.23833493524869032;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (-0.35189735582149806 - 0.23833493524869032) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = -0.35189735582149806;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (-0.30732083975270363 - -0.35189735582149806) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = -0.30732083975270363;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (0.10322367452284131 - -0.30732083975270363) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = 0.10322367452284131;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (0.3989955486307817 - 0.10322367452284131) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = 0.3989955486307817;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (-0.09993761284976288 - 0.3989955486307817) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = -0.09993761284976288;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (-0.18894840278747582 - -0.09993761284976288) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = -0.18894840278747582;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (0.4969451568284228 - -0.18894840278747582) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = 0.4969451568284228;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (-0.17719568118995288 - 0.4969451568284228) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = -0.17719568118995288;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (0.02261468554285262 - -0.17719568118995288) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = 0.02261468554285262;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (0.37935397398947845 - 0.02261468554285262) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = 0.37935397398947845;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (0.48488371337228064 - 0.37935397398947845) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = 0.48488371337228064;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (0.08436198196561329 - 0.48488371337228064) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 0.08436198196561329;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (-0.4190246202480825 - 0.08436198196561329) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = -0.4190246202480825;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (0.3855202925893847 - -0.4190246202480825) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = 0.3855202925893847;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (0.09310421128267499 - 0.3855202925893847) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = 0.09310421128267499;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (-0.36747749206805447 - 0.09310421128267499) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = -0.36747749206805447;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (-0.27185775299013615 - -0.36747749206805447) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = -0.27185775299013615;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (-0.28594275266164315 - -0.27185775299013615) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = -0.28594275266164315;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (-0.47101911436003097 - -0.28594275266164315) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = -0.47101911436003097;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (0.30749599224963975 - -0.47101911436003097) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = 0.30749599224963975;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (0.41455150834957466 - 0.30749599224963975) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = 0.41455150834957466;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (-0.05327016697229259 - 0.41455150834957466) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = -0.05327016697229259;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (0.3021218168190295 - -0.05327016697229259) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = 0.3021218168190295;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (0.4936525404334897 - 0.3021218168190295) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = 0.4936525404334897;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (0.323324531398826 - 0.4936525404334897) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = 0.323324531398826;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (-0.44116513184739836 - 0.323324531398826) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = -0.44116513184739836;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (0.22577486059378582 - -0.44116513184739836) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = 0.22577486059378582;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (-0.14441767604493894 - 0.22577486059378582) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = -0.14441767604493894;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (0.007066466653700476 - -0.14441767604493894) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = 0.007066466653700476;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (0.32574355611647754 - 0.007066466653700476) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 0.32574355611647754;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (0.07436248265954504 - 0.32574355611647754) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = 0.07436248265954504;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (-0.45975206247540923 - 0.07436248265954504) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = -0.45975206247540923;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (0.08306944752852363 - -0.45975206247540923) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = 0.08306944752852363;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (-0.35038894485085403 - 0.08306944752852363) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = -0.35038894485085403;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (0.39857374032109527 - -0.35038894485085403) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = 0.39857374032109527;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (-0.38398954132622853 - 0.39857374032109527) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = -0.38398954132622853;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (-0.24423229391943868 - -0.38398954132622853) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = -0.24423229391943868;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (-0.47265647368028707 - -0.24423229391943868) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = -0.47265647368028707;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (0.00773393893088381 - -0.47265647368028707) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = 0.00773393893088381;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (0.0021153374854062656 - 0.00773393893088381) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = 0.0021153374854062656;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (-0.3778923836057182 - 0.0021153374854062656) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = -0.3778923836057182;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (-0.44365016416718694 - -0.3778923836057182) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = -0.44365016416718694;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (-0.3163008343057462 - -0.44365016416718694) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = -0.3163008343057462;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (0.2567675363497086 - -0.3163008343057462) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = 0.2567675363497086;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (-0.13240004004181594 - 0.2567675363497086) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = -0.13240004004181594;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (0.46052201795076 - -0.13240004004181594) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = 0.46052201795076;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (0.4637815085295399 - 0.46052201795076) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = 0.4637815085295399;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (-0.27938069150597455 - 0.4637815085295399) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = -0.27938069150597455;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (-0.4072033545425666 - -0.27938069150597455) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = -0.4072033545425666;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (0.42191756336227726 - -0.4072033545425666) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = 0.42191756336227726;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (-0.46096154355682273 - 0.42191756336227726) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = -0.46096154355682273;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (-0.12605845498614465 - -0.46096154355682273) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = -0.12605845498614465;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (0.017027935183544174 - -0.12605845498614465) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = 0.017027935183544174;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (-0.25368596163771684 - 0.017027935183544174) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = -0.25368596163771684;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (-0.32311791692190894 - -0.25368596163771684) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = -0.32311791692190894;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (0.008369936051441096 - -0.32311791692190894) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = 0.008369936051441096;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (-0.21790774345660824 - 0.008369936051441096) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = -0.21790774345660824;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (0.10268362671191511 - -0.21790774345660824) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = 0.10268362671191511;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (0.1798048854045976 - 0.10268362671191511) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = 0.1798048854045976;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (0.09350502780433545 - 0.1798048854045976) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = 0.09350502780433545;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (-0.15024614341334108 - 0.09350502780433545) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = -0.15024614341334108;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (-0.4820986750475613 - -0.15024614341334108) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = -0.4820986750475613;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (0.16248335993351481 - -0.4820986750475613) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = 0.16248335993351481;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (0.2655748489645633 - 0.16248335993351481) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = 0.2655748489645633;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (-0.08912706021247485 - 0.2655748489645633) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = -0.08912706021247485;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (-0.4025614229677005 - -0.08912706021247485) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = -0.4025614229677005;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (-0.11751204880252608 - -0.4025614229677005) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = -0.11751204880252608;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (0.38996537169315804 - -0.11751204880252608) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = 0.38996537169315804;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (0.27469135057169425 - 0.38996537169315804) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 0.27469135057169425;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (0.16666755726460214 - 0.27469135057169425) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = 0.16666755726460214;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (0.44254158527266074 - 0.16666755726460214) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = 0.44254158527266074;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (0.031058341538849787 - 0.44254158527266074) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 0.031058341538849787;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (0.031192157742662263 - 0.031058341538849787) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = 0.031192157742662263;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (0.14394555500622896 - 0.031192157742662263) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = 0.14394555500622896;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (-0.34467231004429466 - 0.14394555500622896) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = -0.34467231004429466;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (0.11779349344216117 - -0.34467231004429466) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = 0.11779349344216117;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (-0.3704921776045774 - 0.11779349344216117) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = -0.3704921776045774;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (-0.34310845551026725 - -0.3704921776045774) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    return -0.34310845551026725;
}

vector vensim_ode_func(real time, vector outcome, real minimum_order_processing_time, real inventory_adjustment_time, real time_step, real process_noise_scale){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real work_in_process_inventory = outcome[1];
    real process_noise = outcome[2];
    real production_rate_stocked = outcome[3];
    real backlog = outcome[4];
    real expected_order_rate = outcome[5];
    real inventory = outcome[6];
    real production_start_rate_stocked = outcome[7];

    real manufacturing_cycle_time = 8;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real desired_minus_state_inventory = desired_inventory - inventory;
    real adjustment_from_inventory = desired_minus_state_inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real desired_minus_state_wip = desired_wip - work_in_process_inventory;
    real one_centered_process_noise = 1 + process_noise;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time * fmax(0, one_centered_process_noise);
    real desired_minus_shadow_pr = production_rate - production_rate_stocked;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time, time_step) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real correlation_time_over_time_step = 100;
    real white_noise = 4.89 * correlation_time_over_time_step ^ 0.5 * dataFunc__process_noise_uniform_driving(time, time_step) * process_noise_scale;
    real white_minus_process = white_noise - process_noise;
    real reference_throughput = 170000;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_minus_state_wip / wip_adjustment_time;
    real desired_production_start_rate = fmax(0, desired_production + adjustment_for_wip);
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real production_rate_stocked_change_rate = desired_minus_shadow_pr / time_step;
    real inventory_dydt = production_rate - shipment_rate;
    real correlation_time = time_step * correlation_time_over_time_step;
    real process_noise_change_rate = white_minus_process / correlation_time;
    real order_fulfillment_rate = shipment_rate;
    real process_noise_dydt = process_noise_change_rate;
    real order_rate = dataFunc__customer_order_rate(time, time_step);
    real desired_minus_shadow_psr = production_start_rate - production_start_rate_stocked;
    real production_rate_stocked_dydt = production_rate + production_rate_stocked_change_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_start_rate_stocked_change_rate = desired_minus_shadow_psr / time_step;
    real production_start_rate_stocked_dydt = production_start_rate + production_start_rate_stocked_change_rate;

    dydt[1] = work_in_process_inventory_dydt;
    dydt[2] = process_noise_dydt;
    dydt[3] = production_rate_stocked_dydt;
    dydt[4] = backlog_dydt;
    dydt[5] = expected_order_rate_dydt;
    dydt[6] = inventory_dydt;
    dydt[7] = production_start_rate_stocked_dydt;

    return dydt;
}
