#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "SoC"] call FNC_VehicleGearScript;

switch (_type) do {
	


	case "STANDARD": {
		

		_vehicle call FNC_RemoveAllVehicleGear;

		["UK3CB_BAF_30Rnd", 25] call FNC_AddItemVehicle;
		["UK3CB_BAF_30Rnd_T", 25] call FNC_AddItemVehicle;
		["UK3CB_BAF_100Rnd", 10] call FNC_AddItemVehicle;
		["UK3CB_BAF_75Rnd", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
	case "HQ": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["UK3CB_BAF_30Rnd", 25] call FNC_AddItemVehicle;
		["UK3CB_BAF_30Rnd_T", 25] call FNC_AddItemVehicle;
		["UK3CB_BAF_100Rnd", 10] call FNC_AddItemVehicle;
		["UK3CB_BAF_75Rnd", 10] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;
		
		["ACRE_PRC148", 1] call FNC_AddItemVehicle;
		["ACRE_PRC117F", 1] call FNC_AddItemVehicle;
		["UK3CB_BAF_B_Bergen_MTP_Radio_L_A", 1] call FNC_AddItemVehicle;
		
		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
	case "SGT": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

		["UK3CB_BAF_1Rnd_81mm_Mo_shells", 10] call FNC_AddItemVehicle;
		
		["UK3CB_BAF_30Rnd", 25] call FNC_AddItemVehicle;
		["UK3CB_BAF_30Rnd_T", 25] call FNC_AddItemVehicle;
		["rhs_mag_m67", 10] call FNC_AddItemVehicle;
		["smokeshell", 10] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 2] call FNC_AddItemVehicle;
		
		["ACRE_PRC148", 1] call FNC_AddItemVehicle;

		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;

	};
	case "SoC": {
	
		_vehicle call FNC_RemoveAllVehicleGear;

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
	case "SoC2": {
	
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
	
		case "launchers": {

		_vehicle call FNC_RemoveAllVehicleGear;
		
		["rhs_weap_fim92", 4] call FNC_AddItemVehicle;

	};
};