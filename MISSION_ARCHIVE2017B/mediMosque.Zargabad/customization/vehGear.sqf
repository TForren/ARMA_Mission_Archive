#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {


	case "HMMWV": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		
		["rhs_weap_M136_hedp", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 10] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 3] call FNC_AddItemVehicle;
		["toolkit",1] call FNC_AddItemVehicle;

	};	
	
	
	case "BTR": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_rpg7_PG7VL_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag", 4] call FNC_AddItemVehicle;
		["rhs_rpg7_PG7VR_mag", 4] call FNC_AddItemVehicle;
		["rhs_weap_rpg26", 2] call FNC_AddItemVehicle;
		["rhs_weap_rshg2", 2] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK", 40] call FNC_AddItemVehicle;
		["rhs_mag_rdg2_white", 6] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 5] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 5] call FNC_AddItemVehicle;
		["ACE_personalAidKit", 2] call FNC_AddItemVehicle;
		["rhs_VOG25", 20] call FNC_AddItemVehicle;
		["rhs_GRD40_White", 5] call FNC_AddItemVehicle;
		["rhs_VG40SZ", 10] call FNC_AddItemVehicle;
		["rhs_balaclava", 4] call FNC_AddItemVehicle;
		["rhs_scarf", 4] call FNC_AddItemVehicle;
		["rhs_6b27m_digi", 10] call FNC_AddItemVehicle;
		

	};
};
