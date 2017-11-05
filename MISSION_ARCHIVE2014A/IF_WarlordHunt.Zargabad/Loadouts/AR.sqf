// [_unit] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";

_box = _this select 0; 
_unit = _this select 1;
_id = _this select 2;  


if (!isNull _unit) then {
    removeAllWeapons _unit;
    removeAllItems _unit;
    removeBackpack _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

	_unit addHeadgear 'SP_Bandana_Tan';
	_unit addVest 'SP_PlateCarrier1_Tan';
	_unit addUniform 'US_2010_Multicam_FieldUniform2_ss';

	_unit addBackPack 'B_Kitbag_cbr';

	_unit addWeapon 'STI_M249_PIP';
	_unit addWeapon 'RH_m9';

	_unit addWeapon 'Binocular';
	_unit addWeapon 'NVGoggles';
	_unit addPrimaryWeaponItem 'FHQ_optic_AIM';
	_unit addPrimaryWeaponItem 'RH_peq15';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'SmokeShell';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'itemWatch'; 
	_unit assignItem 'itemWatch';
	_unit addItem 'itemRadio'; 
	_unit assignItem 'itemRadio';
	_unit addItem 'AGM_EarBuds';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Morphine';

    _unit selectWeapon "this";
    reload _unit;
};
