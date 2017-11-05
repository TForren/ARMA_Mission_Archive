#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "PICK": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_545x39_7N10_AK", 8] call FNC_AddItemVehicle;
		["rhs_assault_umbts", 2] call FNC_AddItemVehicle;
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		["ACE_Clacker", 3] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 3] call FNC_AddItemVehicle;
//		["DemoCharge_Remote_Mag", 2] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 3] call FNC_AddItemVehicle;
		
		["rhsgref_uniform_woodland_olive"] call FNC_AddItemVehicle;
		["rhsgref_uniform_flecktarn"] call FNC_AddItemVehicle;
		
	};
};