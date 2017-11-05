_yells = ["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"];
_unit = _this select 0;
_yellOnFireChance = _unit getVariable "HZ_yellOnFireChance";

if !(_unit getVariable "HZ_recentYell") then {
	if (random 1 < _yellOnFireChance) then {
		
		
		[_unit,_yells] spawn {
			_unit = _this select 0;
			_yells = _this select 1;
			
			_chosenYell = _yells call BIS_fnc_selectRandom;
			[_unit, _chosenYell,70] call CBA_fnc_globalSay3d;
			_unit setVariable ["HZ_recentYell", true];	
			//_yellCoolDown = _unit getVariable "HZ_yellCoolDown";
			//systemchat format["after %1",_yellCoolDown];
			//_yellCoolDown = _this select 1;
			//sleep _yellCoolDown/((random 5) - 2);
			sleep 5;
			if (random 1 > 0.5) then {
				_chosenYell = _yells call BIS_fnc_selectRandom;
				[_unit, _chosenYell,70] call CBA_fnc_globalSay3d;
			};
			sleep 5;
			//sleep _yellCoolDown/2;
			_unit setVariable ["HZ_recentYell", false];
		};
	};
};