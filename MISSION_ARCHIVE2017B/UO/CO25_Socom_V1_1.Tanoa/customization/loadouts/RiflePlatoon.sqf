
#define package "USMCRiflePlatoon_"

#define LightBackpack \
	["B_AssaultPack_tna_F"] call FNC_AddItem;

//B_AssaultPack_rgr_BTLAT_F

#define HeavyBackpack \
	["B_Carryall_oli"] call FNC_AddItem;

//B_ViperLightHarness_khk_F

#define UNIFORM \
	["U_B_T_Soldier_F","U_B_T_Soldier_AR_F"] call FNC_AddItemRandom; \
	["H_HelmetB_tna_F","H_HelmetB_light_snakeskin","H_HelmetB_Light_tna_F"] call FNC_AddItemRandom; \
	[["G_Bandanna_khk"],["G_Bandanna_oli"],["G_Sport_Blackred", 1]] call FNC_AddItemRandom;

#define LightVest \
	["V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F"] call FNC_AddItemRandom;

#define HeavyVest \
	["V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F"] call FNC_AddItemRandom;

#define BasicItems \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem;


#define Basic \
	["ACRE_PRC343",1,"uniform"] call FNC_AddItem; \
	["SmokeShell",1,"vest"] call FNC_AddItem; \
	["SmokeShellGreen",1,"vest"] call FNC_AddItem; \
	["HandGrenade",2,"vest"] call FNC_AddItem; \
	["ACE_fieldDressing", 6, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 6, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 6, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 6, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "vest"] call FNC_AddItem;

#define BasicNOC \
	["ACRE_PRC148",1, "vest"] call FNC_AddItem; \
	["ItemGPS"] call FNC_AddItem; \
	["Laserdesignator"] call FNC_AddItem; \
	["Chemlight_green",3,"backpack"] call FNC_AddItem; \
	["Chemlight_red",3,"backpack"] call FNC_AddItem; \
	["Chemlight_yellow",3,"backpack"] call FNC_AddItem; \
	["SmokeShellBlue",2,"backpack"] call FNC_AddItem; \
	["SmokeShellGreen",2,"backpack"] call FNC_AddItem; \
	["SmokeShellRed",2,"backpack"] call FNC_AddItem; \
	["SmokeShell",2,"backpack"] call FNC_AddItem;
	// ["Binocular"] call FNC_AddItem;

#define NightGear \
	["NVGoggles_tna_F",1,"backpack"] call FNC_AddItem; \
	["Chemlight_blue",1,"backpack"] call FNC_AddItem; \
	["Chemlight_green",1,"backpack"] call FNC_AddItem; \
	["Chemlight_red",1,"backpack"] call FNC_AddItem; \
	["Chemlight_yellow",1,"backpack"] call FNC_AddItem; \
	["B_IR_Grenade",1,"backpack"] call FNC_AddItem;


#define MedicBag \
	HeavyBackpack; \
	["ACE_fieldDressing", 15, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 20, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 20, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 15, "backpack"] call FNC_AddItem; \
	["ACE_atropine", 12, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 8, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 8, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 5, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 2, "backpack"] call FNC_AddItem; \
	["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem; \
	["ACE_personalAidKit", 1, "backpack"] call FNC_AddItem; \
	["SmokeShellRed",2,"backpack"] call FNC_AddItem; \
	["SmokeShell",2,"backpack"] call FNC_AddItem; \
	["ItemGPS"] call FNC_AddItem;

#define RADIO117 \
	LightBackpack; \
	["ACRE_PRC117F", 1, "backpack"] call FNC_AddItem;

#define DefaultWeapon \
	["30Rnd_556x45_Stanag",7,"vest"] call FNC_AddItem; \
	["30Rnd_556x45_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem; \
	["30Rnd_556x45_Stanag",1,"vest"] call FNC_AddItem; \
	["arifle_SPAR_01_blk_F"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "optic_Hamr"; \
	["16Rnd_9x21_Mag"] call FNC_AddItem; \
	["hgun_P07_khk_F"] call FNC_AddItem;


#define DefaultWeapon203 \
	["30Rnd_556x45_Stanag",7,"vest"] call FNC_AddItem; \
	["30Rnd_556x45_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem; \
	["1Rnd_HE_Grenade_shell",8,"backpack"] call FNC_AddItem; \
	["1Rnd_Smoke_Grenade_shell",2,"backpack"] call FNC_AddItem; \
	["1Rnd_SmokeGreen_Grenade_shell",1,"backpack"] call FNC_AddItem; \
	["arifle_SPAR_01_GL_blk_F"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "optic_Hamr"; \
	["16Rnd_9x21_Mag"] call FNC_AddItem; \
	["hgun_P07_khk_F"] call FNC_AddItem;

#define DefaultWeaponAR \
	["200Rnd_556x45_Box_F",1,"vest"] call FNC_AddItem; \
	["200Rnd_556x45_Box_F",2,"backpack"] call FNC_AddItem; \
	["200Rnd_556x45_Box_Tracer_F",1,"backpack"] call FNC_AddItem; \
	["LMG_03_F"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "optic_Hamr"; \
	["hgun_P07_khk_Snds_F"] call FNC_AddItem;

//----------------------- PLATOON HEADQUARTERS -----------------------//

case (package + "PL"): {
	LightBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	BasicNOC;
	DefaultWeapon;
};
case (package + "RTO"): {
	RADIO117;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;
	DefaultWeapon;
};
case (package + "PSG"): {
	LightBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	BasicNOC;
	DefaultWeapon;
};
case (package + "MEDIC"): {
	MedicBag;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeapon;
};
case (package + "CLS"): {
	MedicBag;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeapon;
};



//----------------------- PLATOON RIFLESQUADS -----------------------//

case (package + "SL"): {
	LightBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	BasicNOC;
	DefaultWeapon;
};
case (package + "TL"): {
	HeavyBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	BasicNOC;
	DefaultWeapon203;
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
};
case (package + "HTL"): {
	HeavyBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	BasicNOC;
	DefaultWeapon203;
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
};
case (package + "AR"): {
	LightBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeaponAR;
};
case (package + "GR"): {
	LightBackpack;
	UNIFORM;
	HeavyVest;
	BasicItems;
	Basic;
	DefaultWeapon203;
};
case (package + "M27"): {
	LightBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeaponAR;
};
case (package + "RM"): {
	HeavyBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeapon;
	["200Rnd_556x45_Box_F",2,"backpack"] call FNC_AddItem;
	["200Rnd_556x45_Box_Tracer_F",1,"backpack"] call FNC_AddItem;
	["30Rnd_556x45_Stanag",7,"backpack"] call FNC_AddItem;
	["30Rnd_556x45_Stanag_Tracer_Red",2,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing", 6, "backpack"] call FNC_AddItem;
	["ACE_elasticBandage", 6, "backpack"] call FNC_AddItem;
	["ACE_packingBandage", 6, "backpack"] call FNC_AddItem;
	["ACE_quikclot", 10, "backpack"] call FNC_AddItem;
	["ACE_morphine", 3, "backpack"] call FNC_AddItem;
	["ACE_epinephrine", 3, "backpack"] call FNC_AddItem;
	["ACE_tourniquet", 3, "backpack"] call FNC_AddItem;
	["SmokeShellRed",3,"backpack"] call FNC_AddItem;
	["SmokeShell",3,"backpack"] call FNC_AddItem;
};
case (package + "RMAT"): {
	LightBackpack;
	UNIFORM;
	HeavyVest;
	BasicItems;
	Basic;
	["30Rnd_556x45_Stanag",7,"vest"] call FNC_AddItem;
	["30Rnd_556x45_Stanag",3,"backpack"] call FNC_AddItem;
	["30Rnd_556x45_Stanag_Tracer_Red",1,"vest"] call FNC_AddItem;
	["arifle_SPAR_01_blk_F"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "optic_Hamr";
	["16Rnd_9x21_Mag"] call FNC_AddItem;
	["hgun_P07_khk_F"] call FNC_AddItem;
	["launch_NLAW_F"] call FNC_AddItem;
};
case (package + "DMR"): {
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	["20Rnd_762x51_Mag",6,"vest"] call FNC_AddItem;
	["arifle_SPAR_03_blk_F"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "optic_Hamr";
	_unit addPrimaryWeaponItem "bipod_01_F_blk";
	["16Rnd_9x21_Mag"] call FNC_AddItem;
	["hgun_P07_khk_F"] call FNC_AddItem;
};	


//----------------------- PLATOON WEAPONS SQUAD -----------------------//

case (package + "MG"): {
	LightBackpack;
	UNIFORM;
	HeavyVest;
	BasicItems;
	Basic;
	["150Rnd_762x54_Box",1] call FNC_AddItem;
	["LMG_Zafir_F"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "optic_Hamr";
	["150Rnd_762x54_Box",1,"backpack"] call FNC_AddItem;
	["150Rnd_762x54_Box_Tracer",1,"backpack"] call FNC_AddItem;
};
case (package + "MGA"): {
	HeavyBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeapon;
	["150Rnd_762x54_Box",3,"backpack"] call FNC_AddItem;
	["150Rnd_762x54_Box_Tracer",1,"backpack"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};
case (package + "MGAB"): {
	HeavyBackpack;
	UNIFORM;
	LightVest;
	BasicItems;
	Basic;
	DefaultWeapon;
	["150Rnd_762x54_Box",3,"backpack"] call FNC_AddItem;
	["150Rnd_762x54_Box_Tracer",1,"backpack"] call FNC_AddItem;
};

case (package + "HAT"): {
	HeavyBackpack;
	UNIFORM;
	HeavyVest;
	BasicItems;
	Basic;
	DefaultWeapon;
	["Titan_AT",1,"backpack"] call FNC_AddItem;
	["Titan_AP",1,"backpack"] call FNC_AddItem;
	["launch_B_Titan_short_tna_F"] call FNC_AddItem;
	["Titan_AT",1,"backpack"] call FNC_AddItem;
};
	case (package + "HATA"): {
	HeavyBackpack;
	UNIFORM;
	HeavyVest;
	BasicItems;
	Basic;
	DefaultWeapon;
	["Titan_AT",1,"backpack"] call FNC_AddItem;
	["Titan_AP",1,"backpack"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};
