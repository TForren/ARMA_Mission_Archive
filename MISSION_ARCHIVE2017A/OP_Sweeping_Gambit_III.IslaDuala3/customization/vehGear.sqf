#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "eagle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["BWA3_G36", 2] call FNC_AddItemVehicle;		["BWA3_30Rnd_556x45_G36", 30] call FNC_AddItemVehicle;		["BWA3_30Rnd_556x45_G36_Tracer", 20] call FNC_AddItemVehicle;
		["BWA3_200Rnd_556x45", 20] call FNC_AddItemVehicle;		["BWA3_15Rnd_9x19_P8", 5] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 20] call FNC_AddItemVehicle;		["rhs_mag_M433_HEDP", 20] call FNC_AddItemVehicle;		["BWA3_DM25", 20] call FNC_AddItemVehicle;
		["ACE_elasticBandage",10]call FNC_AddItemVehicle; 		["ACE_packingBandage",10]call FNC_AddItemVehicle; 		["ACE_quikclot",10]call FNC_AddItemVehicle; 		["ACE_morphine",10]call FNC_AddItemVehicle; 		["ACE_epinephrine",8]call FNC_AddItemVehicle; 		["ACE_atropine",6]call FNC_AddItemVehicle; 		["ACE_salineIV_500",4]call FNC_AddItemVehicle; 		["ACE_plasmaIV_500",4]call FNC_AddItemVehicle; 		["ACE_personalAidKit",2]call FNC_AddItemVehicle; 		["ACE_entrenchingTool",2]call FNC_AddItemVehicle; 

	};	
		
	case "opforVehicle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_30Rnd_762x39mm", 5] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 5] call FNC_AddItemVehicle;
		["rhs_mag_m67", 2] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 4] call FNC_AddItemVehicle;

	};	
};