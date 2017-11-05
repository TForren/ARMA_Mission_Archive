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

		["30Rnd_556x45_Stanag", 12] call FNC_AddItemVehicle;
		["rhs_weap_m4a1_carryhandle", 2] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;
		
		["tf47_at4_heat", 1] call FNC_AddItemVehicle;
		
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
		["ToolKit",3] call FNC_AddItemVehicle; 
		["SatchelCharge_Remote_Mag",1] call FNC_AddItemVehicle; 

	};
		case "taki": {

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
		
		["ACE_RangeTable_Grad", 4] call FNC_AddItemVehicle;
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