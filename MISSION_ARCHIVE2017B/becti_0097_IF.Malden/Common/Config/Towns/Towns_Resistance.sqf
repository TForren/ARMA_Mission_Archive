with missionNamespace do {
	//--- Infantry
	GUER_SOLDIER = "rhsgref_ins_g_rifleman_akm";
	GUER_SOLDIER_AA = "rhsgref_ins_g_specialist_aa";
	GUER_SOLDIER_AR = "rhsgref_ins_g_machinegunner";
	GUER_SOLDIER_AT = "rhsgref_ins_g_grenadier_rpg";
	GUER_SOLDIER_CREW = "rhsgref_ins_g_crew";
	GUER_SOLDIER_LAT = "rhsgref_ins_g_rifleman_RPG26";
	GUER_SOLDIER_HAT = "rhsgref_ins_g_grenadier_rpg";
	GUER_SOLDIER_ENGINEER = "rhsgref_ins_g_engineer";
	GUER_SOLDIER_GL = "rhsgref_ins_g_grenadier";
	GUER_SOLDIER_MEDIC = "rhsgref_ins_g_medic";
	GUER_SOLDIER_PILOT = "rhsgref_ins_g_pilot";
	GUER_SOLDIER_SQUADLEADER = "rhsgref_ins_g_commander";
	GUER_SOLDIER_SNIPER = "rhsgref_ins_g_sniper";
	GUER_SOLDIER_MARKSMAN = "rhsgref_ins_g_sniper";
	GUER_SOLDIER_TEAMLEADER = "rhsgref_ins_g_squadleader";

	//--- Infantry - Mixed
	GUER_SOLDIERS_MG = [GUER_SOLDIER_AR];
	GUER_SOLDIERS_AT_LIGHT = [GUER_SOLDIER_LAT];
	GUER_SOLDIERS_AT_MEDIUM = [GUER_SOLDIER_AT];
	GUER_SOLDIERS_AT_HEAVY = [GUER_SOLDIER_HAT];
	GUER_SOLDIERS_SPECOPS = ["rhsgref_ins_g_sniper"];
	GUER_SOLDIERS_ENGINEER = [GUER_SOLDIER_ENGINEER, "rhsgref_ins_g_rifleman"];
	GUER_SOLDIERS_SNIPERS = [GUER_SOLDIER_SNIPER, "rhsgref_ins_g_rifleman_aks74", "rhsgref_ins_g_rifleman_aksu"];
	GUER_SOLDIERS_MARKSMEN = [GUER_SOLDIER_MARKSMAN, GUER_SOLDIER_MARKSMAN, "rhsgref_ins_g_sniper"];

	//--- Vehicles
	GUER_VEHICLE_APC = ["rhsgref_BRDM2_ins_g"]; //todo: replace with real veh later on
	//GUER_VEHICLE_APC = [["I_APC_Wheeled_03_cannon_F"],["I_APC_tracked_03_cannon_F"]]; //todo: replace with real veh later on
	// GUER_VEHICLE_APC = ["RHS_M2A3_BUSKI_wd", "rhs_btr80_vmf", "rhsusf_m113_usarmy", "rhs_btr80_vmf"]; //todo: replace with real veh later on
	GUER_VEHICLE_ARMORED_HEAVY = ["LOP_AFR_T55"];
	GUER_VEHICLE_ARMORED_LIGHT = ["rhsgref_ins_g_bmp1"];
	// GUER_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	GUER_VEHICLE_MOTORIZED = ["rhsgref_ins_g_uaz_spg9","rhsgref_ins_g_uaz_dshkm_chdkz","rhsgref_ins_g_uaz_ags"];

	//--- Vehicles - Mixed
	// GUER_VEHICLES_AA_LIGHT = GUER_VEHICLE_AA;
	// GUER_VEHICLES_LIGHT = GUER_VEHICLE_MECHANIZED + GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_LIGHT = GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_MEDIUM = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_APC;
	//GUER_VEHICLES_MEDIUM = GUER_VEHICLE_APC;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_HEAVY = GUER_VEHICLE_ARMORED_HEAVY;
};