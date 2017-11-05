#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "STANDARD"] call FNC_VehicleGearScript;

switch (_type) do {
	


	case "STANDARD": {
		

		_vehicle call FNC_RemoveAllVehicleGear;

		["UK3CB_BAF_556_30Rnd", 20] call FNC_AddItemVehicle;
		["UK3CB_BAF_556_30Rnd_T", 20] call FNC_AddItemVehicle;
		["UK3CB_BAF_556_100Rnd", 10] call FNC_AddItemVehicle;
		["UK3CB_BAF_M6", 1] call FNC_AddItemVehicle;
		["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 8] call FNC_AddItemVehicle;
		["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A", 2] call FNC_AddItemVehicle;
		["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 8] call FNC_AddItemVehicle;
		["rhs_mag_m67", 6] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ATMine_Range_Mag", 3] call FNC_AddItemVehicle;
		["DemoCharge_Remote_Mag", 3] call FNC_AddItemVehicle;
		["ACE_EntrenchingTool", 3] call FNC_AddItemVehicle;
		["ACE_M26_Clacker", 3] call FNC_AddItemVehicle;

	};
};


