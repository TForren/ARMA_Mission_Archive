// [_unit] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";
_box = _this select 0; 
_unit = _this select 1;
_id = _this select 2;  


if ((!isNull _unit) && (side _unit != east)) then {

		removeAllWeapons _unit;

		_unit addWeapon 'SG553';
		_unit addPrimaryWeaponItem "acc_flashlight";
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
		_unit addMagazine '30Rnd_56x45_GP90_Tracer_Yellow';
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
		_unit addItem 'AGM_Morphine';
		_unit addItem 'AGM_Morphine';
		_unit selectWeapon "this";
};
