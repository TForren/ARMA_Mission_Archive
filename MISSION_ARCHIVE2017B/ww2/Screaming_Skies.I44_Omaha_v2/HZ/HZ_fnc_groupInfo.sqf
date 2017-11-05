_chosenGroup = (_this select 0);

cost = 0;
infantry = [];
vehs = [];
vehicleCargo = [];
specials = ["GAZ66UAV","GAZ66MGNest"];

switch (_chosenGroup) do {

//Infantry RIFLES
case "RIFLEINF": {
cost = 50;
//infantry classnames. index 0 is group leader
infantry = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_scout_ober_rifleman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_rifleman","LIB_GER_scout_rifleman"];
//vehicle classnames
vehs = [];
//2D array of vehicle crews. higher index refers to index of vehs array. lower index refers to position commander, gunner, driver
vehicleCargo = [];
};

//Infantry SCOUTs
case "SCOUTINF": {
cost = 50;
["LIB_GER_scout_unterofficer","LIB_GER_scout_mgunner","LIB_GER_scout_sniper","LIB_GER_scout_ober_rifleman","LIB_GER_scout_smgunner","LIB_GER_scout_smgunner","LIB_GER_scout_smgunner","LIB_GER_scout_smgunner","LIB_GER_scout_rifleman","LIB_GER_scout_rifleman"];
vehs = [];
vehicleCargo = [];
};

//Patrol
case "PATROL": {
cost = 20;
infantry = ["LIB_GER_gun_unterofficer","LIB_GER_mgunner","LIB_GER_soldier_MP40","LIB_GER_soldier_K98"];
vehs = [];
vehicleCargo = [];
};

//Snipers
case "SNIPER": {
cost = 30;
infantry = ["LIB_GER_scout_sniper","LIB_GER_scout_sniper"];
vehs = [];
vehicleCargo = [];
};

//kubel
case "kubel": {
cost = 20;
infantry = [];
vehs = ["LIB_Kfz1"];
vehicleCargo = ["LIB_GER_rifleman","LIB_GER_rifleman","LIB_GER_rifleman","LIB_GER_rifleman"];
};

//kubel42
case "kubel42": {
cost = 30;
infantry = [];
vehs = ["LIB_Kfz1_MG42"];
vehicleCargo = ["LIB_GER_rifleman"];
};

//Motorized Infantry
case "MotorInf": {
cost = 100;
infantry = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_scout_ober_rifleman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_rifleman","LIB_GER_scout_rifleman"];
vehs = ["LIB_opelblitz_open_y_camo"];
vehicleCargo = [];
};

//Mechanized Infantry
case "HalftrackMech": {
cost = 150;
infantry = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_scout_ober_rifleman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_rifleman","LIB_GER_scout_rifleman"];
vehs = ["LIB_SdKfz251"];
vehicleCargo = [];
};

//Panzer because lol
case "panzerVI": {
cost = 300;
infantry = [];
vehs = ["LIB_PzKpfwVI_E"];
vehicleCargo = [];
};

};

[cost,infantry,vehs,vehicleCargo];