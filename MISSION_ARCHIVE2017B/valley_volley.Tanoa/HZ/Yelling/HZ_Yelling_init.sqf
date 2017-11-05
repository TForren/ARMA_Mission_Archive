HZ_fnc_AIYell = compile preprocessfilelinenumbers "HZ\Yelling\HZ_fnc_AIYell.sqf";
HZ_fnc_areaYell = compile preprocessfilelinenumbers "HZ\Yelling\HZ_fnc_areaYell.sqf";
_faction = independent;
_yellOnFireChance = 0.75;
_coolDown = 15;
excludeUnits = [];

#include "greekVoices.sqf";

{
	if ((side _x == _faction) && !(_x in excludeUnits)) then {
		_x setVariable ["HZ_recentYell", false];
		_x setVariable ["HZ_yellOnFireChance", _yellOnFireChance];
		_x setVariable ["HZ_yellCoolDown", _coolDown];
		
		[_x] spawn {
			_unit = _this select 0;
			sleep (random 100);
			while {alive _unit} do {
				if (random 1 > 0.5) then {
					if (behaviour _unit == "COMBAT") then {
						[_unit,greek_all_combat] call HZ_fnc_AIYell;
					};
					if ( (behaviour _unit == "SAFE") || (behaviour _unit == "AWARE")) then {
						[_unit,greek_all_safe] call HZ_fnc_AIYell;
					};
				};
				sleep (70 + random 170);
			};
			
		};
		//_yellEH = _x addEventHandler ["fired", {[(_this select 0)] call HZ_fnc_AIYell}];
		//_yellEH2 = _x addEventHandler ["killed", {[(_this select 0),_faction,20] call HZ_fnc_areaYell}];
	};
} foreach allUnits;

{
	//_yellEH3 = _x addEventHandler ["killed", {[(_this select 0),_faction,200] call HZ_fnc_areaYell}];
} foreach vehicles;