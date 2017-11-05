#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "Sherman": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["LIB_7Rnd_45ACP", 5] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x63", 10] call FNC_AddItemVehicle;
		["LIB_15Rnd_762x33", 10] call FNC_AddItemVehicle;
		["LIB_30Rnd_45ACP", 10] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x63", 10] call FNC_AddItemVehicle;
		["LIB_20Rnd_762x63", 10] call FNC_AddItemVehicle;
		["LIB_US_Mk_2", 10] call FNC_AddItemVehicle;
		
		["LIB_1Rnd_flare_yellow", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Green", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Yellow", 4] call FNC_AddItemVehicle;
		["LIB_US_M18", 8] call FNC_AddItemVehicle;
		["ACE_EntrenchingTool", 2] call FNC_AddItemVehicle;
		["ACE_Sandbag_empty", 8] call FNC_AddItemVehicle;

		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		

	};
	case "Halftrack": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["LIB_7Rnd_45ACP", 10] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x63", 20] call FNC_AddItemVehicle;
		["LIB_15Rnd_762x33", 15] call FNC_AddItemVehicle;
		["LIB_30Rnd_45ACP", 15] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x63", 15] call FNC_AddItemVehicle;
		["LIB_20Rnd_762x63", 15] call FNC_AddItemVehicle;
		["LIB_US_Mk_2", 10] call FNC_AddItemVehicle;
		
		["LIB_M1_Garand", 2] call FNC_AddItemVehicle;
		
		["LIB_1Rnd_flare_yellow", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Green", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Yellow", 4] call FNC_AddItemVehicle;
		["LIB_US_M18", 8] call FNC_AddItemVehicle;
		["ACE_EntrenchingTool", 2] call FNC_AddItemVehicle;
		["ACE_Sandbag_empty", 8] call FNC_AddItemVehicle;

		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		

	};
	case "Ammo": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["LIB_7Rnd_45ACP", 15] call FNC_AddItemVehicle;
		["LIB_8Rnd_762x63", 60] call FNC_AddItemVehicle;
		["LIB_15Rnd_762x33", 60] call FNC_AddItemVehicle;
		["LIB_30Rnd_45ACP", 60] call FNC_AddItemVehicle;
		["LIB_5Rnd_762x63", 60] call FNC_AddItemVehicle;
		["LIB_20Rnd_762x63", 60] call FNC_AddItemVehicle;
		["LIB_US_Mk_2", 20] call FNC_AddItemVehicle;
		
		["LIB_1Rnd_flare_yellow", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_green", 4] call FNC_AddItemVehicle;
		["LIB_1Rnd_flare_red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Red", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Green", 4] call FNC_AddItemVehicle;
		["LIB_US_M18_Yellow", 4] call FNC_AddItemVehicle;
		["LIB_US_M18", 10] call FNC_AddItemVehicle;
		["ACE_EntrenchingTool", 2] call FNC_AddItemVehicle;
		["ACE_Sandbag_empty", 20] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 5] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		["toolkit", 1] call FNC_AddItemVehicle;
		

	};
};