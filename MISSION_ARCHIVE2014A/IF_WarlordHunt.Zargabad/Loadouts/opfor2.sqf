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
	
	_unit addHeadgear 'H_caf_ag_paktol_04';

	_unit addVest 'SP_Holster1';
	_unit addUniform 'U_CAF_AG_ME_ROBES_Mil_01';
	_unit addBackPack 'B_FieldPack_cbr';
	_unit addWeapon 'RH_muzi';
	_unit addGoggles 'T_HoodMD';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'RH_30Rnd_9x19_UZI';
	_unit addMagazine 'SmokeShell';
	_unit addMagazine 'SmokeShell';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
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
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Epipen';
	_unit addItem 'AGM_Epipen';
	_unit addItem 'AGM_BloodBag';
	_unit addItem 'AGM_BloodBag';


    _unit selectWeapon "this";
    reload _unit;
};
