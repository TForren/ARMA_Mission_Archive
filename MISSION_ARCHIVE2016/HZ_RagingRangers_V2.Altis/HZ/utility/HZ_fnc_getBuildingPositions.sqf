/*
By Hoizen
HZ_fnc_getBuildingPositions
returns an array of all the positions in a building that AI can use
INTPUT: Object (building)
OUTPUT: [[x,y,z],[x,y,z], ...]
*/

_params = (_this select 0);
_building = _params select 0;

_i = 0;
_posarray = [];

while {format ["%1", _building buildingpos _i] != "[0,0,0]" } do {
	_pos = _building buildingpos _i;		//select building position _i
	_posarray = _posarray + [_pos];		//add the position to the list
	_i = _i + 1;					//increment counter
};


//return value
_posarray;