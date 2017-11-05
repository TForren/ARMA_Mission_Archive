_chosenGroup = (_this select 0);

cost = 0;
infantry = [];
vehs = [];
vehicleCargo = [];
specials = ["GAZ66UAV","GAZ66MGNest","GAZ66Prop"];

switch (_chosenGroup) do {

//Infantry GPMG
case "INFGPMG": {
cost = 70;
//infantry classnames. index 0 is group leader
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner_assistant","rhs_msv_emr_LAT"];
//vehicle classnames
vehs = [];
//2D array of vehicle crews. higher index refers to index of vehs array. lower index refers to position commander, gunner, driver
vehicleCargo = [];
};

//Infantry Marksman
case "INFMARK": {
cost = 70;
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_LAT","rhs_msv_emr_marksman"];
vehs = [];
vehicleCargo = [];
};

//GAZ Tigr
case "GAZArmed": {
cost = 10;
infantry = [];
vehs = ["rhs_tigr_sts_msv"];
vehicleCargo = [];
};

//UAZ
case "UAZ": {
cost = 2;
infantry = [];
vehs = ["RHS_UAZ_MSV_01"];
vehicleCargo = [];
};

//Infantry Section AT
case "INF_AT": {
cost = 30;
infantry = ["rhs_msv_emr_junior_sergeant","rhs_msv_emr_at","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_LAT","rhs_msv_emr_rifleman"];
vehs = [];
vehicleCargo = [];
};

//Infantry Section FT
case "INF_FT": {
cost = 30;
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_machinegunner","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist"];
vehs = [];
vehicleCargo = [];
};

//Infantry Section AA
case "INF_AA": {
cost = 25;
infantry = ["rhs_msv_emr_junior_sergeant","rhs_msv_emr_aa","rhs_msv_emr_aa","rhs_msv_emr_aa","rhs_msv_emr_rifleman"];
vehs = [];
vehicleCargo = [];
};

//Motorized Infantry
case "MotorInf": {
cost = 90;
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner_assistant","rhs_msv_emr_marksman"];
vehs = ["RHS_Ural_MSV_01"];
vehicleCargo = [];
};

//BTR-80 Mechanized Infantry
case "BTR80Mech": {
cost = 110;
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner_assistant","rhs_msv_emr_marksman"];
vehs = ["rhs_btr80_msv"];
vehicleCargo = [];
};

//BTR-80A Mechanized Infantry
case "BTR80AMech": {
cost = 130;
infantry = ["rhs_msv_emr_sergeant","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner_assistant","rhs_msv_emr_marksman"];
vehs = ["rhs_btr80a_msv"];
vehicleCargo = [];
};

//BMP-2K
case "BMP2K": {
cost = 200;
infantry = [];
vehs = ["rhs_bmp2k_msv"];
vehicleCargo = [];
};

//T-80A
case "T80A": {
cost = 250;
infantry = [];
vehs = ["rhs_t80a"];
vehicleCargo = [];
};

//ZSU-23
case "ZSU23": {
cost = 180;
infantry = [];
vehs = ["rhs_zsu234_aa"];
vehicleCargo = [];
};

//UAV GAZ
case "GAZ66UAV": {
cost = 100;
infantry = [];
vehs = ["rhs_gaz66_r142_msv"];
vehicleCargo = [];
};

//MG Nest GAZ
case "GAZ66MGNest": {
cost = 50;
infantry = [];
vehs = ["rhs_gaz66_ammo_msv"];
vehicleCargo = [];
};

//Propaganda GAZ
case "GAZ66Prop": {
cost = 25;
infantry = [];
vehs = ["rhs_gaz66_repair_msv"];
vehicleCargo = [];
};

//MI-8MTV
case "MI8MTV": {
cost = 150;
infantry = [];
vehs = ["RHS_Mi8MTV3_UPK23_vvsc"];
vehicleCargo = [];
};

//MI-8
case "MI8": {
cost = 80;
infantry = [];
vehs = ["RHS_Mi8mt_vvsc"];
vehicleCargo = [];
};

};

[cost,infantry,vehs,vehicleCargo];