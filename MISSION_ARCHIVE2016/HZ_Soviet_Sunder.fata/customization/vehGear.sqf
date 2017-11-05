#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "SoC"] call FNC_VehicleGearScript;

switch (_type) do {


	case "BTR": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VR_mag", 4] call FNC_AddItemVehicle;
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		["rhs_weap_rshg2", 2] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 40] call FNC_AddItemVehicle;
		["rhs_45Rnd_545X39_AK_Green", 10] call FNC_AddItemVehicle;
		["SmokeShell", 6] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 2] call FNC_AddItemVehicle;
		["rhs_VOG25", 20] call FNC_AddItemVehicle;
		["rhs_GRD40_White", 5] call FNC_AddItemVehicle;
		["rhs_VG40SZ", 10] call FNC_AddItemVehicle;
		["rhs_scarf", 4] call FNC_AddItemVehicle;
		
	};
	case "ins": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["ace_entrenchingtool", 3] call FNC_AddItemVehicle;
		["CUP_30Rnd_Sa58_M_TracerR", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_556x45_Stanag", 10] call FNC_AddItemVehicle;
		["CUP_10x_303_M", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_762x39_AK47_M", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_545x39_AK_M", 10] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 10] call FNC_AddItemVehicle;
		
		["CUP_10Rnd_762x54_SVD_M", 10] call FNC_AddItemVehicle;
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 10] call FNC_AddItemVehicle;
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10] call FNC_AddItemVehicle;

		["ACE_fieldDressing", 20] call FNC_AddItemVehicle;

		["ACE_morphine", 10] call FNC_AddItemVehicle;

	};
	case "ins2": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_rpg7_OG7V_mag", 1] call FNC_AddItemVehicle;
		["CUP_30Rnd_Sa58_M_TracerR", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_556x45_Stanag", 10] call FNC_AddItemVehicle;
		["CUP_10x_303_M", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_762x39_AK47_M", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_545x39_AK_M", 10] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 10] call FNC_AddItemVehicle;
		
		["CUP_10Rnd_762x54_SVD_M", 10] call FNC_AddItemVehicle;
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 10] call FNC_AddItemVehicle;
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10] call FNC_AddItemVehicle;

		["ACE_fieldDressing", 20] call FNC_AddItemVehicle;

		["ACE_morphine", 10] call FNC_AddItemVehicle;

	};
};