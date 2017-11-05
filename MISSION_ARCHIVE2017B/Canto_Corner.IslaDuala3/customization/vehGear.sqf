#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "cache": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm", 20] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;		["rhs_45Rnd_545X39_AK", 8] call FNC_AddItemVehicle;		["rhs_100Rnd_762x54mmR", 8] call FNC_AddItemVehicle;
		["rhs_mag_m67", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 3] call FNC_AddItemVehicle;
		["rhs_weap_svdp_wd", 1] call FNC_AddItemVehicle;
		["rhs_acc_pso1m2", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 2] call FNC_AddItemVehicle;
		["rhs_rpg_empty", 1] call FNC_AddItemVehicle;		["Binocular", 2] call FNC_AddItemVehicle;
		["rhs_sidor", 1] call FNC_AddItemVehicle;

	};	
		
	case "mortarAmmo": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 10] call FNC_AddItemVehicle;

	};				case "BAF": {		_vehicle call FNC_RemoveAllVehicleGear;		["UK3CB_BAF_30Rnd", 25] call FNC_AddItemVehicle;		["UK3CB_BAF_30Rnd_T", 25] call FNC_AddItemVehicle;		["UK3CB_BAF_100Rnd", 10] call FNC_AddItemVehicle;		["UK3CB_BAF_75Rnd", 10] call FNC_AddItemVehicle;		["rhs_mag_m67", 10] call FNC_AddItemVehicle;		["smokeshell", 10] call FNC_AddItemVehicle;		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;				["ACE_quikclot", 10] call FNC_AddItemVehicle;		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;		["ACE_packingBandage", 10] call FNC_AddItemVehicle;		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;		["ACE_epinephrine", 10] call FNC_AddItemVehicle;		["ACE_morphine", 10] call FNC_AddItemVehicle;		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;	};
};