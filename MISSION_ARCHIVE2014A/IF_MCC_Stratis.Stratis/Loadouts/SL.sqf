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


	_unit addHeadgear 'US_2010_Multicam_PASGTHelmet1';
	_unit addVest 'US_2010_Multicam_PlateCarrier';
	_unit addUniform 'US_2010_Multicam_FieldUniform1_SS';

	_unit addBackPack 'US_2010_Multicam_Carryall';
	
	_unit addWeapon 'RH_M4A1_ris_m203';
	_unit addWeapon 'Laserdesignator';
	_unit addWeapon 'RH_m9';
	_unit addPrimaryWeaponItem 'RH_ta31rco';
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
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine 'RH_15Rnd_9x19_M9';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_HE_Grenade_shell';
	_unit addMagazine '1Rnd_Smoke_Grenade_shell';
	_unit addMagazine '1Rnd_Smoke_Grenade_shell';
	_unit addMagazine 'HandGrenade';
	_unit addMagazine 'SmokeshellBlue';
	_unit addMagazine 'SmokeShellRed';
	_unit addMagazine 'Laserbatteries';
	
	_unit addItem 'AGM_EarBuds';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Morphine';

    _unit addItem "ItemMap"; _unit assignItem "ItemMap";
    _unit addItem "ItemCompass"; _unit assignItem "ItemCompass";
    _unit addItem "ItemWatch"; _unit assignItem "ItemWatch";
	_unit addItem "tf_anprc152"; _unit assignItem "tf_anprc152";
	_unit addItem "ItemGPS"; _unit assignItem "ItemGPS";
	_unit addItem "NVGoggles"; _unit assignItem "NVGoggles";

    _unit selectWeapon "this";
    reload _unit;
};
