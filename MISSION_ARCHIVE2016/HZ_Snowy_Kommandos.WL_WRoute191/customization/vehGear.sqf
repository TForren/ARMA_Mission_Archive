#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "STD"] call FNC_VehicleGearScript;

switch (_type) do {

	case "STD2": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_fieldDressing",30] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",20] call FNC_AddItemVehicle; 
		["ACE_packingBandage",20] call FNC_AddItemVehicle; 
		["ACE_quikclot",20] call FNC_AddItemVehicle; 
		["ACE_morphine",20] call FNC_AddItemVehicle; 
		["ACE_epinephrine",20] call FNC_AddItemVehicle; 
		["ACE_atropine",20] call FNC_AddItemVehicle; 
		["ACE_tourniquet",10] call FNC_AddItemVehicle; 
		["ACE_salineIV_500",10] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500",10] call FNC_AddItemVehicle; 
		["ACE_bloodIV_500",10] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",15] call FNC_AddItemVehicle; 
		["ToolKit",1] call FNC_AddItemVehicle; 
	};
	
	case "STD": {

		_vehicle call FNC_RemoveAllVehicleGear;
		
		["rhs_mag_rgd5", 5] call FNC_AddItemVehicle;
		["rhs_mag_rdg2_white", 5] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 20] call FNC_AddItemVehicle;
		["rhs_30Rnd_762x39mm", 20] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 15] call FNC_AddItemVehicle;
		
		["rhs_VOG25", 30] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 3] call FNC_AddItemVehicle;
		
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 

		["ToolKit",2] call FNC_AddItemVehicle; 

	};	
	
};