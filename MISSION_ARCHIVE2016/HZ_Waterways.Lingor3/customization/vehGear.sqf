#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "STD2": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 10] call FNC_AddItemVehicle;
		["rhs_weap_m4a1_carryhandle", 2] call FNC_AddItemVehicle;

		["ACE_fieldDressing",7] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",7] call FNC_AddItemVehicle; 
		["ACE_packingBandage",7] call FNC_AddItemVehicle; 
		["ACE_quikclot",5] call FNC_AddItemVehicle; 
		["ACE_morphine",5] call FNC_AddItemVehicle; 
		["ACE_epinephrine",5] call FNC_AddItemVehicle; 
		["ACE_atropine",5] call FNC_AddItemVehicle; 
		["ACE_tourniquet",5] call FNC_AddItemVehicle; 
		["ACE_salineIV_500",2] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500",2] call FNC_AddItemVehicle; 
		["ACE_bloodIV_500",2] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",1] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",1] call FNC_AddItemVehicle; 

	};
	
	case "STD": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_20Rnd_762x51_FNFAL_M", 12] call FNC_AddItemVehicle;
		["CUP_arifle_FNFAL5061", 2] call FNC_AddItemVehicle;
		["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 5] call FNC_AddItemVehicle;
		
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		["B_Carryall_oli", 1] call FNC_AddItemVehicle;
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 
		["ACE_atropine",12] call FNC_AddItemVehicle; 
		["ACE_tourniquet",5] call FNC_AddItemVehicle; 
		["ACE_salineIV_500",8] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500",8] call FNC_AddItemVehicle; 
		["ACE_bloodIV_500",4] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",2] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",1] call FNC_AddItemVehicle; 

	};
	
};