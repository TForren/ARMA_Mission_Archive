// [_unit] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";

_box = _this select 0; 
_unit = _this select 1;
_id = _this select 2;  

if (!isNull _unit) then {
    removeAllWeapons _unit;

	_unit addHeadgear 'H_caf_ag_turban';

	_unit addWeapon 'RH_deagles';
	_unit addGoggles 'G_Aviator';
	_unit addMagazine 'RH_7Rnd_50_AE';
	_unit addMagazine 'RH_7Rnd_50_AE';
	_unit addMagazine 'RH_7Rnd_50_AE';
	_unit addMagazine 'RH_7Rnd_50_AE';
	_unit addMagazine 'RH_7Rnd_50_AE';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemCompass'; 
	_unit assignItem 'itemCompass';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';

    _unit selectWeapon "this";
    reload _unit;
};
