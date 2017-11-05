#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "ammo": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_rpg7_PG7V_mag", 1] call FNC_AddItemVehicle;
		["rhs_weap_rsp30_red", 8] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 40] call FNC_AddItemVehicle;
		["ACE_HandFlare_Red", 5] call FNC_AddItemVehicle;
		["rhs_45Rnd_545X39_AK", 20] call FNC_AddItemVehicle; 
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 3] call FNC_AddItemVehicle;
		["rhs_30Rnd_762x39mm", 40] call FNC_AddItemVehicle;
	};
	case "gear": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_6b5", 4] call FNC_AddItemVehicle;
		["AFGHAN_SH_68_2", 6] call FNC_AddItemVehicle;

	};
};
