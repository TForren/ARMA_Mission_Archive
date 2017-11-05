#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "cache": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm", 20] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;
		["rhs_mag_m67", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 3] call FNC_AddItemVehicle;
		["rhs_weap_svdp_wd", 1] call FNC_AddItemVehicle;
		["rhs_acc_pso1m2", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg_empty", 1] call FNC_AddItemVehicle;
		

	};
};