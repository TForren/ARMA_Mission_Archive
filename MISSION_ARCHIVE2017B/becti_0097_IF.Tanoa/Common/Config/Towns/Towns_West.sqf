with missionNamespace do {
	//--- Infantry
	WEST_SOLDIER = ["rhsusf_usmc_marpat_wd_rifleman", 1];
	WEST_SOLDIER_AA = ["rhsusf_usmc_marpat_wd_stinger", 1];
	WEST_SOLDIER_AR = ["B_T_Soldier_AR_F", 1];
	WEST_SOLDIER_AT = ["B_T_Soldier_LAT_F", 1];
	WEST_SOLDIER_CREW = ["rhsusf_usmc_marpat_wd_crewman", 1];
	WEST_SOLDIER_LAT = ["B_T_Soldier_LAT_F", 1];
	WEST_SOLDIER_HAT = ["B_T_Soldier_AT_F", 1];
	WEST_SOLDIER_ENGINEER = ["rhsusf_usmc_marpat_wd_engineer", 1];
	WEST_SOLDIER_GL = ["rhsusf_usmc_marpat_wd_grenadier", 1];
	WEST_SOLDIER_MEDIC = ["rhsusf_usmc_marpat_wd_rifleman_m4", 1];
	WEST_SOLDIER_PILOT = ["B_T_helipilot_F", 1];
	WEST_SOLDIER_SQUADLEADER = ["rhsusf_usmc_marpat_wd_squadleader", 1];
	WEST_SOLDIER_SNIPER = ["B_T_Sniper_F", 1];
	WEST_SOLDIER_MARKSMAN = ["B_T_Soldier_M_F", 1];
	WEST_SOLDIER_TEAMLEADER = ["rhsusf_usmc_marpat_wd_teamleader", 1];
	WEST_SOLDIER_HEAVYGUNNER = ["rhsusf_usmc_marpat_wd_machinegunner", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["rhsusf_rg33_m2_usmc_wd", 2];
	WEST_MOTORIZED_GL = ["rhsusf_rg33_m2_usmc_wd", 2];

	//--- Infantry - Mixed
	WEST_SOLDIERS_MG_LIGHT = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG_MEDIUM = [WEST_SOLDIER_AR, WEST_SOLDIER_HEAVYGUNNER];
	WEST_SOLDIERS_MG_HEAVY = [WEST_SOLDIER_HEAVYGUNNER, WEST_SOLDIER_HEAVYGUNNER];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["B_T_Soldier_exp_F", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["B_T_Spotter_F", 1], ["rhsusf_usmc_marpat_wd_sniper", 1]];
	WEST_SOLDIERS_MARKSMEN = [WEST_SOLDIER_MARKSMAN, ["B_T_Spotter_F", 1], ["rhsusf_usmc_marpat_wd_marksman", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["RHS_M6_wd", 1]];
	WEST_VEHICLE_APC = [["RHS_M2A3_BUSKI_wd", 2], ["rhsusf_m113_usarmy", 2]];
	WEST_VEHICLE_ARMORED_HEAVY = [["rhsusf_m1a1aim_tuski_wd", 2]];
	WEST_VEHICLE_ARMORED_LIGHT = [["rhsusf_m1a1aimwd_usarmy", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT + WEST_VEHICLE_ARMORED_HEAVY;
};