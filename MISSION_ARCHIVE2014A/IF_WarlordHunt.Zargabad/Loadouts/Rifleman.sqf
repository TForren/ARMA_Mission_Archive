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

	_unit addHeadgear 'SP_PASGTHelmet_Tan1';
	_unit addVest 'SP_PlateCarrier1_Tan';
	_unit addUniform 'US_2010_Multicam_FieldUniform2';

	_unit addBackPack 'B_Kitbag_cbr';

	_unit addWeapon 'RH_M4A1_ris';

	_unit addWeapon 'Binocular';
	_unit addWeapon 'NVGoggles';
	_unit addPrimaryWeaponItem 'RH_eotech553';
	_unit addPrimaryWeaponItem 'RH_peq15';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30Rnd_556x45_Stanag_Tracer_Red';
	_unit addMagazine 'HandGrenade'; 
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'SmokeShell';
	_unit addMagazine 'sti_200Rnd_556x45';
	_unit addMagazine 'Titan_AT';
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
