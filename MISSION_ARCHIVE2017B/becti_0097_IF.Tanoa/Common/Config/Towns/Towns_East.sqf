with missionNamespace do {
	//--- Infantry
	EAST_SOLDIER = ["rhs_vmf_flora_rifleman", 1];
	EAST_SOLDIER_AA = ["O_T_soldier_AA_F", 1];
	EAST_SOLDIER_AR = ["rhs_vmf_flora_machinegunner", 1];
	EAST_SOLDIER_AT = ["rhs_vmf_flora_LAT", 1];
	EAST_SOLDIER_CREW = ["rhs_vmf_flora_combatcrew", 1];
	EAST_SOLDIER_LAT = ["rhs_vmf_flora_LAT", 1];
	EAST_SOLDIER_HAT = ["rhs_vmf_flora_at", 1];
	EAST_SOLDIER_ENGINEER = ["rhs_vmf_flora_engineer", 1];
	EAST_SOLDIER_GL = ["rhs_vmf_flora_grenadier_rpg", 1];
	EAST_SOLDIER_MEDIC = ["rhs_vmf_flora_medic", 1];
	EAST_SOLDIER_PILOT = ["rhs_pilot_combat_heli", 1];
	EAST_SOLDIER_SQUADLEADER = ["rhs_vmf_flora_sergeant", 1];
	EAST_SOLDIER_SNIPER = ["O_T_Sniper_F", 1];
	EAST_SOLDIER_MARKSMAN = ["O_T_Soldier_M_F", 1];
	EAST_SOLDIER_TEAMLEADER = ["rhs_vmf_flora_junior_sergeant", 1];
	EAST_SOLDIER_HEAVYGUNNER = ["rhs_vmf_flora_machinegunner", 1];
	
	//--- Vehicles
	EAST_MOTORIZED_MG = ["rhs_tigr_sts_vmf", 2];
	EAST_MOTORIZED_GL = ["rhs_tigr_sts_3camo_vmf", 2];

	//--- Infantry - Mixed
	EAST_SOLDIERS_MG_LIGHT = [EAST_SOLDIER_AR];
	EAST_SOLDIERS_MG_MEDIUM = [EAST_SOLDIER_AR, EAST_SOLDIER_HEAVYGUNNER];
	EAST_SOLDIERS_MG_HEAVY = [EAST_SOLDIER_HEAVYGUNNER, EAST_SOLDIER_HEAVYGUNNER];
	EAST_SOLDIERS_AT_LIGHT = [EAST_SOLDIER_LAT];
	EAST_SOLDIERS_AT_MEDIUM = [EAST_SOLDIER_AT];
	EAST_SOLDIERS_AT_HEAVY = [EAST_SOLDIER_HAT];
	EAST_SOLDIERS_SPECOPS = [["O_T_Soldier_exp_F", 1]];
	EAST_SOLDIERS_ENGINEER = [EAST_SOLDIER_ENGINEER, ["O_T_Soldier_repair_F", 1]];
	EAST_SOLDIERS_SNIPERS = [EAST_SOLDIER_SNIPER, ["O_T_Spotter_F", 1], ["rhs_vmf_recon_marksman", 1]];
	EAST_SOLDIERS_MARKSMEN = [EAST_SOLDIER_MARKSMAN, ["O_T_Spotter_F", 1], ["rhs_vmf_flora_marksman", 1]];

	//--- Vehicles
	EAST_VEHICLE_AA = [["rhs_zsu234_aa", 1]];
	EAST_VEHICLE_APC = [["rhs_btr80_vmf", 2], ["rhs_bmp2e_vmf", 2]];
	// EAST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	EAST_VEHICLE_ARMORED_LIGHT = [["rhs_t80a", 2]];
	// EAST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	EAST_VEHICLE_MOTORIZED = [EAST_MOTORIZED_MG, EAST_MOTORIZED_GL, EAST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	EAST_VEHICLES_AA_LIGHT = EAST_VEHICLE_AA;
	// EAST_VEHICLES_LIGHT = EAST_VEHICLE_MECHANIZED + EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_LIGHT = EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_MEDIUM = EAST_VEHICLE_APC + EAST_VEHICLE_ARMORED_LIGHT;
	EAST_VEHICLES_HEAVY = EAST_VEHICLE_ARMORED_LIGHT;
};