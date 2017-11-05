_target = _this select 0;
_shooter = _this select 1;

if ( (currentWeapon _shooter == "BTX42_Flamethrower") && (random 1 > 0.2)) then {
	_fires = ["FIRE_SMALL","FIRE_MEDIUM"];
	_chosenFire = _fires call BIS_fnc_selectRandom;
	[getPos _target, _chosenFire] call BIS_fn_createFireEffect;
};