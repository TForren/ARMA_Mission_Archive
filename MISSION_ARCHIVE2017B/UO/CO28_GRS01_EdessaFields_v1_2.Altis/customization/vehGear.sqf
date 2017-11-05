#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "PLT_TRUCK": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["launch_O_Titan_short_F"] call FNC_AddItemVehicle;
		["Titan_AT", 2] call FNC_AddItemVehicle;

		["rhs_weap_igla"] call FNC_AddItemVehicle;
		["rhs_mag_9k38_rocket", 2] call FNC_AddItemVehicle;		
		
		[_vehicle,"tin_backpack_medic_tan",3] call FNC_assignMedicBagCargo;
	};

	case "EMPTY": {

		_vehicle call FNC_RemoveAllVehicleGear;

	};
};