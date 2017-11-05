
#define package "CSAT_"

#define uniform \
	["U_O_CombatUniform_ocamo"] call FNC_AddItem; \
	["H_HelmetO_ocamo"] call FNC_AddItem; \
	["O_NVGoggles_hex_F"] call FNC_AddItem; \
	["rhs_ess_black"] call FNC_AddItem;

#define uniformDriver \
	["U_O_CombatUniform_ocamo"] call FNC_AddItem; \
	["H_Milcap_ocamo"] call FNC_AddItem;

#define uniformCrew \
	["U_O_CombatUniform_ocamo"] call FNC_AddItem; \
	["H_HelmetCrew_O"] call FNC_AddItem; \
	["O_NVGoggles_hex_F"] call FNC_AddItem; \
	["rhs_ess_black"] call FNC_AddItem;

#define uniformHeli \
	["U_O_PilotCoveralls"] call FNC_AddItem; \
	["H_PilotHelmetHeli_O"] call FNC_AddItem; \
	["O_NVGoggles_hex_F"] call FNC_AddItem; \
	["G_Aviator"] call FNC_AddItem;

#define uniformPilot \
	["U_O_PilotCoveralls"] call FNC_AddItem; \
	["H_PilotHelmetFighter_O"] call FNC_AddItem; \
	["O_NVGoggles_hex_F"] call FNC_AddItem; \
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
	["V_TacVest_khk"] call FNC_AddItem; \
	["arifle_CTAR_hex_F"] call FNC_AddItem; \
	["rhsusf_acc_SpecterDR_D"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15side"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 5, "vest"] call FNC_AddItem;

#define armsGren \
	["V_TacVest_khk"] call FNC_AddItem; \
	["arifle_CTAR_GL_hex_F"] call FNC_AddItem; \
	["rhsusf_acc_SpecterDR_D"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15side"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 4, "vest"] call FNC_AddItem; \
	["1Rnd_HE_Grenade_shell", 8, "vest"] call FNC_AddItem;

#define armsMarksman \
	["V_TacVest_khk"] call FNC_AddItem; \
	["srifle_DMR_07_hex_F"] call FNC_AddItem; \
	["optic_KHS_hex"] call FNC_AddItem; \
	["20Rnd_650x39_Cased_Mag_F", 12, "vest"] call FNC_AddItem;

#define armsAT \
	["launch_RPG32_F"] call FNC_AddItem;

#define armsAR \
	["V_TacVest_khk"] call FNC_AddItem; \
	["100Rnd_580x42_Mag_F", 2] call FNC_AddItem; \
	["arifle_CTARS_hex_F"] call FNC_AddItem; \
	["rhsusf_acc_SpecterDR_D"] call FNC_AddItem;

#define armsMG \
	["V_TacVest_khk"] call FNC_AddItem; \
	["150Rnd_93x64_Mag", 1] call FNC_AddItem; \
	["MMG_01_hex_F"] call FNC_AddItem; \
	["bipod_02_F_hex"] call FNC_AddItem;

#define armsCrew \
	["V_TacVest_khk"] call FNC_AddItem; \
	["30Rnd_9x21_Mag_SMG_02", 4, "vest"] call FNC_AddItem; \
	["SMG_05_F"] call FNC_AddItem; \
	["optic_ACO_grn_smg"] call FNC_AddItem;

#define armsPilot \
	["rhs_vest_pistol_holster"] call FNC_AddItem; \
	["16Rnd_9x21_Mag", 4] call FNC_AddItem; \
	["hgun_Rook40_F"] call FNC_AddItem;

#define ruckRifle \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 10, "backpack"] call FNC_AddItem; \
	["150Rnd_93x64_Mag", 1, "backpack"] call FNC_AddItem;

#define ruckAR \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["100Rnd_580x42_Mag_F", 4, "backpack"] call FNC_AddItem;

#define ruckGren \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 10, "backpack"] call FNC_AddItem; \
	["1Rnd_HE_Grenade_shell", 14, "backpack"] call FNC_AddItem; \
	["1Rnd_Smoke_Grenade_shell", 2, "backpack"] call FNC_AddItem; \
	["1Rnd_SmokeRed_Grenade_shell", 2, "backpack"] call FNC_AddItem; \
	["1Rnd_SmokeGreen_Grenade_shell", 2, "backpack"] call FNC_AddItem;

#define ruckMedic \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
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
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 4, "backpack"] call FNC_AddItem; \
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
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["RPG32_F", 2, "backpack"] call FNC_AddItem;

#define ruckMG \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["150Rnd_93x64_Mag", 3, "backpack"] call FNC_AddItem;

#define ruckRTO \
	["B_ViperHarness_hex_F"] call FNC_AddItem; \
	["ACRE_PRC117F", 1, "backpack"] call FNC_AddItem; \
	["30Rnd_580x42_Mag_F", 6, "backpack"] call FNC_AddItem;

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

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;

	["rhs_mag_nspd", 2] call FNC_AddItem;
	["rhs_mag_rdg2_white", 2] call FNC_AddItem;
};

case (package + "DR"): {

	uniformDriver;
	IFAK;
	items;
	armsRifle;

	["ACE_MapTools"] call FNC_AddItem;
	["ACE_DAGR"] call FNC_AddItem;

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

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;

	["rhs_mag_nspd", 2] call FNC_AddItem;
	["rhs_mag_rdg2_white", 2] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "TL"): {

	uniform;
	IFAK;
	items;
	armsGren;
	ruckGren;

	["ACE_MapTools"] call FNC_AddItem;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;

	["rhs_mag_rdg2_white", 1] call FNC_AddItem;

	["rhs_weap_rpg26", 1] call FNC_AddItem;

};

case (package + "RFAT"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "RF"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "RFCLS"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCLS;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};


case (package + "MM"): {

	uniform;
	IFAK;
	items;
	armsMarksman;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};


case (package + "AR"): {

	uniform;
	IFAK;
	items;
	armsAR;
	ruckAR;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "RTO"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRTO;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "MD"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMedic;

	["rhs_mag_rdg2_white", 4, "vest"] call FNC_AddItem;
};


case (package + "AT"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	armsAT;
	ruckAT;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "ATA"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckAT;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "MG"): {

	uniform;
	IFAK;
	items;
	armsMG;
	ruckMG;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
};

case (package + "MGA"): {

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMG;

	["Binocular"] call FNC_AddItem;

	["rhs_mag_rgn", 1] call FNC_AddItem;
	["rhs_mag_rgo", 1] call FNC_AddItem;
	["rhs_mag_rgd5", 1] call FNC_AddItem;
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