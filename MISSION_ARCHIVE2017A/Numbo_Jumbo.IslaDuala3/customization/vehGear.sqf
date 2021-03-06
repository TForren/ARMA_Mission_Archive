#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "cache": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm", 20] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;
		["rhs_mag_m67", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 3] call FNC_AddItemVehicle;
		["rhs_weap_svdp_wd", 1] call FNC_AddItemVehicle;
		["rhs_acc_pso1m2", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg_empty", 1] call FNC_AddItemVehicle;
		

	};
	
	
	case "RECCE": {
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
	
	case "bike": {
		_vehicle call FNC_RemoveAllVehicleGear;
		
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 8] call FNC_AddItemVehicle;
		["UK3CB_BAF_762_20Rnd", 8] call FNC_AddItemVehicle;
		["rhs_30Rnd_762x39mm", 8] call FNC_AddItemVehicle;
		["rhs_30Rnd_762x39mm", 8] call FNC_AddItemVehicle;
		["Binocular", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VR_mag", 3] call FNC_AddItemVehicle;


	};
};