#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "sla": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10] call FNC_AddItemVehicle;
		["CUP_20Rnd_762x51_FNFAL_M", 10] call FNC_AddItemVehicle;
		["CUP_arifle_FNFAL5061", 2] call FNC_AddItemVehicle;
		
		["rhs_weap_rpg26", 5] call FNC_AddItemVehicle;

		["ACE_fieldDressing",7] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",7] call FNC_AddItemVehicle; 
		["ACE_packingBandage",7] call FNC_AddItemVehicle; 
		["ACE_quikclot",5] call FNC_AddItemVehicle; 
		["ACE_morphine",5] call FNC_AddItemVehicle; 
		["ACE_epinephrine",5] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",1] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",1] call FNC_AddItemVehicle; 
		["ace_entrenchingtool",8] call FNC_AddItemVehicle; 

	};
	
	case "racs": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_30Rnd_556x45_Stanag", 10] call FNC_AddItemVehicle;
		["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 10] call FNC_AddItemVehicle;
		["CUP_arifle_M16A2", 2] call FNC_AddItemVehicle;

		["rhs_weap_M136", 5] call FNC_AddItemVehicle;
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",3] call FNC_AddItemVehicle; 
		["ToolKit",3] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",1] call FNC_AddItemVehicle; 
		["ace_entrenchingtool",8] call FNC_AddItemVehicle;  

	};
		case "Taki": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["hlc_30Rnd_545x39_B_AK", 15] call FNC_AddItemVehicle;
		["hlc_rifle_ak74_dirty", 2] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 7] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 2] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 2] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 10] call FNC_AddItemVehicle;
		["ACRE_PRC343", 1] call FNC_AddItemVehicle;
		
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",1] call FNC_AddItemVehicle; 

	};	
	case "Taki2": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["hlc_30Rnd_545x39_B_AK", 15] call FNC_AddItemVehicle;
		["hlc_rifle_ak74_dirty", 2] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 7] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 2] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 2] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 10] call FNC_AddItemVehicle;
		["ACRE_PRC343", 1] call FNC_AddItemVehicle;
		
		["ACE_maptools", 4] call FNC_AddItemVehicle;
		["binocular", 4] call FNC_AddItemVehicle;
		
		["ACE_fieldDressing",12] call FNC_AddItemVehicle; 
		["ACE_elasticBandage",12] call FNC_AddItemVehicle; 
		["ACE_packingBandage",12] call FNC_AddItemVehicle; 
		["ACE_quikclot",12] call FNC_AddItemVehicle; 
		["ACE_morphine",12] call FNC_AddItemVehicle; 
		["ACE_epinephrine",12] call FNC_AddItemVehicle; 
		["ACE_personalAidKit",1] call FNC_AddItemVehicle; 

	};
	
};