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

	_unit addWeapon 'prpl_benelli_14_pgs_rail';

	_unit addWeapon 'Binocular';
	_unit addWeapon 'NVGoggles';
	_unit addPrimaryWeaponItem 'FHQ_optic_HWS';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_6Rnd_12Gauge_Pellets';
	_unit addMagazine 'prpl_8Rnd_12Gauge_Slug';
	_unit addMagazine 'prpl_8Rnd_12Gauge_Slug';
	_unit addMagazine 'HandGrenade'; 
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'SmokeShell';
	_unit addMagazine 'DemoCharge_Remote_Mag';
	_unit addMagazine 'DemoCharge_Remote_Mag';
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
