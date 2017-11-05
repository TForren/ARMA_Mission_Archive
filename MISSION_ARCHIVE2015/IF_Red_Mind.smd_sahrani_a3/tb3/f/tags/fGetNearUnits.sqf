private ["_player","_displayDistance","_result","_nearUnits","_playerSide"];

_player = _this select 0;
_displayDistance = _this select 1;
_displayBase = _displayDistance / 10;
_displayRange = 20;

_sunState = sunOrMoon;

if (_sunState <= 0.2) then {_displayDistance = 15};

_nearUnits = nearestObjects [_player, ["CAManBase"], _displayDistance] - [_player];
_result = [];

_playerSide = _player getVariable "tb3_unitSide";

{
	if (isPlayer _x) then {
		if (_sunState <= 0.2) then {
			if (currentVisionMode player > 0) then {
				_displayRange = _displayDistance;
			} else {
				_displayAdd		= 5 * moonIntensity;
				_displayRange = _displayBase + _displayAdd;
			};
		};		
	
		if (_x getVariable "tb3_unitSide" == _playerSide) then {
			_erf = terrainIntersect [eyePos _player, eyePos _x];
			_obj = lineIntersects [eyePos _player, eyePos _x, _player];
			_dis = _player distance _x;

			if (!_erf && !_obj && _dis <= _displayRange) then {
				_result set [(count _result), _x];
			};
		};
	};
} forEach _nearUnits;

_result