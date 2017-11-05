#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {
	case "Boat_HQ": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 4] call FNC_AddItemVehicle;
		["ACRE_PRC117F", 1] call FNC_AddItemVehicle;
		["ACRE_PRC148"] call FNC_AddItemVehicle;
		["ACE_microDAGR"] call FNC_AddItemVehicle;
		["ACE_VectorDay"] call FNC_AddItemVehicle;
		["30rnd_556x45_stanag", 6] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 15] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 20] call FNC_AddItemVehicle;
		["ACE_packingBandage", 20] call FNC_AddItemVehicle;
		["ACE_quikclot", 15] call FNC_AddItemVehicle;
		["ACE_atropine", 4] call FNC_AddItemVehicle;
		["ACE_morphine", 8] call FNC_AddItemVehicle;
		["ACE_epinephrine", 8] call FNC_AddItemVehicle;
		["ACE_tourniquet", 5] call FNC_AddItemVehicle;
		["ACE_salineIV_500", 4] call FNC_AddItemVehicle;
		["ACE_surgicalKit", 1] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 2] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_HE", 2] call FNC_AddItemVehicle;
	};
		case "Boat_Mortar": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_1Rnd_82mm_Mo_HE", 8] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Smoke", 2] call FNC_AddItemVehicle;
	};
	
	case "Boat_Weapons": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_smaw_HEAA", 1] call FNC_AddItemVehicle;
		["rhs_mag_smaw_HEDP", 1] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51", 4] call FNC_AddItemVehicle;
	};
	
	case "Boat_Squad1": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30rnd_556x45_stanag", 25] call FNC_AddItemVehicle;
		["rhs_200rnd_556x45_M_SAW", 3] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 5] call FNC_AddItemVehicle;
		["rhs_mag_m713_Red", 2] call FNC_AddItemVehicle;
		["rhs_mag_m714_White", 2] call FNC_AddItemVehicle;
		["rhs_mag_m715_Green", 2] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 5] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 5] call FNC_AddItemVehicle;
		["ACE_quikclot", 5] call FNC_AddItemVehicle;
		["ACE_morphine", 2] call FNC_AddItemVehicle;
		["ACE_epinephrine", 2] call FNC_AddItemVehicle;
		["ACE_tourniquet", 3] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_HE", 1] call FNC_AddItemVehicle;
	};
	
		case "Boat_Squad2": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30rnd_556x45_stanag", 6] call FNC_AddItemVehicle;
		["rhs_200rnd_556x45_M_SAW", 2] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 5] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 3] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 3] call FNC_AddItemVehicle;
		["ACE_packingBandage", 3] call FNC_AddItemVehicle;
		["ACE_quikclot", 3] call FNC_AddItemVehicle;
		["ACE_morphine", 2] call FNC_AddItemVehicle;
		["ACE_epinephrine", 2] call FNC_AddItemVehicle;
		["ACE_tourniquet", 3] call FNC_AddItemVehicle;
		["rhs_mag_smaw_HEAA", 1] call FNC_AddItemVehicle;
		["rhs_mag_smaw_HEDP", 1] call FNC_AddItemVehicle;
	};
	
};