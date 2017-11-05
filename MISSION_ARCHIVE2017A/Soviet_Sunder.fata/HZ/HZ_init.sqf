
//Clients will get these



//Stuff only the server will use
if (isServer) then {

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

//not utility
HZ_fnc_setupTrench = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupTrench.sqf";
HZ_fnc_setupPatrol = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupPatrol.sqf";
HZ_fnc_entrenchArea = compile preprocessfilelinenumbers "HZ\HZ_fnc_entrenchArea.sqf";


};
EnemyAlerted = false;
publicVariable "EnemyAlerted";

TrenchUnits = [];
publicVariable "TrenchUnits";


hunters = [];
{
	if (random 1 > 0.5) then {
		{deletevehicle _x} foreach crew _x;
		deletevehicle _x;
	} else {
		hunters = hunters + [_x];
	}
} foreach [vic1,vic2];

fnc_activateHunters = {
	_enemyTargets = _this select 0;
	_wpLoc = [0,0,0];
	{
		if (count _enemyTargets == 0) then {
			_wpLoc = [7062.93,1739.9,0];
		} else {
			_wpLoc = [_enemyTargets] call HZ_fnc_avgUnitLoc;
		};
		
		_wp = (group _x) addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "FAST";
		//hint format ["activating hunter going to: %1",_wpLoc];
	/*	
		_curGroup = (group _x);
		{
			_curGroup reveal [_x,4];
		} foreach _enemyTargets;
		*/
	} foreach hunters;
};

[] spawn {
	_enemyTargets = [];
	
	while {true} do {
		{
			if (side _x == Independent) then {
				if (behaviour _x == "COMBAT") then {
					EnemyAlerted = true;
					_enemyTargets = _enemyTargets + [(assignedTarget _x)];
					{
						_curDuder = _x;
						{
							_curDuder reveal [_x,4];
						} foreach _enemyTargets;
					} foreach TrenchUnits;
					[_enemyTargets] call fnc_activateHunters;
				}; //end combat check
			};
		} foreach AllUnits;
	sleep 60;
	};
};
