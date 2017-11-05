#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "SOC": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 30] call FNC_AddItemVehicle;
		["rhsusf_8Rnd_00Buck", 10] call FNC_AddItemVehicle;
		["rhsusf_8Rnd_Slug", 10] call FNC_AddItemVehicle;
		["rhs_mag_M433_HEDP", 20] call FNC_AddItemVehicle;
		["ACE_IR_Strobe_Item", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["ACE_M84", 10] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["Chemlight_blue", 10] call FNC_AddItemVehicle;

		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		
		["DemoCharge_Remote_Mag", 5] call FNC_AddItemVehicle;
		["ClaymoreDirectionalMine_Remote_Mag", 5] call FNC_AddItemVehicle;
		["ACE_Clacker", 8] call FNC_AddItemVehicle;


	};
};