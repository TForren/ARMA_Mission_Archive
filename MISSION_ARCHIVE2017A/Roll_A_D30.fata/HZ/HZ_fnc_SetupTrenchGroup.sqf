
//[pos,trenchCount, _targetPos] call HZ_fnc_setupTrenchGroup;
private _position = _this select 0;
private _trenchCount = _this select 1;
private _targetPosition = _this select 2;


_trenchLocs = [];
_center = "BRDM2_HQ_TK_GUE_unfolded_Base_EP1" createvehicle _position;

for [{_i=0}, {_i<_trenchCount}, {_i=_i+1}] do
{
	_badspot = false;
	
	_chosenPos = [_position, 8, 120, 3, 0, 0.2, 0] call BIS_fnc_findSafePos;
	
	if !(count _trenchLocs == 0) then {
		{
			if ((_x distance _chosenPos < 15) || (artilleryArea distance _chosenPos > 600)) then {
				_badspot = true;
			} else {
				_badspot = false;
			};
		} foreach _trenchLocs;
	};
	
	while {_badspot} do {
		_chosenPos = [_position, 20, 70, 6, 0, 0.2, 0] call BIS_fnc_findSafePos;
	};
	
	_trenchLocs = _trenchLocs + [_chosenPos];
	[[_chosenPos,_targetPosition]] call HZ_fnc_SetupBattery;
};
