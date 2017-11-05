
#define package "FIA_"

#define uniform \
	["U_I_C_Soldier_Bandit_3_F","U_C_WorkerCoveralls","UK3CB_BAF_U_JumperUniform_Plain","U_BG_leader","U_BG_Guerilla2_3","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla1_1","U_BG_Guerrilla_6_1","UK3CB_BAF_U_CombatUniform_MTP_TShirt"] call FNC_AddItemRandom; \
	["H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_Bandanna_khk_hs","H_Booniehat_khk_hs","rhsusf_Bowman","rhsusf_bowman_cap","UK3CB_BAF_H_Earphone"] call FNC_AddItemRandom;

#define uniformDriver \
	["U_I_C_Soldier_Bandit_3_F","U_C_WorkerCoveralls","UK3CB_BAF_U_JumperUniform_Plain","U_BG_leader","U_BG_Guerilla2_3","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla1_1","U_BG_Guerrilla_6_1","UK3CB_BAF_U_CombatUniform_MTP_TShirt"] call FNC_AddItemRandom; \
	["H_Watchcap_khk"] call FNC_AddItem;

#define uniformCrew \
	["U_I_C_Soldier_Bandit_3_F","U_C_WorkerCoveralls","UK3CB_BAF_U_JumperUniform_Plain","U_BG_leader","U_BG_Guerilla2_3","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla1_1","U_BG_Guerrilla_6_1","UK3CB_BAF_U_CombatUniform_MTP_TShirt"] call FNC_AddItemRandom; \
	["H_HelmetCrew_O"] call FNC_AddItem; \
	["rhs_ess_black"] call FNC_AddItem;

#define uniformHeli \
	["U_I_HeliPilotCoveralls"] call FNC_AddItem; \
	["H_PilotHelmetHeli_O"] call FNC_AddItem; \
	["rhsusf_ANPVS_14"] call FNC_AddItem; \
	["G_Aviator"] call FNC_AddItem;

#define uniformPilot \
	["U_I_pilotCoveralls"] call FNC_AddItem; \
	["H_PilotHelmetFighter_O"] call FNC_AddItem; \
	["rhsusf_ANPVS_14"] call FNC_AddItem; \
	["G_Aviator"] call FNC_AddItem;

#define IFAK \
	["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 2, "uniform"] call FNC_AddItem;

#define items \
	["ACRE_PRC343", 1, "uniform"] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_Flashlight_KSF1"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem;

#define itemsCrew \
	["ACRE_PRC343", 1, "uniform"] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem;

#define armsRifle \
	["rhsgref_otv_khaki","tb_alfr_platecarrier_01_AFPATA"] call FNC_AddItemRandom; \
	[[["hlc_rifle_g3ka4"],["rhsusf_acc_ACOG3"],["rhsusf_acc_anpeq15side_bk"],["hlc_20rnd_762x51_b_G3",6, "vest"]],[["arifle_CTAR_hex_F"],["rhsusf_acc_SpecterDR_D"],["rhsusf_acc_anpeq15side"],["30Rnd_580x42_Mag_F", 12, "vest"]],[["rhs_weap_kar98k"],["rhsgref_5Rnd_792x57_kar98k",6, "vest"]],[["rhs_weap_m38"],["rhsgref_5Rnd_762x54_m38",6, "vest"]],[["hlc_rifle_M14"],["hlc_20Rnd_762x51_B_M14",6, "vest"]],[["hlc_rifle_STG58F"],["hlc_20Rnd_762x51_B_fal",6, "vest"]]] call FNC_AddItemRandom;

#define armsGren \
	["rhsgref_otv_khaki","tb_alfr_platecarrier_01_AFPATA"] call FNC_AddItemRandom; \
	[[["HLC_Rifle_g3ka4_GL"],["rhsusf_acc_ACOG3"],["rhsusf_acc_anpeq15side_bk"],["hlc_20rnd_762x51_b_G3", 4, "vest"],["1Rnd_HE_Grenade_shell", 8, "vest"]],[["arifle_CTAR_GL_hex_F"],["rhsusf_acc_SpecterDR_D"],["rhsusf_acc_anpeq15side"],["30Rnd_580x42_Mag_F", 8, "vest"],["1Rnd_HE_Grenade_shell", 8, "vest"]]] call FNC_AddItemRandom;

#define armsMarksman \
	["rhsgref_otv_khaki","tb_alfr_platecarrier_01_AFPATA"] call FNC_AddItemRandom; \
	["rhs_weap_m24sws_blk"] call FNC_AddItem; \
	["rhsusf_acc_premier"] call FNC_AddItem; \
	["rhsusf_acc_harris_bipod"] call FNC_AddItem; \
	["rhsusf_5Rnd_762x51_m118_special_Mag", 8, "vest"] call FNC_AddItem;

#define armsAT \
	["tb_launcher_mk13"] call FNC_AddItem;

#define armsAR \
	["rhsgref_otv_khaki","tb_alfr_platecarrier_01_AFPATA"] call FNC_AddItemRandom; \
	["100Rnd_580x42_Mag_F", 2] call FNC_AddItem; \
	["arifle_CTARS_hex_F"] call FNC_AddItem; \
	["rhsusf_acc_ACOG3"] call FNC_AddItem;

#define armsMG \
	["rhsgref_otv_khaki","tb_alfr_platecarrier_01_AFPATA"] call FNC_AddItemRandom; \
	["hlc_100Rnd_762x51_M_M60E4", 2] call FNC_AddItem; \
	["hlc_lmg_m60"] call FNC_AddItem;

#define armsCrew \
	["V_BandollierB_khk"] call FNC_AddItem; \
	["hlc_30rnd_556x45_b_HK33", 4, "vest"] call FNC_AddItem; \
	["hlc_rifle_hk53"] call FNC_AddItem;

#define armsPilot \
	["rhsusf_weap_m9"] call FNC_AddItem; \
	["rhsusf_mag_15Rnd_9x19_FMJ", 4] call FNC_AddItem; \
	["hgun_Rook40_F"] call FNC_AddItem;

#define ruckRifle

#define ruckAR

#define ruckGren

#define ruckMedic \
	["B_Kitbag_cbr"] call FNC_AddItem; \
	["ACE_salineIV", 2, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 4, "backpack"] call FNC_AddItem; \
	["ACE_adenosine", 10, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 10, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 10, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 16, "backpack"] call FNC_AddItem; \
	["ACE_fieldDressing", 16, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 16, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 20, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 5, "backpack"] call FNC_AddItem; \
	["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem;

#define ruckCLS \
	["B_Kitbag_cbr"] call FNC_AddItemRandom; \
	["ACE_fieldDressing", 6, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 8, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 6, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 6, "backpack"] call FNC_AddItem; \
	["ACE_atropine", 2, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 2, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 2, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 3, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 3, "backpack"] call FNC_AddItem;

#define ruckAT \
	["B_Kitbag_cbr"] call FNC_AddItem; \
	["tb_mk13_heat", 2, "backpack"] call FNC_AddItem;

#define ruckMG \
	["B_Kitbag_cbr"] call FNC_AddItem; \
	["hlc_100Rnd_762x51_M_M60E4", 3, "backpack"] call FNC_AddItem;

#define ruckRTO \
	["B_Kitbag_cbr"] call FNC_AddItem; \
	["ACRE_PRC117F", 1, "backpack"] call FNC_AddItem; \
	["hlc_20rnd_762x51_b_G3", 6, "backpack"] call FNC_AddItem;

case (package + "PL"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR"] call FNC_AddItem;
	["ACE_MapTools"] call FNC_AddItem;

	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2] call FNC_AddItem;

	["rhs_mag_m18_green", 2] call FNC_AddItem;
	["SmokeShell", 2] call FNC_AddItem;
};

case (package + "DR"): {

	uniformDriver;
	IFAK;
	items;
	armsRifle;

	["ACE_MapTools"] call FNC_AddItem;

	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;
};

case (package + "SL"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR"] call FNC_AddItem;
	["ACE_MapTools"] call FNC_AddItem;

	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2] call FNC_AddItem;

	["rhs_mag_m18_green", 2] call FNC_AddItem;
	["SmokeShell", 2] call FNC_AddItem;

	["rhs_weap_M136"] call FNC_AddItem;
};

case (package + "TL"): {

	uniform;
	IFAK;
	items;
	armsGren;
	ruckGren;


	["rhs_mag_m67",1] call FNC_AddItem;

	["SmokeShell", 1] call FNC_AddItem;

	["rhs_weap_M136", 1] call FNC_AddItem;

};

case (package + "RFAT"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["rhs_mag_m67", 2] call FNC_AddItem;

	["rhs_weap_M136"] call FNC_AddItem;
};

case (package + "RF"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "RFCLS"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCLS;

	["rhs_mag_m67", 2] call FNC_AddItem;
};


case (package + "MM"): {

	uniform;
	IFAK;
	items;
	armsMarksman;

	["rhs_mag_m67", 2] call FNC_AddItem;
};


case (package + "AR"): {

	uniform;
	IFAK;
	items;
	armsAR;
	ruckAR;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "RTO"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRTO;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "MD"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMedic;

	["SmokeShell", 4, "vest"] call FNC_AddItem;
};


case (package + "AT"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	armsAT;
	ruckAT;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "ATA"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckAT;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "MG"): {

	uniform;
	IFAK;
	items;
	armsMG;
	ruckMG;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

case (package + "MGA"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMG;

	["rhs_mag_m67", 2] call FNC_AddItem;
};

///// Vehicle Crew /////

case (package + "CREW"): {

	uniformCrew;
	IFAK;
	itemsCrew;
	armsCrew;

	["Binocular"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;
};

///// Aircrew /////

case (package + "HELICREW"): {

	uniformHeli;
	IFAK;
	itemsCrew;
	armsPilot;

	["ACRE_PRC152"] call FNC_AddItem;
};

case (package + "HELIPILOT"): {

	uniformHeli;
	IFAK;
	itemsCrew;
	armsPilot;

	["ACRE_PRC152"] call FNC_AddItem;
};

case (package + "PILOT"): {

	uniformPilot;
	IFAK;
	itemsCrew;
	armsPilot;

	["ACRE_PRC152"] call FNC_AddItem;
};