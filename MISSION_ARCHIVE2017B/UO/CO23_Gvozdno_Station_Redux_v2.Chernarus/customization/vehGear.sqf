#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "M113": {

		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_weap_rpg26",4] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 30] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 15] call FNC_AddItemVehicle;		
		["rhs_mag_an_m8hc", 8] call FNC_AddItemVehicle;	
		["tb_mk13_heat", 2] call FNC_AddItemVehicle;			
		["tb_mk13_hedp", 2] call FNC_AddItemVehicle;			
		["rhs_mag_M433_HEDP", 15] call FNC_AddItemVehicle;			
		["rhs_mag_m713_Red", 5] call FNC_AddItemVehicle;			
		["rhsusf_100Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;			
		["rhsusf_100Rnd_762x51", 5] call FNC_AddItemVehicle;			
		["ACE_fieldDressing", 16] call FNC_AddItemVehicle;			
		["ACE_packingBandage", 8] call FNC_AddItemVehicle;
		["ACE_salineIV_250", 4] call FNC_AddItemVehicle;			
		["ACE_morphine", 6] call FNC_AddItemVehicle;			
		["ACE_personalAidKit", 4] call FNC_AddItemVehicle;
		["ACE_M26_Clacker"] call FNC_AddItemVehicle;	
		["ClaymoreDirectionalMine_Remote_Mag",4] call FNC_AddItemVehicle;		

	};
};