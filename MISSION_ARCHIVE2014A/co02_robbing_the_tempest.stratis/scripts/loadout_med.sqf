// [this] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";

private ["_unit", "_backpack"];

/* Replace _this below if you want to call this script differently */
_unit = _this select 0;

if (!isNull _unit) then {
    removeAllWeapons _unit;
    removeAllItems _unit;
    removeBackpack _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

    /* Other gear, goggles, vest, uniform */
    _unit addUniform "U_OG_Guerilla1_1";
    _unit addVest "V_Rangemaster_belt";
    _unit addHeadgear "H_Bandanna_camo";

    /* Magazines and weapons in main inventory */
	_unit addItem "FirstAidKit";
    _unit addMagazine "30Rnd_556x45_Stanag";
    _unit addMagazine "9Rnd_45ACP_Mag";
    _unit addWeapon "arifle_Mk20C_plain_F";
    _unit addWeapon "hgun_ACPC2_snds_F";

    /* Weapons attachments and magazines */
    _unit addPrimaryWeaponItem "muzzle_snds_M";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_ACO_grn";

    /* Magazines and weapons in vest */
    _vest = vestContainer _unit;
    _vest addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 3];
    _vest addMagazineCargoGlobal ["9Rnd_45ACP_Mag", 1];

    /* Magazines and weapons in uniform */
    _uniform = uniformContainer _unit;
    _uniform addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 2];
    _uniform addMagazineCargoGlobal ["9Rnd_45ACP_Mag", 1];
    _unit addItem "ItemMap"; _unit assignItem "ItemMap";
    _unit addItem "ItemCompass"; _unit assignItem "ItemCompass";
    _unit addItem "ItemWatch"; _unit assignItem "ItemWatch";
	_unit addItem "ItemRadio"; _unit assignItem "ItemRadio";
	_unit addItem "ItemGPS"; _unit assignItem "ItemGPS";
	_unit addWeapon "Binocular";

    _unit selectWeapon "this";
    reload _unit;
};

