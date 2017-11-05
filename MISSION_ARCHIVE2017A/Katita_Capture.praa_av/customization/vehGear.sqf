#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {


	case "BMP": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_weap_ak74", 2] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 40] call FNC_AddItemVehicle;
		["rhs_45Rnd_545X39_AK_Green", 20] call FNC_AddItemVehicle;
		["SmokeShell", 6] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 10] call FNC_AddItemVehicle;
		["rhs_45Rnd_545X39_AK_Green", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 2] call FNC_AddItemVehicle;
		["rhs_VOG25", 20] call FNC_AddItemVehicle;
		["rhs_GRD40_White", 5] call FNC_AddItemVehicle;
		["rhs_scarf", 4] call FNC_AddItemVehicle;
		
	};
		
	case "opforVehicle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_30Rnd_762x39mm", 5] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 5] call FNC_AddItemVehicle;
		["rhs_mag_m67", 2] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 4] call FNC_AddItemVehicle;

	};	
};