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

	_unit addHeadgear 'AV_ACH4_OCP';

	_unit addVest 'AV_PlateCarrier2_khk';
	_unit addUniform 'AV_CombatUniform2_OCP_shortsleeve';
	_unit addBackPack 'tf_rt1523g';
	_unit addGoggles 'AV_ESS_blk_clr';
	_unit addWeapon 'RH_M4A1_ris';
	_unit addWeapon 'Laserdesignator';
	_unit addWeapon 'NVGoggles';
	_unit addPrimaryWeaponItem 'RH_ta31rco_2d';
	_unit addPrimaryWeaponItem 'RH_m4covers_f';
	_unit addPrimaryWeaponItem 'RH_saker';
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
	_unit addMagazine 'SmokeShell';
	_unit addMagazine 'SmokeshellRed';
	_unit addMagazine 'SmokeShellOrange';
	_unit addMagazine 'Chemlight_green';
	_unit addMagazine 'Chemlight_green';
	_unit addMagazine 'AGM_HandFlare_Red';
	_unit addMagazine 'AGM_HandFlare_Red';
	_unit addMagazine 'AGM_IR_Strobe_Item';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'itemWatch'; 
	_unit assignItem 'itemWatch';
	_unit addItem 'tf_anprc152'; 
	_unit assignItem 'tf_anprc152';
	_unit addItem 'RH_SFM952V';
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
	_unit addItem 'RH_peq2';
	_unit addItem 'AGM_CableTie';
	_unit addItem 'AGM_CableTie';
	_unit addItem 'AGM_MapTools';
	
    _unit selectWeapon "this";
    reload _unit;
};
