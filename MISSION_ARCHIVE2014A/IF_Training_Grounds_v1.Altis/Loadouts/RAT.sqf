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

	_unit addHeadgear 'US_2010_MarpatWoodland_PASGTHelmet1';
	_unit addVest 'US_2010_MarpatWoodland_PlateCarrier';
	_unit addUniform 'US_2010_MarpatWoodland_FieldUniform1_SS';

	_unit addBackPack 'US_2010_MarpatWoodland_Carryall';
	
	_unit addWeapon 'RH_M4A1_ris';

	_unit addWeapon 'launch_AT4_F';
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
	_unit addMagazine 'AT4_HEAT';
	_unit addMagazine 'HandGrenade'; 
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'SmokeShell';  
	_unit addItem 'itemMap'; 
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'itemWatch'; 
	_unit assignItem 'itemWatch';
	_unit addItem 'tf_anprc152'; 
	_unit assignItem 'tf_anprc152';	_unit addGoggles 'G_Combat';
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
