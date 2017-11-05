#include "core\gearCore.sqf" //DO NOT REMOVE

_unit call FNC_RemoveAllGear;

["ItemMap"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;

["U_O_CombatUniform_ocamo"] call FNC_AddItem;
["V_TacVest_brn"] call FNC_AddItem;

["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
["ACE_EarPlugs", 1, "vest"] call FNC_AddItem;

["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
["ACE_packingBandage", 1, "uniform"] call FNC_AddItem;
["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;

["HandGrenade", 2, "uniform"] call FNC_AddItem;

switch (_type) do {

	case "SL": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_MilCap_ocamo"] call FNC_AddItem;

		["ACRE_PRC152", 1, "vest"] call FNC_AddItem;
		["Rangefinder"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_ARCO_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 2] call FNC_AddItem;
		["SmokeShellRed", 2] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 2, "backpack"] call FNC_AddItem;

	};

	case "RM": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_ARCO_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 1] call FNC_AddItem;
		["SmokeShellRed", 1] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 2, "backpack"] call FNC_AddItem;
		["30Rnd_65x39_caseless_green", 4, "backpack"] call FNC_AddItem;

	};

	case "GR": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_GL_F"] call FNC_AddItem;
		["optic_Hamr"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 1] call FNC_AddItem;
		["SmokeShellRed", 1] call FNC_AddItem;

		["1Rnd_HE_Grenade_shell", 12, "backpack"] call FNC_AddItem;
		["1Rnd_SmokeRed_Grenade_shell", 2, "backpack"] call FNC_AddItem;
		["1Rnd_SmokeGreen_Grenade_shell", 2, "backpack"] call FNC_AddItem;
		["1Rnd_Smoke_Grenade_shell", 2, "backpack"] call FNC_AddItem;

	};

	case "MM": {

		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["10Rnd_762x54_Mag", 7] call FNC_AddItem;

		["srifle_DMR_01_F"] call FNC_AddItem;
		["optic_DMS"] call FNC_AddItem;
		["bipod_02_F_tan"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 1] call FNC_AddItem;
		["SmokeShellRed", 1] call FNC_AddItem;

	};

	case "AT": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;

		["arifle_Katiba_C_F"] call FNC_AddItem;
		["optic_Hamr"] call FNC_AddItem;

		["Titan_AT"] call FNC_AddItem;
		["launch_O_Titan_short_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;

		["Titan_AT", 2, "backpack"] call FNC_AddItem;

	};

	case "AR": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 2] call FNC_AddItem;

		["LMG_Zafir_ARCO_F"] call FNC_AddItem;
		["bipod_02_F_blk"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 1] call FNC_AddItem;
		["SmokeShellRed", 1] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 1, "backpack"] call FNC_AddItem;
		["30Rnd_65x39_caseless_green", 4, "backpack"] call FNC_AddItem;

	};

	case "AB": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_HelmetSpecO_ocamo"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_ARCO_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 1] call FNC_AddItem;
		["SmokeShellRed", 1] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 3, "backpack"] call FNC_AddItem;
		["30Rnd_65x39_caseless_green", 2, "backpack"] call FNC_AddItem;

	};

	case "MD": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_MilCap_ocamo"] call FNC_AddItem;

		["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_ARCO_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 2] call FNC_AddItem;
		["SmokeShellRed", 2] call FNC_AddItem;

		["ACE_fieldDressing", 15, "backpack"] call FNC_AddItem;
		["ACE_packingBandage", 15, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage", 15, "backpack"] call FNC_AddItem;
		["ACE_quikclot", 15, "backpack"] call FNC_AddItem;
		["ACE_tourniquet", 5, "backpack"] call FNC_AddItem;
		["ACE_morphine", 15, "backpack"] call FNC_AddItem;
		["ACE_epinephrine", 15, "backpack"] call FNC_AddItem;
		["ACE_salineIV_500", 3, "backpack"] call FNC_AddItem;
		["ACE_salineIV", 2, "backpack"] call FNC_AddItem;

	};

	case "MG": {

		["B_FieldPack_cbr"] call FNC_AddItem;
		["H_MilCap_ocamo"] call FNC_AddItem;

		["ACRE_PRC152", 1, "vest"] call FNC_AddItem;
		["Rangefinder"] call FNC_AddItem;

		["30Rnd_65x39_caseless_green", 7] call FNC_AddItem;
		["30Rnd_65x39_caseless_green_mag_Tracer", 2, "backpack"] call FNC_AddItem;

		["arifle_Katiba_ARCO_F"] call FNC_AddItem;

		["SmokeShell", 2] call FNC_AddItem;
		["SmokeShellGreen", 2] call FNC_AddItem;
		["SmokeShellRed", 2] call FNC_AddItem;

		["150Rnd_762x54_Box_Tracer", 2, "backpack"] call FNC_AddItem;
		["ACE_RangeTable_82mm", 1, "backpack"] call FNC_AddItem;
		["ACE_MapTools", 1, "backpack"] call FNC_AddItem;

	};

};
