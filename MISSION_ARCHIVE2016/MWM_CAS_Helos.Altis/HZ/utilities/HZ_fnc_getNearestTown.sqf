private ["_pos","_locations","_closest"];
_pos = _this select 0;
_townArray = _this select 1;

_closestTown = objNull;
_smallestDistance = 100000;
{
	_curDist = (getpos _x) distance _pos;
	if (_curDist < _smallestDistance) then {
		_smallestDistance = _curDist;
		_closestTown = text _x;
	};
} foreach _townArray;

//return
_closestTown;
