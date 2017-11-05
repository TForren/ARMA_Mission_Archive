#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;
["ItemMap"] call FNC_AddItem;

switch (_type) do {

	case "SL": {
		//Clothes
		["rhs_uniform_m88_patchless"] call FNC_AddItem;
		["V_PlateCarrier2_blk"] call FNC_AddItem;
		["UK3CB_BAF_H_Headset_PRR"] call FNC_AddItem;
		["G_Bandanna_blk"] call FNC_AddItem;
		
		
		//Ammo
		["11Rnd_45ACP_Mag", 2, "Uniform"] call FNC_AddItem;
		
		//Items
		["ACRE_PRC343", 1] call FNC_AddItem;
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;
		["ItemMap"] call FNC_AddItem;
		["ACE_Flashlight_MX991"] call FNC_AddItem;
		

		["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem;

		["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
		["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
		["ACE_elasticBandage", 2] call FNC_AddItem;
		["ACE_quikclot", 1] call FNC_AddItem;
		["ACE_tourniquet", 1] call FNC_AddItem;
		["ACE_morphine", 1] call FNC_AddItem;
		["ACE_epinephrine", 1] call FNC_AddItem;
		["ACE_MapTools", 1] call FNC_AddItem;

		
		//Weapons
		["hgun_Pistol_heavy_01_F"] call FNC_AddItem;
		
	};
	
	case "RFL": {
		//Clothes
		["rhs_uniform_m88_patchless"] call FNC_AddItem;
		["V_PlateCarrier2_blk"] call FNC_AddItem;
		["rhsusf_protech_helmet"] call FNC_AddItem;
		["G_Balaclava_TI_blk_F"] call FNC_AddItem;
		
		
		//Ammo
		["11Rnd_45ACP_Mag", 2, "Uniform"] call FNC_AddItem;
		["25Rnd_556x45_famas", 12, "vest"] call FNC_AddItem;
		["SmokeShell", 2, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;
		["rhs_mag_an_m14_th3", 2, "vest"] call FNC_AddItem;
		
		//Items
		["ACRE_PRC343", 1] call FNC_AddItem;
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;
		["ItemMap"] call FNC_AddItem;

		["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem;

		["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
		["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
		["ACE_elasticBandage", 2] call FNC_AddItem;
		["ACE_quikclot", 1] call FNC_AddItem;
		["ACE_tourniquet", 1] call FNC_AddItem;
		["ACE_morphine", 1] call FNC_AddItem;
		["ACE_epinephrine", 1] call FNC_AddItem;
		["ACE_MapTools", 1] call FNC_AddItem;

		
		//Weapons
		["bg21_famas1"] call FNC_AddItem;
		["hgun_Pistol_heavy_01_F"] call FNC_AddItem;
		
	};
	case "RFL2": {
		//Clothes
		["rhs_uniform_m88_patchless"] call FNC_AddItem;
		["V_PlateCarrier2_blk"] call FNC_AddItem;
		["B_AssaultPack_blk"] call FNC_AddItem;
		["rhsusf_protech_helmet"] call FNC_AddItem;
		["G_Balaclava_TI_blk_F"] call FNC_AddItem;
		
		
		//Ammo
		["11Rnd_45ACP_Mag", 2, "Uniform"] call FNC_AddItem;
		["UK3CB_BAF_30Rnd_9mm", 12] call FNC_AddItem;
		["25Rnd_556x45_famas", 12] call FNC_AddItem;
		["SmokeShell", 2] call FNC_AddItem;
		["HandGrenade", 2] call FNC_AddItem;
		["rhs_mag_an_m14_th3", 2] call FNC_AddItem;
		
		//Items
		["ACRE_PRC343", 1] call FNC_AddItem;
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;
		["ItemMap"] call FNC_AddItem;

		["ACE_EarPlugs", 1] call FNC_AddItem;

		["ACE_fieldDressing", 2] call FNC_AddItem;
		["ACE_packingBandage", 2] call FNC_AddItem;
		["ACE_elasticBandage", 2] call FNC_AddItem;
		["ACE_quikclot", 1] call FNC_AddItem;
		["ACE_tourniquet", 1] call FNC_AddItem;
		["ACE_morphine", 1] call FNC_AddItem;
		["ACE_epinephrine", 1] call FNC_AddItem;
		["ACE_MapTools", 1] call FNC_AddItem;

		
		//Weapons
		["UK3CB_BAF_L91A1"] call FNC_AddItem;
		["tb_acc_compM4"] call FNC_AddItem;
		["hgun_Pistol_heavy_01_F"] call FNC_AddItem;
		
	};
	
		case "DMR": {
		//Clothes
		["rhs_uniform_m88_patchless"] call FNC_AddItem;
		["V_PlateCarrier2_blk"] call FNC_AddItem;
		["rhsusf_protech_helmet"] call FNC_AddItem;
		["G_Balaclava_TI_blk_F"] call FNC_AddItem;
		
		
		//Ammo
		["11Rnd_45ACP_Mag", 2, "Uniform"] call FNC_AddItem;
		["25Rnd_556x45_famas", 12, "vest"] call FNC_AddItem;
		["SmokeShell", 2, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;
		["rhs_mag_an_m14_th3", 2, "vest"] call FNC_AddItem;
		
		//Items
		["ACRE_PRC343", 1] call FNC_AddItem;
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;
		["ItemMap"] call FNC_AddItem;

		["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem;

		["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
		["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
		["ACE_elasticBandage", 2] call FNC_AddItem;
		["ACE_quikclot", 1] call FNC_AddItem;
		["ACE_tourniquet", 1] call FNC_AddItem;
		["ACE_morphine", 1] call FNC_AddItem;
		["ACE_epinephrine", 1] call FNC_AddItem;
		["ACE_MapTools", 1] call FNC_AddItem;

		
		//Weapons
		["bg21_famas2"] call FNC_AddItem;
		["rhsusf_acc_ACOG"] call FNC_AddItem;
		["hgun_Pistol_heavy_01_F"] call FNC_AddItem;
		
	};
	
			case "MEDIC": {
		//Clothes
		["rhs_uniform_m88_patchless"] call FNC_AddItem;
		["V_PlateCarrier2_blk"] call FNC_AddItem;
		["B_AssaultPack_blk"] call FNC_AddItem;
		["rhsusf_protech_helmet"] call FNC_AddItem;
		["G_Balaclava_TI_blk_F"] call FNC_AddItem;
		
		
		//Ammo
		["11Rnd_45ACP_Mag", 2, "Uniform"] call FNC_AddItem;
		["25Rnd_556x45_famas", 12, "vest"] call FNC_AddItem;
		["SmokeShell", 2, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;
		["rhs_mag_an_m14_th3", 2, "vest"] call FNC_AddItem;
		
		//Items
		["ACRE_PRC343", 1] call FNC_AddItem;
		["ItemMap"] call FNC_AddItem;

		["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem;

		["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
		["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
		["ACE_elasticBandage", 2] call FNC_AddItem;
		["ACE_quikclot", 1] call FNC_AddItem;
		["ACE_tourniquet", 1] call FNC_AddItem;
		["ACE_morphine", 1] call FNC_AddItem;
		["ACE_epinephrine", 1] call FNC_AddItem;
		["ACE_MapTools", 1] call FNC_AddItem;
		
		//MEDICAL
		["ACE_fieldDressing", 10, "backpack"] call FNC_AddItem;
			["ACE_elasticBandage", 15, "backpack"] call FNC_AddItem;
			["ACE_packingBandage", 15, "backpack"] call FNC_AddItem;
			["ACE_quikclot", 10, "backpack"] call FNC_AddItem;
			["ACE_atropine", 4, "backpack"] call FNC_AddItem;
			["ACE_morphine", 8, "backpack"] call FNC_AddItem;
			["ACE_epinephrine", 4, "backpack"] call FNC_AddItem;
			["ACE_tourniquet", 3, "vest"] call FNC_AddItem;
			["ACE_salineIV_500", 4, "backpack"] call FNC_AddItem;
			["ACE_surgicalKit", 2, "backpack"] call FNC_AddItem;
			["ACE_personalAidKit", 1] call FNC_AddItem;

		
		//Weapons
		["bg21_famas1"] call FNC_AddItem;
		["hgun_Pistol_heavy_01_F"] call FNC_AddItem;
		
	};
	
	case "CIVI": {
	
		["U_B_GEN_Commander_F"] call FNC_AddItem;
		["V_TacVest_gen_F"] call FNC_AddItem;
		
	};
	case "OFFICER": {
	
		["rhsgref_uniform_tigerstripe"] call FNC_AddItem;
		["H_MilCap_tna_F"] call FNC_AddItem;
		["rhsgref_otv_khaki"] call FNC_AddItem;
		["30Rnd_545x39_Mag_F", 10] call FNC_AddItem;
		["arifle_AKS_F"] call FNC_AddItem;
		
	};
	"OFFICER",
		case "Rifle": {
 [ [ ["U_BG_Guerilla2_1"], ["hgun_Pistol_01_F"], ["10Rnd_9x21_Mag", 6] ],
 [ ["U_BG_Guerilla2_1"], ["hgun_Pistol_heavy_02_F"], ["H_Bandanna_khk"], ["NVGoggles_OPFOR"], ["6Rnd_45ACP_Cylinder", 6] ],
 [ ["U_I_C_Soldier_Para_5_F"], ["V_HarnessO_brn"], ["rhs_weap_m38"], ["rhsgref_5Rnd_762x54_m38", 8] ],
 [ ["U_I_C_Soldier_Bandit_3_F"], ["V_HarnessO_brn"], ["SMG_02_F"], ["H_Bandanna_khk"], ["NVGoggles_OPFOR"], ["30Rnd_9x21_Mag_SMG_02", 8] ],
 [ ["U_I_C_Soldier_Bandit_5_F"], ["V_HarnessO_brn"], ["30Rnd_545x39_Mag_F", 6], ["arifle_AKS_F"] ],
 [ ["U_I_C_Soldier_Bandit_5_F"], ["V_HarnessO_brn"], ["SMG_05_F"], ["30Rnd_9x21_Mag_SMG_02", 6] ],
 [ ["U_I_C_Soldier_Para_5_F"], ["rhs_weap_M590_8RD"], ["H_Bandanna_khk"], ["NVGoggles_OPFOR"], ["rhsusf_8Rnd_00Buck", 4] ],
 [ ["U_I_C_Soldier_Para_1_F"], ["V_HarnessO_brn"], ["H_Bandanna_khk"], ["NVGoggles_OPFOR"], ["rhs_weap_m38"], ["rhsgref_5Rnd_762x54_m38", 8] ] ]  call FNC_AddItemRandom;
	};

};
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;