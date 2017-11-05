#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "B_STD": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 12] call FNC_AddItemVehicle;
		["UK3CB_BAF_30Rnd_9mm", 12] call FNC_AddItemVehicle;
		["rhsusf_5Rnd_00Buck", 10] call FNC_AddItemVehicle;
		
		["RH_17Rnd_9x19_g17", 10] call FNC_AddItemVehicle;
		
		["ACE_M84", 5] call FNC_AddItemVehicle;
		["rhs_mag_rdg2_white", 5] call FNC_AddItemVehicle;
		["ACE_CableTie", 10] call FNC_AddItemVehicle;
	
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",3] call FNC_AddItemVehicle; 
	};
	
	case "O_STD": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["hlc_30Rnd_545x39_B_AK", 7] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 5] call FNC_AddItemVehicle;
		["RH_32Rnd_9x19_tec", 8] call FNC_AddItemVehicle;
		["RH_20Rnd_32cal_vz61", 8] call FNC_AddItemVehicle;
		["RH_30Rnd_9x19_UZI", 8] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 5] call FNC_AddItemVehicle;


	};	

	
};