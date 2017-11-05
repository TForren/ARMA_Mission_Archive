#include "core\gearCore.sqf"

_unit removeItem "FirstAidKit";
_unit unlinkItem "NVGoggles_INDEP";
_unit removeItem "ACE_EarPlugs";

_unit setVariable ["ACE_hasEarPlugsIn", true, true];

["ACE_packingBandage", 2] call FNC_AddItem;
["ACE_fieldDressing", 2] call FNC_AddItem;
["ACE_tourniquet"] call FNC_AddItem;

switch (_type) do {

	case "SL": {

		["ACRE_PRC152"] call FNC_AddItem;

	};

	case "TL": {

		_unit removeMagazines "1Rnd_HE_Grenade_shell";
		["Binocular"] call FNC_AddItem;

	};

	case "AR": {

		_unit addPrimaryWeaponItem "optic_Arco";

	};

	case "MM": {

		_unit removePrimaryWeaponItem "optic_MRCO";
		_unit addPrimaryWeaponItem "optic_SOS";

	};

	case "RM": {

		["B_Carryall_oli"] call FNC_AddItem;
		["200Rnd_65x39_cased_Box", 1, "backpack"] call FNC_AddItem;

	};

	case "AT": {

		_unit removeMagazines "NLAW_F";

	};

	case "GR": {

		["30Rnd_556x45_Stanag", 2] call FNC_AddItem;

	};

	case "MD": {

		["ACE_tourniquet", 4] call FNC_AddItem;
		["ACE_morphine", 10] call FNC_AddItem;
		["ACE_epinephrine", 11] call FNC_AddItem;
		["ACE_packingBandage", 15] call FNC_AddItem;
		["ACE_quikclot", 15] call FNC_AddItem;
		["ACE_salineIV", 3] call FNC_AddItem;

	};

};