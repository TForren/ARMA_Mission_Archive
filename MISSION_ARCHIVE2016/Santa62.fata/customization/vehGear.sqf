#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "SoC"] call FNC_VehicleGearScript;

switch (_type) do {
	

	case "helo": {
		["SatchelCharge_Remote_Mag", 3] call FNC_AddItemVehicle;
		["ACE_M26_Clacker", 1] call FNC_AddItemVehicle;
		["B_AssaultPack_khk", 1] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 8] call FNC_AddItemVehicle;
		["rhs_mag_M433_HEDP", 15] call FNC_AddItemVehicle;
		["rhsusf_20Rnd_762x51_m118_special_Mag", 2] call FNC_AddItemVehicle;
		["rhsusf_20Rnd_762x51_m62_Mag", 6] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag", 8] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["rhs_mag_an_m8hc", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 1] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
	};
	case "opfor1": {
		

		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_30Rnd_Sa58_M_TracerR", 15] call FNC_AddItemVehicle;
		["CUP_30Rnd_556x45_Stanag", 15] call FNC_AddItemVehicle;
		["CUP_10x_303_M", 10] call FNC_AddItemVehicle;
		["CUP_30Rnd_762x39_AK47_M", 10] call FNC_AddItemVehicle;
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
	case "UNTruck": {
		

		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_30Rnd_Sa58_M_TracerR", 40] call FNC_AddItemVehicle;
		["CUP_30Rnd_556x45_Stanag", 40] call FNC_AddItemVehicle;
		["CUP_10x_303_M", 40] call FNC_AddItemVehicle;
		["CUP_30Rnd_762x39_AK47_M", 40] call FNC_AddItemVehicle;
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 40] call FNC_AddItemVehicle;
		["rhs_mag_m67", 20] call FNC_AddItemVehicle;

	};
	case "cache": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["CUP_30Rnd_Sa58_M_TracerR", 3] call FNC_AddItemVehicle;
		["CUP_30Rnd_556x45_Stanag", 3] call FNC_AddItemVehicle;
		["CUP_10x_303_M", 3] call FNC_AddItemVehicle;
		["CUP_30Rnd_762x39_AK47_M", 3] call FNC_AddItemVehicle;
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 2] call FNC_AddItemVehicle;
		["rhs_mag_m67", 5] call FNC_AddItemVehicle;
		["rhs_10Rnd_762x54mmR_7N1", 3] call FNC_AddItemVehicle;
		["rhs_weap_svdp_wd", 1] call FNC_AddItemVehicle;
		["rhs_acc_pso1m2", 1] call FNC_AddItemVehicle;
		["rhs_weap_rpg7", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 1] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VL_mag", 1] call FNC_AddItemVehicle;
		["rhs_rpg_empty", 1] call FNC_AddItemVehicle;
		["CUP_lmg_PKM", 1] call FNC_AddItemVehicle;
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 8] call FNC_AddItemVehicle;
		

	};

};