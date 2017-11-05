#include "core\vehGearCore.sqf" //DO NOT REMOVE

switch (_type) do {

	case "Box": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_65x39_caseless_green", 30] call FNC_AddItemVehicle;
		["1Rnd_HE_Grenade_shell", 20] call FNC_AddItemVehicle;
		["10Rnd_762x54_Mag", 20] call FNC_AddItemVehicle;
		["Titan_AT", 5] call FNC_AddItemVehicle;
		["150Rnd_762x54_Box_Tracer", 10] call FNC_AddItemVehicle;
		["launch_RPG32_F", 4] call FNC_AddItemVehicle;
		["RPG32_F", 8] call FNC_AddItemVehicle;
		["RPG32_HE_F", 4] call FNC_AddItemVehicle;

	};
};