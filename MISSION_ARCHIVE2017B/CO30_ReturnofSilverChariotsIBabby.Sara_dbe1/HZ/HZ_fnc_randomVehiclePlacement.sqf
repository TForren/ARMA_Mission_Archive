//[this,1] execVM "HZ\HZ_fnc_randomVehiclePlacement.sqf";

_vic = _this select 0;
_keepCount = _this select 1;
_otherVics = synchronizedObjects _vic;
_allVics = [_vic];

{
	_allVics = _allVics + [vehicle _x];
} foreach _otherVics;

if (count _allVics < _keepCount) exitWith {systemchat format["bad vic keep number %1",_vic]};

_keepArray = [];

for "_i" from 1 to _keepCount do
{
	_keep = _allVics call BIS_fnc_selectRandom;
	_keepArray = _keepArray + [_keep];
};

{
	_vic = _x;
	{deleteVehicle _x} foreach crew _vic;
	deleteVehicle _vic;
} foreach (_allVics - _keepArray);	