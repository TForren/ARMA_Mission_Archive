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
    _unit addUniform "U_B_SpecopsUniform_sgg";
    _unit addVest "V_TacVest_brn";
    _unit addHeadgear "H_Booniehat_mcamo";

    /* Magazines and weapons in main inventory */
    _unit addMagazine "30Rnd_65x39_caseless_mag";
    _unit addMagazine "11Rnd_45ACP_Mag";
    _unit addWeapon "arifle_MXC_ACO_pointer_snds_F";
    _unit addWeapon "hgun_Pistol_heavy_01_snds_F";

    /* Magazines and weapons in vest */
    _vest = vestContainer _unit;
    _vest addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 8];
    _vest addMagazineCargoGlobal ["11Rnd_45ACP_Mag", 3];
	_vest addItemCargoGlobal ["FirstAidKit", 1];

    /* Magazines and weapons in uniform */
    _uniform = uniformContainer _unit;
    _unit addItem "ItemMap"; _unit assignItem "ItemMap";
    _unit addItem "ItemCompass"; _unit assignItem "ItemCompass";
    _unit addItem "ItemWatch"; _unit assignItem "ItemWatch";
	_unit addItem "ItemRadio"; _unit assignItem "ItemRadio";
	_unit addItem "ItemGPS"; _unit assignItem "ItemGPS";
	_unit addItem "NVGoggles"; _unit assignItem "NVGoggles";
	_unit addWeapon "Rangefinder";
	
    _unit selectWeapon "this";
    reload _unit;
};
