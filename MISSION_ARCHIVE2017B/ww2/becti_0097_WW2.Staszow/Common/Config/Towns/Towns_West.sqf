with missionNamespace do {
	//--- Infantry
	WEST_SOLDIER = ["LNRD_Luftwaffe_rifleman", 1];
	WEST_SOLDIER_AA = ["LNRD_Luftwaffe_AT_soldier", 1];
	WEST_SOLDIER_AR = ["LNRD_Luftwaffe_mgunner", 1];
	WEST_SOLDIER_AT = ["LNRD_Luftwaffe_AT_soldier", 1];
	WEST_SOLDIER_CREW = ["SG_sturmpanzer_crew", 1];
	WEST_SOLDIER_LAT = ["LNRD_Luftwaffe_AT_soldier", 1];
	WEST_SOLDIER_HAT = ["LNRD_Luftwaffe_AT_soldier", 1];
	WEST_SOLDIER_ENGINEER = ["SG_sturmtrooper_sapper", 1];
	WEST_SOLDIER_GL = ["SG_sturmtrooper_rifleman", 1];
	WEST_SOLDIER_MEDIC = ["LNRD_Luftwaffe_medic", 1];
	WEST_SOLDIER_PILOT = ["LNRD_Luftwaffe_rifleman", 1];
	WEST_SOLDIER_SQUADLEADER = ["SG_sturmtrooper_lieutenant", 1];
	WEST_SOLDIER_SNIPER = ["LNRD_Luftwaffe_ober_rifleman", 1];
	WEST_SOLDIER_MARKSMAN = ["LNRD_Luftwaffe_ober_rifleman", 1];
	WEST_SOLDIER_TEAMLEADER = ["SG_sturmtrooper_sapper_gefr", 1];
	WEST_SOLDIER_HEAVYGUNNER = ["LNRD_Luftwaffe_mgunner", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["LIB_SdKfz251", 2];
	WEST_MOTORIZED_GL = ["LIB_SdKfz251", 2];

	//--- Infantry - Mixed
	WEST_SOLDIERS_MG_LIGHT = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG_MEDIUM = [WEST_SOLDIER_AR, WEST_SOLDIER_HEAVYGUNNER];
	WEST_SOLDIERS_MG_HEAVY = [WEST_SOLDIER_HEAVYGUNNER, WEST_SOLDIER_HEAVYGUNNER];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["SG_sturmtrooper_sapper_gefr", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["LNRD_Luftwaffe_ober_rifleman", 1], ["LNRD_Luftwaffe_sniper", 1]];
	WEST_SOLDIERS_MARKSMEN = [WEST_SOLDIER_MARKSMAN, ["LNRD_Luftwaffe_ober_rifleman", 1], ["LNRD_Luftwaffe_ober_rifleman", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["LIB_SdKfz_7_AA", 1]];
	WEST_VEHICLE_APC = [["LIB_SdKfz251_FFV", 2], ["LIB_SdKfz251", 2]];
	WEST_VEHICLE_ARMORED_HEAVY = [["LIB_PzKpfwV", 2]];
	WEST_VEHICLE_ARMORED_LIGHT = [["LIB_PzKpfwIV_H", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT + WEST_VEHICLE_ARMORED_HEAVY;
};