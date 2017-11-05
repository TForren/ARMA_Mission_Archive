#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "truck"] call FNC_VehicleGearScript;

switch (_type) do {

	case "truck": {

		_vehicle call FNC_RemoveAllVehicleGear;

		[_vehicle,"tin_backpack_caf_fast_tw",2] call FNC_assignMedicBagCargo;		
	};

	case "boomBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["UK3CB_BAF_M6", 1] call FNC_AddItemVehicle;
		["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 20] call FNC_AddItemVehicle;
		["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 5] call FNC_AddItemVehicle;
		
	};


	case "sraawBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["tb_mk13_heat", 10] call FNC_AddItemVehicle;

	};

	case "ammoBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_556x45_soft_pouch", 15] call FNC_AddItemVehicle;

	};

	case "mgBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhsusf_100Rnd_762x51", 30] call FNC_AddItemVehicle;

	};	
	
	case "grenadeBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_m67", 12] call FNC_AddItemVehicle;
		["rhs_mag_M433_HEDP", 36] call FNC_AddItemVehicle;
		["SmokeShell", 12] call FNC_AddItemVehicle;
		["rhs_weap_rsp30_white", 12] call FNC_AddItemVehicle;

	};

	case "lawBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_weap_m72a7", 8] call FNC_AddItemVehicle;

	};
};