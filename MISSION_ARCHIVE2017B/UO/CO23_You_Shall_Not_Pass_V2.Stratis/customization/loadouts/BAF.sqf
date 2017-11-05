#define package "BAF_"


case (package + "Sniper"): {

["UK3CB_BAF_U_CombatUniform_DPMW_Ghillie_RM"] call FNC_AddItem;
["UK3CB_BAF_V_Osprey_DPMW5"] call FNC_AddItem;

["H_Shemag_olive_hs"] call FNC_AddItem;
["G_Aviator"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;
["ItemGPS"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;

["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_EntrenchingTool",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_17Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["UK3CB_BAF_338_5Rnd_Tracer",3,"vest"] call FNC_AddItem;
["UK3CB_BAF_338_5Rnd",3,"vest"] call FNC_AddItem;
["rhs_mag_an_m8hc",3,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;

["UK3CB_BAF_L115A3_Ghillie"] call FNC_AddItem;
_unit addPrimaryWeaponItem "UK3CB_BAF_Silencer_L115A3";
_unit addPrimaryWeaponItem "RKSL_optic_PMII_525_wdl";

["rhsusf_weap_glock17g4"] call FNC_AddItem;
_unit addHandgunItem "rhsusf_acc_omega9k";

};

case (package + "Spotter"): { 

["UK3CB_BAF_U_CombatUniform_DPMW_Ghillie_RM"] call FNC_AddItem;
["UK3CB_BAF_V_Osprey_DPMW5"] call FNC_AddItem;
["UK3CB_BAF_B_Carryall_OLI"] call FNC_AddItem;

["H_Shemag_olive_hs"] call FNC_AddItem;
["G_Aviator"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;
["ItemGPS"] call FNC_AddItem;
["Rangefinder"] call FNC_AddItem;


["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_EntrenchingTool",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_17Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_an_m8hc",3,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;
["UK3CB_BAF_556_30Rnd",3,"vest"] call FNC_AddItem;
["UK3CB_BAF_556_30Rnd_T",3,"vest"] call FNC_AddItem;
["ACE_SpottingScope",1,"backpack"] call FNC_AddItem;
["ACE_MapTools",1,"backpack"] call FNC_AddItem;
["ACE_RangeTable_82mm",1,"backpack"] call FNC_AddItem;
["ACE_RangeCard",1,"backpack"] call FNC_AddItem;

["UK3CB_BAF_L119A1"] call FNC_AddItem;
_unit addPrimaryWeaponItem "UK3CB_BAF_Silencer_L85";
_unit addPrimaryWeaponItem "UK3CB_BAF_TA31F";

["rhsusf_weap_glock17g4"] call FNC_AddItem;
_unit addHandgunItem "rhsusf_acc_omega9k";

};

case (package + "MG"): { 

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_200rnd_556x45_M_SAW",2,"backpack"] call FNC_AddItem;

["rhs_weap_m249_pip_L_para"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "Gren"): {

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["rhs_mag_m714_White",2,"backpack"] call FNC_AddItem;
["rhs_mag_m715_Green",1,"backpack"] call FNC_AddItem;
["1Rnd_HE_Grenade_shell",11,"backpack"] call FNC_AddItem;
["SmokeShellRed",1,"backpack"] call FNC_AddItem;
["SmokeShellGreen",1,"backpack"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"backpack"] call FNC_AddItem;

["rhs_weap_m4_m203S"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "rifle"): {

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",5,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",3,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2_tan";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "CO"): { 

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;
["G_Bandanna_aviator"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["SmokeShellBlue",2,"backpack"] call FNC_AddItem;
["SmokeShellGreen",2,"backpack"] call FNC_AddItem;
["SmokeShellRed",2,"backpack"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "SL"): {

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;
["G_Bandanna_aviator"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;


["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["SmokeShellBlue",2,"backpack"] call FNC_AddItem;
["SmokeShellGreen",2,"backpack"] call FNC_AddItem;
["SmokeShellRed",2,"backpack"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "AT"): { 

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_m136_hedp_mag",1,"uniform"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"backpack"] call FNC_AddItem;
["SmokeShellGreen",1,"backpack"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";

["rhs_weap_M136_hedp"] call FNC_AddItem;

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "Medic"): {

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_Carryall_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",1,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",4,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",1,"vest"] call FNC_AddItem;
["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
["ACE_salineIV_500",3,"backpack"] call FNC_AddItem;
["ACE_plasmaIV_500",2,"backpack"] call FNC_AddItem;
["ACE_personalAidKit",4,"backpack"] call FNC_AddItem;
["ACE_morphine",5,"backpack"] call FNC_AddItem;
["ACE_epinephrine",5,"backpack"] call FNC_AddItem;
["ACE_quikclot",10,"backpack"] call FNC_AddItem;
["ACE_elasticBandage",10,"backpack"] call FNC_AddItem;
["ACE_fieldDressing",10,"backpack"] call FNC_AddItem;
["ACE_tourniquet",5,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";

["rhsusf_weap_m9"] call FNC_AddItem;


};

case (package + "MGass"): {

["U_B_CombatUniform_mcam"] call FNC_AddItem;
["V_PlateCarrier1_rgr"] call FNC_AddItem;
["B_AssaultPack_mcamo"] call FNC_AddItem;

["H_HelmetSpecB"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;

["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",2,"uniform"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",5,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green",2,"vest"] call FNC_AddItem;
["rhs_200rnd_556x45_M_SAW",2,"backpack"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",2,"backpack"] call FNC_AddItem;

["rhs_weap_m4_mstock_grip2"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2";

["rhsusf_weap_m9"] call FNC_AddItem;


};