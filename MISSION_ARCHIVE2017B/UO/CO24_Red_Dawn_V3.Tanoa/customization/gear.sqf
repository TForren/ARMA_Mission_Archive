#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;
	
["ACRE_PRC343"] call FNC_AddItem;
switch (_type) do {

	case "18A": {
		
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;
		["rhs_m4_m320"] call FNC_AddItem;
		["acc_pointer_IR"] call FNC_AddItem;
		["tb_acc_compM4"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 3, "backpack"] call FNC_AddItem;

		["Rangefinder"] call FNC_AddItem;
		["rhs_mag_M441_HE", 6, "backpack"] call FNC_AddItem;

		["ItemGPS"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 6, "backpack"] call FNC_AddItem;
		["rhs_mag_M433_HEDP", 6, "backpack"] call FNC_AddItem;
		["rhs_mag_m714_White", 3, "backpack"] call FNC_AddItem;
		["SmokeShellRed", 2, "backpack"] call FNC_AddItem;
		["SmokeShellYellow", 2, "backpack"] call FNC_AddItem;
		["SmokeShell", 2, "Backpack"] call FNC_AddItem;	
		["HandGrenade", 2, "uniform"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;			

	};
	
		case "180A": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;	
		["rhs_weap_m16a4_bipod"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		["tb_acc_ta31"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 2, "backpack"] call FNC_AddItem;
		["ItemGPS"] call FNC_AddItem;
		["Rangefinder"] call FNC_AddItem;
		
		["HandGrenade", 2, "backpack"] call FNC_AddItem;		
		["SmokeShellRed", 2, "backpack"] call FNC_AddItem;
		["SmokeShellYellow", 2, "Backpack"] call FNC_AddItem;
		["SmokeShell", 2, "Backpack"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 6, "backpack"] call FNC_AddItem;
		["rhs_mag_m715_Green", 6, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;			
		
	};
		case "18B": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["rhs_weap_m249_pip_L_para"] call FNC_AddItem;
		["acc_pointer_IR"] call FNC_AddItem;
		["tb_acc_ta31"] call FNC_AddItem;	
		
		["rhs_200rnd_556x45_M_SAW", 3, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;					

	};
			case "18Z": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["rhs_m4_m320"] call FNC_AddItem;
		["acc_pointer_IR"] call FNC_AddItem;
		["tb_acc_ta31"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 2, "uniform"] call FNC_AddItem;
		["rhs_mag_M433_HEDP", 6, "backpack"] call FNC_AddItem;
		["rhs_mag_M441_HE", 4, "backpack"] call FNC_AddItem;
		
		["HandGrenade", 1, "uniform"] call FNC_AddItem;		
		["SmokeShell", 2, "Backpack"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 6, "backpack"] call FNC_AddItem;
		["rhs_200rnd_556x45_M_SAW", 1, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;		
				
		

	};
			case "18F": {
		
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["rhs_weap_m16a4_bipod"] call FNC_AddItem;
		["tb_acc_ta31"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 2, "uniform"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 2, "backpack"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10, "backpack"] call FNC_AddItem;
		["rhs_200rnd_556x45_M_SAW", 1, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;				

	};
				case "18C": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["rhs_weap_M136"] call FNC_AddItem;
		["rhs_weap_m4"] call FNC_AddItem;
		["acc_pointer_IR"] call FNC_AddItem;
		["rhsusf_acc_compm4"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 3, "Backpack"] call FNC_AddItem;
		["HandGrenade", 2, "uniform"] call FNC_AddItem;		
		["DemoCharge_Remote_Mag", 1, "backpack"] call FNC_AddItem;
		["SatchelCharge_Remote_Mag", 1, "backpack"] call FNC_AddItem;
		["ClaymoreDirectionalMine_Remote_Mag", 1, "Backpack"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 3, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;		
	

	};
			case "18D": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["rhs_weap_m4"] call FNC_AddItem;
		["rhsusf_acc_compm4"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 3, "uniform"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 3, "uniform"] call FNC_AddItem;
		["HandGrenade", 2, "Uniform"] call FNC_AddItem;		
		["SmokeShell", 2, "Uniform"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;		
		

		["ACE_atropine", 3, "backpack"] call FNC_AddItem;
		["ACE_epinephrine", 4, "backpack"] call FNC_AddItem;
		["ACE_morphine", 4, "backpack"] call FNC_AddItem;
		["ACE_fieldDressing", 10, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage", 5, "backpack"] call FNC_AddItem;
		["ACE_packingBandage", 5, "backpack"] call FNC_AddItem;
		["ACE_quikclot", 5, "backpack"] call FNC_AddItem;
		["ACE_plasmaIV_250", 2, "backpack"] call FNC_AddItem;
		["ACE_plasmaIV_500", 1, "backpack"] call FNC_AddItem;
		["ACE_plasmaIV_500", 1, "backpack"] call FNC_AddItem;

	};
			case "18E": {
		_unit addBackpack "B_AssaultPack_blk";
		["U_B_Wetsuit"] call FNC_AddItem;
		["V_RebreatherB"] call FNC_AddItem;
		["G_B_Diving"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;
		["rhs_weap_m4"] call FNC_AddItem;
		["acc_pointer_IR"] call FNC_AddItem;
		["tb_acc_ta31"] call FNC_AddItem;
		["rhsusf_acc_rotex5_grey"] call FNC_AddItem;
		
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 6, "backpack"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 3, "backpack"] call FNC_AddItem;
		["HandGrenade", 2, "backpack"] call FNC_AddItem;		
		["SmokeShell", 2, "backpack"] call FNC_AddItem;
		["NVGoggles", 1, "uniform"] call FNC_AddItem;		

	};

		case "Rifle1": {
		["U_OG_Guerilla2_3"] call FNC_AddItem;
		["V_Chestrig_rgr"] call FNC_AddItem;
		["rhs_weap_ak74m"] call FNC_AddItem;
		
		["rhs_30Rnd_545x39_AK", 3, "vest"] call FNC_AddItem;
		["rhs_30Rnd_545x39_AK_green", 3, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;		
		["SmokeShell", 2, "vest"] call FNC_AddItem;
	
	};
	
		case "Rifle2": {
		["U_OG_Guerilla2_3"] call FNC_AddItem;
		["V_Chestrig_rgr"] call FNC_AddItem;
		["arifle_TRG20_F"] call FNC_AddItem;
		
		["30Rnd_556x45_Stanag", 6, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;		
		["SmokeShell", 2, "vest"] call FNC_AddItem;
	};
	
		case "Rifle3": {
		["U_BG_Guerilla1_1"] call FNC_AddItem;
		["H_Booniehat_dirty"] call FNC_AddItem;
		["V_Chestrig_rgr"] call FNC_AddItem;
		["arifle_TRG20_F"] call FNC_AddItem;
		
		["30Rnd_556x45_Stanag", 6, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;		
		["SmokeShell", 2, "vest"] call FNC_AddItem;
	};
	
			case "Rifle4": {
		["U_C_Poor_1"] call FNC_AddItem;
		["V_Chestrig_rgr"] call FNC_AddItem;
		["tb_lmg_mk24"] call FNC_AddItem;
		
		["150Rnd_762x51_Box", 2, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;		
		["SmokeShell", 2, "vest"] call FNC_AddItem;
	};
		case "Rifle5": {
		["U_BG_Guerilla2_1"] call FNC_AddItem;
		["H_Cap_oli"] call FNC_AddItem;
		["V_Chestrig_rgr"] call FNC_AddItem;
		["hgun_PDW2000_F"] call FNC_AddItem;
		
		["30Rnd_9x21_Mag", 6, "vest"] call FNC_AddItem;
		["HandGrenade", 2, "vest"] call FNC_AddItem;		
		["SmokeShell", 2, "vest"] call FNC_AddItem;
	};

};
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
["ACE_MapTools", 1, "uniform"] call FNC_AddItem;
