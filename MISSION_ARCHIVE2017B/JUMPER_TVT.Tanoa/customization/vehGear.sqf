#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "cache": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm", 20] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 20] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 6] call FNC_AddItemVehicle;
		["rhs_weap_pkm", 1] call FNC_AddItemVehicle;
		["rhs_mag_m67", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 3] call FNC_AddItemVehicle;
		["rhs_weap_svdp_wd", 1] call FNC_AddItemVehicle;
		["rhs_acc_pso1m2", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg_empty", 1] call FNC_AddItemVehicle;
		

	};
	case "UNTruck": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm", 40] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 40] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 40] call FNC_AddItemVehicle;
		["LOP_10rnd_77mm_mag", 15] call FNC_AddItemVehicle;
		["rhsgref_5Rnd_762x54_m38", 15] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;
		["rhs_mag_m67", 15] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 40] call FNC_AddItemVehicle;

	};
};