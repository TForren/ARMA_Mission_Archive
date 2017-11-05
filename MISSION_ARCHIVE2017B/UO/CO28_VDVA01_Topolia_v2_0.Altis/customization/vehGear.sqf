#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

_vehicle allowCrewInImmobile true;

switch (_type) do {

	case "BMD": {
		_vehicle call FNC_RemoveAllVehicleGear;

		_vehicle removeWeapon "rhs_weap_9k11";

		{
			_vehicle removeMagazine _x;
		} forEach magazines _vehicle;

		_vehicle addMagazine "rhs_mag_pg15v_24";
		_vehicle addMagazine "rhs_mag_og15v_16";

		for "_x" from 1 to 6 do {_vehicle addMagazine "rhs_mag_762x54mm_250"};

		[_vehicle,"B_Carryall_oli",1] call FNC_assignMedicBagCargo;
	};

	case "vehBox": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_545x39_AK_no_tracers",30] call FNC_AddItemVehicle;
		["rhs_100Rnd_762x54mmR",8] call FNC_AddItemVehicle;

		["rhs_mag_rgd5",8] call FNC_AddItemVehicle;
		["rhs_mag_rgn",8] call FNC_AddItemVehicle;
		["rhs_mag_rgo",8] call FNC_AddItemVehicle;

		["rhs_rpg7_PG7VL_mag",3] call FNC_AddItemVehicle;
		["rhs_rpg7_OG7V_mag",3] call FNC_AddItemVehicle;

		["rhs_weap_rpg26",2] call FNC_AddItemVehicle;
		["rhs_weap_rshg2",1] call FNC_AddItemVehicle;
	};

	case "empty": {

		_vehicle call FNC_RemoveAllVehicleGear;
	};

	case "emptyMed": {

		_vehicle call FNC_RemoveAllVehicleGear;

		[_vehicle,"B_Carryall_oli",1] call FNC_assignMedicBagCargo;
	};

	case "emptyUAZ": {

		_vehicle call FNC_RemoveAllVehicleGear;

		if (isServer) then {_vehicle setObjectTextureGlobal [0,"rhsafrf\addons\rhs_a2port_car\uaz\data\uaz_main_civil_co.paa"]};
	};

};