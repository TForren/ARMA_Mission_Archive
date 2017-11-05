#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {
	case "V_IFV": {
		_vehicle call FNC_RemoveAllVehicleGear;

		["hlc_rifle_ak74_dirty", 2] call FNC_AddItemVehicle;
		["hlc_30Rnd_545x39_B_AK", 30] call FNC_AddItemVehicle;
		["hlc_45Rnd_545x39_t_rpk", 20] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 1] call FNC_AddItemVehicle;
		
		//Medical Stuff
		["ACE_fieldDressing", 15, "uniform"] call FNC_AddItemVehicle; 
		["ACE_elasticBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_packingBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_quikclot", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_morphine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_epinephrine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_atropine", 8, "backpack"] call FNC_AddItemVehicle; 
		["ACE_tourniquet", 3, "backpack"] call FNC_AddItemVehicle; 
		["ACE_salineIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_personalAidKit", 4, "backpack"] call FNC_AddItemVehicle;
		["ToolKit",3] call FNC_AddItemVehicle; 
		["DemoCharge_Remote_Mag",3] call FNC_AddItemVehicle; 
	};

	case "V_KAMAZ": {
		_vehicle call FNC_RemoveAllVehicleGear;

		["hlc_rifle_ak74_dirty", 2] call FNC_AddItemVehicle;
		["hlc_30Rnd_545x39_B_AK", 30] call FNC_AddItemVehicle;
		["hlc_45Rnd_545x39_t_rpk", 20] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 1] call FNC_AddItemVehicle;

		//Medical Stuff
		["ACE_fieldDressing", 15, "uniform"] call FNC_AddItemVehicle; 
		["ACE_elasticBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_packingBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_quikclot", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_morphine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_epinephrine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_atropine", 8, "backpack"] call FNC_AddItemVehicle; 
		["ACE_tourniquet", 3, "backpack"] call FNC_AddItemVehicle; 
		["ACE_salineIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_personalAidKit", 4, "backpack"] call FNC_AddItemVehicle;
		["ToolKit",3] call FNC_AddItemVehicle; 
		["DemoCharge_Remote_Mag",3] call FNC_AddItemVehicle; 
	};
	
	
	case "V_UAZ": {
		_vehicle call FNC_RemoveAllVehicleGear;

		["RH_cz75", 1] call FNC_AddItemVehicle;
		["rhs_weap_tr8", 2] call FNC_AddItemVehicle;
		["RH_16Rnd_9x19_CZ", 5] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 1] call FNC_AddItemVehicle;

		//Medical Stuff
		["ACE_fieldDressing", 15, "uniform"] call FNC_AddItemVehicle; 
		["ACE_elasticBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_packingBandage", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_quikclot", 15, "backpack"] call FNC_AddItemVehicle; 
		["ACE_morphine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_epinephrine", 10, "uniform"] call FNC_AddItemVehicle; 
		["ACE_atropine", 8, "backpack"] call FNC_AddItemVehicle; 
		["ACE_tourniquet", 3, "backpack"] call FNC_AddItemVehicle; 
		["ACE_salineIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_plasmaIV_500", 5, "backpack"] call FNC_AddItemVehicle; 
		["ACE_personalAidKit", 4, "backpack"] call FNC_AddItemVehicle;
		["ToolKit",3] call FNC_AddItemVehicle; 
		["DemoCharge_Remote_Mag",2] call FNC_AddItemVehicle; 
	};
};