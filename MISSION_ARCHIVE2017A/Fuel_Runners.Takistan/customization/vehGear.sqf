#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "helo": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20] call FNC_AddItemVehicle;
		["B_glhe", 20] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10] call FNC_AddItemVehicle;
		["SmokeShell", 10] call FNC_AddItemVehicle;
		["rhs_200rnd_556x45_M_SAW", 10] call FNC_AddItemVehicle;
		["B_mgmag", 6] call FNC_AddItemVehicle;
		["toolkit",1] call FNC_AddItemVehicle;

	};
	case "HMMWV": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_quikclot", 10] call FNC_AddItemVehicle;
		["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
		["ACE_packingBandage", 10] call FNC_AddItemVehicle;
		["ACE_elasticBandage", 10] call FNC_AddItemVehicle;
		["ACE_epinephrine", 10] call FNC_AddItemVehicle;
		["ACE_morphine", 10] call FNC_AddItemVehicle;
		["ACE_EarPlugs", 5] call FNC_AddItemVehicle;
		
		["rhs_weap_M136_hedp", 2] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 10] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call FNC_AddItemVehicle;
		["SmokeShell", 5] call FNC_AddItemVehicle;
		["rhsusf_200Rnd_556x45_soft_pouch", 5] call FNC_AddItemVehicle;
		["rhsusf_100Rnd_762x51_m80a1epr", 3] call FNC_AddItemVehicle;
		["toolkit",1] call FNC_AddItemVehicle;

	};	
	case "ammo": {

		_vehicle call FNC_RemoveAllVehicleGear;
		
		["SatchelCharge_Remote_Mag", 4] call FNC_AddItemVehicle;
		["Chemlight_blue", 10] call FNC_AddItemVehicle;
		["Chemlight_red", 10] call FNC_AddItemVehicle;
		["Chemlight_yellow", 10] call FNC_AddItemVehicle;
		["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B", 2] call FNC_AddItemVehicle;
	};	
	case "launchers": {

		_vehicle call FNC_RemoveAllVehicleGear;
		
		["UK3CB_BAF_Javelin_Slung_Tube", 4] call FNC_AddItemVehicle;
		["rhs_weap_fim92", 2] call FNC_AddItemVehicle;
		["rhs_fim92_mag", 5] call FNC_AddItemVehicle;

	};
};