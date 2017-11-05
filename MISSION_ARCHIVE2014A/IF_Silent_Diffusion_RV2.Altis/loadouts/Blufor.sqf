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

	_unit addVest 'V_RebreatherB';
	_unit addUniform 'U_B_Wetsuit';
	_unit addMagazine 'RH_15Rnd_45cal_fnp';
    _unit addWeapon 'RH_fnp45';
    _unit addGoggles 'G_B_Diving';
	_unit addItem "RH_gemtech45";
	_unit addItem "RH_docter";
		
	_unit addWeapon 'NVGoggles';
	_unit addMagazine 'SmokeShell';
	_unit addMagazine 'SmokeShell';

	_unit addMagazine 'RH_15Rnd_45cal_fnp';
	_unit addMagazine 'RH_15Rnd_45cal_fnp';

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


    _unit selectWeapon "this";
    reload _unit;
};

_unit removeaction _id;