#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "Truck"] call FNC_VehicleGearScript;

switch (_type) do {

	case "HUMMVEE": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 8] call FNC_AddItemVehicle;
		["rhs_weap_m4a1_carryhandle"] call FNC_AddItemVehicle;

	};
	case "Vehicle": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 15] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 5] call FNC_AddItemVehicle;
		["rhs_mag_M433_HEDP", 10] call FNC_AddItemVehicle;
		["tb_200Rnd_556x45_box_tracer_red", 3] call FNC_AddItemVehicle;
		["tb_200Rnd_556x45_box", 5] call FNC_AddItemVehicle;
		
		["ACE_1Rnd_82mm_Mo_HE", 10] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Smoke", 5] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Illum", 5] call FNC_AddItemVehicle;
		
		
		["ACE_atropine", 5] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 5] call FNC_AddItemVehicle;
		

	};
	case "Truck": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 40] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 10] call FNC_AddItemVehicle;
		["rhs_mag_M433_HEDP", 40] call FNC_AddItemVehicle;
		["tb_200Rnd_556x45_box_tracer_red", 5] call FNC_AddItemVehicle;
		["tb_200Rnd_556x45_box", 10] call FNC_AddItemVehicle;
		
		["ACE_1Rnd_82mm_Mo_HE", 20] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Smoke", 5] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Illum", 5] call FNC_AddItemVehicle;
		

		

	};
		case "Truck2": {

		_vehicle call FNC_RemoveAllVehicleGear;


		
		["tb_mk13_heat", 8] call FNC_AddItemVehicle;
		["tb_mk13_hedp", 8] call FNC_AddItemVehicle;
		["tb_mk13_smoke", 5] call FNC_AddItemVehicle;
		["ACE_atropine", 15] call FNC_AddItemVehicle;
		["ACE_epinephrine", 15] call FNC_AddItemVehicle;
		["ACE_morphine", 15] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 40] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 20] call FNC_AddItemVehicle;
		["ACE_packingBandage", 25] call FNC_AddItemVehicle;
		

	};
	case "Crate1": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 6] call FNC_AddItemVehicle;
		["tb_mk13_heat", 1] call FNC_AddItemVehicle;
		["tb_mk13_hedp", 1] call FNC_AddItemVehicle;
		["tb_mk13_smoke", 1] call FNC_AddItemVehicle;
		["tb_200Rnd_556x45_box_tracer_red", 2] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 2] call FNC_AddItemVehicle;


	};
		case "Crate2": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_M433_HEDP", 5] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_HE", 5] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Smoke", 2] call FNC_AddItemVehicle;
		["ACE_1Rnd_82mm_Mo_Illum", 2] call FNC_AddItemVehicle;
		["ACE_RangeTable_82mm", 5] call FNC_AddItemVehicle;

	};
};