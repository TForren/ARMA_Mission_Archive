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

	_unit addHeadgear 'AV_ACH3_OCP';

	_unit addVest 'AV_PlateCarrier1_OCP';
	_unit addUniform 'AV_CombatUniform2_OCP';
	_unit addBackPack 'AV_Kitbag_OCP';
	_unit addGoggles 'AV_ESS_blk_clr';
	_unit addWeapon 'STI_M240G';
	_unit addWeapon 'av_m9';
	_unit addWeapon 'NVGoggles';
	_unit addWeapon 'Binocular';
	_unit addPrimaryWeaponItem 'RH_ta31rco_2d';
	_unit addMagazine 'sti_100Rnd_762x51';
	_unit addMagazine 'sti_100Rnd_762x51';
	_unit addMagazine 'sti_100Rnd_762x51';
	_unit addMagazine 'AV_15Rnd_9x19_Mag';
	_unit addMagazine 'AV_15Rnd_9x19_Mag';
	_unit addMagazine 'AV_15Rnd_9x19_Mag';
	_unit addMagazine 'HandGrenade'; 
	_unit addMagazine 'Chemlight_green';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'itemWatch'; 
	_unit assignItem 'itemWatch';
	_unit addItem 'tf_anprc152'; 
	_unit assignItem 'tf_anprc152';
	_unit addItem 'AGM_EarBuds';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_CableTie';
	_unit addItem 'AGM_CableTie';

    _unit selectWeapon "this";
    reload _unit;
};
