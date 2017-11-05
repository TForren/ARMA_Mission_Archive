#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SLPLPS", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;

switch (_type) do {

case "SLPLPS": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_squadleader"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd_headset"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
["ACE_microDAGR",1,"vest"] call FNC_AddItem;
["ACE_elasticBandage",3,"vest"] call FNC_AddItem;
["ACE_quikclot",3,"vest"] call FNC_AddItem;
["ACE_packingBandage",3,"vest"] call FNC_AddItem;
["ACE_tourniquet",1,"vest"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",9,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;

["rhs_weap_m4_carryhandle_grip3"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
};



case "MED": {


["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_rifleman"] call FNC_AddItem;
["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",9,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["ACE_surgicalKit",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["ACE_tourniquet",10,"backpack"] call FNC_AddItem;
["ACE_personalAidKit",2,"vest"] call FNC_AddItem;
["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
["ACE_morphine",20,"backpack"] call FNC_AddItem;
["ACE_epinephrine",20,"backpack"] call FNC_AddItem;
["ACE_bloodIV",2,"backpack"] call FNC_AddItem;
["ACE_bloodIV_250",1,"backpack"] call FNC_AddItem;
["ACE_bloodIV_500",1,"backpack"] call FNC_AddItem;
["ACE_quikclot",14,"backpack"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",14,"backpack"] call FNC_AddItem;
["ACE_fieldDressing",14,"backpack"] call FNC_AddItem;

["rhs_weap_m4_carryhandle_grip3"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_grip3";

};



case "2IC": {


["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_teamleader"] call FNC_AddItem;
["B_AssaultPack_cbr"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd_ess"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["ACE_microDAGR",1,"backpack"] call FNC_AddItem;
["SmokeShellYellow",1,"backpack"] call FNC_AddItem;
["SmokeShellRed",1,"backpack"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",12,"vest"] call FNC_AddItem;
["ACE_fieldDressing",3,"backpack"] call FNC_AddItem;
["ACE_elasticBandage",3,"backpack"] call FNC_AddItem;
["ACE_quikclot",3,"backpack"] call FNC_AddItem;
["ACE_packingBandage",3,"backpack"] call FNC_AddItem;
["ACE_tourniquet",1,"backpack"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["rhs_mag_M441_HE",5,"vest"] call FNC_AddItem;
["rhs_mag_M585_white",2,"vest"] call FNC_AddItem;

["rhs_weap_m4_m203"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

};


case "AR": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_iar"] call FNC_AddItem;
["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd_ess"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"backpack"] call FNC_AddItem;
["ACE_morphine",1,"backpack"] call FNC_AddItem;
["rhs_200rnd_556x45_M_SAW",2,"vest"] call FNC_AddItem;
["rhs_200rnd_556x45_T_SAW",2,"backpack"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
["ACE_quikclot",3,"backpack"] call FNC_AddItem;
["ACE_elasticBandage",3,"backpack"] call FNC_AddItem;
["ACE_fieldDressing",3,"backpack"] call FNC_AddItem;
["ACE_tourniquet",2,"backpack"] call FNC_AddItem;

["rhs_weap_m249_pip_S_vfg"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

};

case "M16": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_rifleman"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",2,"vest"] call FNC_AddItem;
["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
["ACE_elasticBandage",3,"vest"] call FNC_AddItem;
["ACE_quikclot",3,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["ACE_packingBandage",4,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",9,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;

["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

};

case "M4": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_rifleman"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
["ACE_elasticBandage",3,"vest"] call FNC_AddItem;
["ACE_quikclot",3,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["ACE_packingBandage",4,"vest"] call FNC_AddItem;
["ACE_tourniquet",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",9,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;

["rhs_weap_m4_carryhandle_grip3"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_grip3";

};


case "TL": {


["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_teamleader"] call FNC_AddItem;
["B_AssaultPack_cbr"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd_ess"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",15,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["rhs_mag_M441_HE",3,"vest"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["ACE_fieldDressing",3,"backpack"] call FNC_AddItem;
["ACE_elasticBandage",3,"backpack"] call FNC_AddItem;
["ACE_quikclot",3,"backpack"] call FNC_AddItem;
["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
["ACE_tourniquet",2,"backpack"] call FNC_AddItem;
["rhs_mag_M585_white",5,"backpack"] call FNC_AddItem;
["rhs_mag_M441_HE",5,"backpack"] call FNC_AddItem;

["rhs_weap_m4_m203"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

};

case "AT": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_rifleman"] call FNC_AddItem;

["rhsusf_lwh_helmet_marpatd_ess"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
["ACE_elasticBandage",3,"vest"] call FNC_AddItem;
["ACE_quikclot",3,"vest"] call FNC_AddItem;
["ACE_packingBandage",4,"vest"] call FNC_AddItem;
["ACE_tourniquet",2,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",9,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;

["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

["rhs_weap_M136"] call FNC_AddItem;
};


case "MM": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_marksman"] call FNC_AddItem;
["B_AssaultPack_cbr"] call FNC_AddItem;

["rhsusf_mich_helmet_marpatd"] call FNC_AddItem;
["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["Binocular"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
["ACE_elasticBandage",3,"vest"] call FNC_AddItem;
["ACE_quikclot",3,"vest"] call FNC_AddItem;
["ACE_packingBandage",2,"vest"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["rhsusf_20Rnd_762x51_m118_special_Mag",1,"vest"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_FMJ",1,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["rhsusf_20Rnd_762x51_m118_special_Mag",5,"backpack"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",9,"backpack"] call FNC_AddItem;

["rhs_weap_sr25"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_premier";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

["rhsusf_weap_m9"] call FNC_AddItem;

};

case "P/CP": {

["rhs_uniform_FROG01_d"] call FNC_AddItem;
["rhsusf_spc_crewman"] call FNC_AddItem;

["rhsusf_hgu56p"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["rhsusf_ANPVS_15"] call FNC_AddItem;

["rhsusf_acc_ACOG3",1,"vest"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"vest"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_Mk318_Stanag",2,"vest"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_FMJ",2,"vest"] call FNC_AddItem;
["Chemlight_green",1,"vest"] call FNC_AddItem;
["SmokeShellRed",1,"vest"] call FNC_AddItem;
["SmokeShellYellow",1,"vest"] call FNC_AddItem;
["rhs_mag_m67",2,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;

["rhs_weap_m4_carryhandle"] call FNC_AddItem;

["rhsusf_weap_m9"] call FNC_AddItem;

};


};