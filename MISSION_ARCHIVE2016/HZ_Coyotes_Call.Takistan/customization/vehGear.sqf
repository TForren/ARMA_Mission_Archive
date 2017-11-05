#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {


	case "STD": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_545x39_7N10_AK", 32] call FNC_AddItemVehicle;
		["rhs_weap_ak74m_plummag", 2] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 5] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 5] call FNC_AddItemVehicle;
		["rhs_sidor", 2] call FNC_AddItemVehicle;
		
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 
		["ACE_atropine",12] call FNC_AddItemVehicle; 
		["ACE_tourniquet",5] call FNC_AddItemVehicle; 
		["ACE_bloodIV_500",4] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",2] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",4] call FNC_AddItemVehicle; 

	};
	
};