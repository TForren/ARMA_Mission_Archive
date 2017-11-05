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

	_unit addHeadgear 'US_2003_MulticamScorpion_PASGTHelmet1';

	_unit addVest 'US_2003_MulticamScorpion_PlateCarrier';
	_unit addUniform 'US_2003_MulticamScorpion_FieldUniform2';
	_unit addBackPack 'US_2003_MulticamScorpion_Carryall';

	_unit addGoggles 'G_Combat';
	_unit addWeapon 'RH_M4A1_ris_m203';
	_unit addWeapon 'RH_m9';
	_unit addWeapon 'Binocular';
	_unit addWeapon 'NVGoggles';
	_unit addPrimaryWeaponItem 'RH_ta31rco_2d';
	_unit addPrimaryWeaponItem 'RH_peq2';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30rnd_556x45_STANAG';
	_unit addMagazine '30Rnd_556x45_Stanag_Tracer_Red';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_Smoke_Grenade_shell';
	_unit addMagazine '1Rnd_Smoke_Grenade_shell';
	_unit addMagazine '1Rnd_SmokeRed_Grenade_shell';
	_unit addMagazine '1Rnd_SmokeRed_Grenade_shell';
	_unit addMagazine '1Rnd_SmokeOrange_Grenade_shell';
	_unit addMagazine '1Rnd_SmokeOrange_Grenade_shell';
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
	
    _unit selectWeapon "this";
    reload _unit;
};
