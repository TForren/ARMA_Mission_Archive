#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HMMWV"] call FNC_VehicleGearScript;

switch (_type) do {


	case "HMMWV": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACRE_PRC152", 1] call FNC_AddItemVehicle;
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		["ACE_CableTie", 10] call FNC_AddItemVehicle;
		
		["rhs_weap_M136_hedp", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 10] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 3] call FNC_AddItemVehicle;
		["toolkit",1] call FNC_AddItemVehicle;
		["rhsusf_assault_eagleaiii_ocp",1] call FNC_AddItemVehicle;
		["ace_entrenchingtool",1] call FNC_AddItemVehicle;

	};	
		
	case "opforVehicle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_30Rnd_762x39mm", 5] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 5] call FNC_AddItemVehicle;
		["rhs_mag_m67", 2] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 4] call FNC_AddItemVehicle;

	};	
};