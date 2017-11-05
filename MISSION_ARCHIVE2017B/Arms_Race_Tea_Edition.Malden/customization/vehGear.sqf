#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {


	case "US": {
		["rhs_weap_m72a7", 10] call FNC_AddItemVehicle;
	};

	case "Ammo": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_762x39mm_89", 20] call FNC_AddItemVehicle;
		["rhs_30Rnd_762x39mm", 30] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 30] call FNC_AddItemVehicle;
		["hlc_75Rnd_762x39_m_rpk", 20] call FNC_AddItemVehicle;
		["hlc_10rnd_12g_buck_S12", 20] call FNC_AddItemVehicle;

		["SmokeShell", 10] call FNC_AddItemVehicle; 
		
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
	

	};
	case "Explosives": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_VOG25", 10] call FNC_AddItemVehicle;
		["rhs_VG40OP_white", 10] call FNC_AddItemVehicle;
		["HandGrenade", 10] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		
		["DemoCharge_Remote_Mag", 2] call FNC_AddItemVehicle;
		["ACE_Clacker", 1] call FNC_AddItemVehicle;
		["rhs_sidor", 2] call FNC_AddItemVehicle;
		["ACE_wirecutter",4] call FNC_AddItemVehicle;

	};
};