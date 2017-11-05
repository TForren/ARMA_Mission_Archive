#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "Typhoon": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_65x39_caseless_green", 50] call FNC_AddItemVehicle;
		["1Rnd_HE_Grenade_shell", 20] call FNC_AddItemVehicle;
		["10Rnd_762x54_Mag", 20] call FNC_AddItemVehicle;
		["Titan_AT", 5] call FNC_AddItemVehicle;
		["150Rnd_762x54_Box_Tracer", 10] call FNC_AddItemVehicle;
		["launch_RPG32_F", 2] call FNC_AddItemVehicle;
		["RPG32_F", 6] call FNC_AddItemVehicle;

	};
};