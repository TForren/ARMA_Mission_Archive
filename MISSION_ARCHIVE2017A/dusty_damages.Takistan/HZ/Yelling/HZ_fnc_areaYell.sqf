_yells = ["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"];
_unit = _this select 0;
_faction = _this select 1;
_radius = _this select 2;

_nearbyDuders = nearestObjects [_unit, ["man"], _radius];
_nearbyYellers = _nearbyDuders;
{ 
	if !(side _x == _faction) then {
		_nearbyYellers = _nearbyYellers - [_x];
	};
} foreach _nearbyDuders;

{
	[_x,_yells] spawn {
		_unit = _this select 0;
		_yells = _this select 1;
		if !(_unit getVariable "HZ_recentYell") then {
			_unit setVariable ["HZ_recentYell", true];
			sleep (random 1);
			_delay = 1.9;
			for "_i" from 0 to 4 do
			{
				_chosenYell = _yells call BIS_fnc_selectRandom;
				[_unit, _chosenYell,70] call CBA_fnc_globalSay3d;
				sleep _delay + (random _delay);
				_delay = _delay + 0.2;
			};
			sleep 30;
			_unit setVariable ["HZ_recentYell", false];
		};
	};

} foreach _nearbyYellers;