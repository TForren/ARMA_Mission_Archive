// [this] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";

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

	this addHeadgear 'SP_PASGTHelmet_Tan1';
	this addVest 'SP_PlateCarrier1_Tan';
	this addUniform 'US_2010_Multicam_FieldUniform4';

	this addBackPack 'B_Kitbag_cbr';

	this addWeapon 'RH_M4A1_ris';

	this addWeapon 'launch_B_Titan_short_F';
	this addWeapon 'Binocular';
	this addWeapon 'NVGoggles';
	this addPrimaryWeaponItem 'RH_eotech553';
	this addPrimaryWeaponItem 'RH_peq15';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30rnd_556x45_STANAG';
	this addMagazine '30Rnd_556x45_Stanag_Tracer_Red';
	this addMagazine 'Titan_AT';
	this addMagazine 'Titan_AT';
	this addMagazine 'Titan_AP';
	this addMagazine 'HandGrenade'; 
	this addMagazine 'HandGrenade';
	this addMagazine 'SmokeShell';  
	this addItem 'itemMap'; 
	this assignItem 'itemMap';
	this addItem 'itemCompass'; 
	this assignItem 'itemCompass';
	this addItem 'itemWatch'; 
	this assignItem 'itemWatch';
	this addItem 'itemRadio'; 
	this assignItem 'itemRadio';
	this addItem 'AGM_EarBuds';
	this addItem 'AGM_Bandage';
	this addItem 'AGM_Bandage';
	this addItem 'AGM_Bandage';
	this addItem 'AGM_Bandage';
	this addItem 'AGM_Bandage';
	this addItem 'AGM_Morphine';
	this addItem 'AGM_Morphine';

    _unit selectWeapon "this";
    reload _unit;
};
