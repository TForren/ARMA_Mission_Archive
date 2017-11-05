#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "SoC"] call FNC_VehicleGearScript;

switch (_type) do {
	


	case "STANDARD": {
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_weap_m4a1", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 25] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 25] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 10] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};

	case "RECCEVEH": {
		_vehicle call FNC_RemoveAllVehicleGear;
		
		["rhsusf_20Rnd_762x51_m118_special_Mag", 2] call FNC_AddItemVehicle;
		["rhsusf_20Rnd_762x51_m62_Mag", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 5] call FNC_AddItemVehicle;
		["rhsusf_mag_15Rnd_9x19_JHP", 10] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 10] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;

		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
	case "REARMTRUCK": {
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_weap_m4a1", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 35] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 25] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 20] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;

		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
};

/*
		
		["rhs_weap_fim92", 1] call FNC_AddItemVehicle;
		["rhs_fim92_mag", 3] call FNC_AddItemVehicle;
		["UK3CB_BAF_Javelin_Slung_Tube", 6] call FNC_AddItemVehicle;
		
		*/
