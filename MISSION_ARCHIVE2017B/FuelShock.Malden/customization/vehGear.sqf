#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "eagle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["ACRE_PRC152", 1] call FNC_AddItemVehicle;
		["BWA3_G36", 2] call FNC_AddItemVehicle;
		["BWA3_200Rnd_556x45", 20] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 20] call FNC_AddItemVehicle;
		["ACE_elasticBandage",10]call FNC_AddItemVehicle; 

	};	
		
		
	case "puma": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["BWA3_G36", 2] call FNC_AddItemVehicle;
		["BWA3_200Rnd_556x45", 20] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 20] call FNC_AddItemVehicle;
		["ACE_elasticBandage",10]call FNC_AddItemVehicle; 

	};			
		
	case "ammo": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["BWA3_30Rnd_556x45_G36", 30] call FNC_AddItemVehicle;
		["BWA3_200Rnd_556x45", 30] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 20] call FNC_AddItemVehicle;

	};	
		
	case "opforVehicle": {
	
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_30Rnd_762x39mm", 5] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 5] call FNC_AddItemVehicle;
		["rhs_mag_m67", 2] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 4] call FNC_AddItemVehicle;

	};	
	
	case "launchers": {

		_vehicle call FNC_RemoveAllVehicleGear;
		
		["UK3CB_BAF_Javelin_Slung_Tube", 4] call FNC_AddItemVehicle;
		["rhs_weap_fim92", 2] call FNC_AddItemVehicle;
		["rhs_fim92_mag", 5] call FNC_AddItemVehicle;

	};
};