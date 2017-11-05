#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "STD"] call FNC_VehicleGearScript;

switch (_type) do {


	
	case "STD": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 10] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;
		
		["tf47_at4_heat", 1] call FNC_AddItemVehicle;
	
		["ACE_packingBandage",6] call FNC_AddItemVehicle; 
		["ACE_quikclot",6] call FNC_AddItemVehicle; 
		["ACE_morphine",6] call FNC_AddItemVehicle; 
		["ACE_epinephrine",6] call FNC_AddItemVehicle; 

		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",3] call FNC_AddItemVehicle; 
		["ACE_DeadManSwitch",3] call FNC_AddItemVehicle; 

	};
	
};