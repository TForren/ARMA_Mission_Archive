// [this] call compile preprocessFileLineNumbers "scripts\loadout_hard.sqf";

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
    _unit addUniform "U_C_Poor_1";
	_unit addHeadGear "H_Cap_blu";

    /* Magazines and weapons in main inventory */
    _unit addMagazine "30Rnd_9x21_Mag";
    _unit addMagazine "9Rnd_45ACP_Mag";
    _unit addWeapon "hgun_PDW2000_snds_F";
    _unit addWeapon "hgun_ACPC2_snds_F";

    /* Magazines and weapons in uniform */
    _uniform = uniformContainer _unit;
    _uniform addMagazineCargoGlobal ["30Rnd_9x21_Mag", 2];
    _uniform addMagazineCargoGlobal ["9Rnd_45ACP_Mag", 1];
	_uniform addItemCargoGlobal ["FirstAidKit", 1];
    _unit addItem "ItemMap"; _unit assignItem "ItemMap";
    _unit addItem "ItemCompass"; _unit assignItem "ItemCompass";
    _unit addItem "ItemWatch"; _unit assignItem "ItemWatch";
	_unit addItem "ItemRadio"; _unit assignItem "ItemRadio";

    _unit selectWeapon "this";
    reload _unit;
};
