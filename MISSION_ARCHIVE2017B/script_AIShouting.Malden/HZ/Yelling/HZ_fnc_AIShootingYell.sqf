_unit = _this select 0;
_yells = _this select 1;
_yellOnFireChance = _unit getVariable "HZ_yellOnFireChance";

if !(_unit getVariable "HZ_recentYell") then {
	if (random 1 < _yellOnFireChance) then {
		
		
		[_unit,_yells] spawn {
			_unit = _this select 0;
			_yells = _this select 1;
			
			_chosenYell = _yells call BIS_fnc_selectRandom;
			playSound3D [_chosenYell,_unit];
			_unit setVariable ["HZ_recentYell", true];	
			sleep 5;
			if (random 1 > 0.5) then {
				_chosenYell = _yells call BIS_fnc_selectRandom;
				playSound3D [_chosenYell,_unit];
			};
			sleep 5;
			//sleep _yellCoolDown/2;
			_unit setVariable ["HZ_recentYell", false];
		};
	};
};