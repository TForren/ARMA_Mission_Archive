
//Clients will get these



//Stuff only the server/headless will use
if (!hasInterface || isServer) then {

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

//not utility
HZ_fnc_setupTrench = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupTrench.sqf";
HZ_fnc_setupPatrol = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupPatrol.sqf";
HZ_fnc_entrenchArea = compile preprocessfilelinenumbers "HZ\HZ_fnc_entrenchArea.sqf";

HZ_fnc_activateQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_activateQRF.sqf";
HZ_fnc_setupQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_setupQRF.sqf";


};
EnemyAlerted = false;
publicVariable "EnemyAlerted";

TrenchUnits = [];
publicVariable "TrenchUnits";


fnc_activateHunters = {
	_enemyTargets = _this select 0;
	{
		_wpLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		_wpLoc = [(_wpLoc select 0) + (random 1000 - 500), (_wpLoc select 1) + (random 1000 - 500), 0];
		_wp = _x addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointBehaviour "AWARE";
		
		//hint format ["activating hunter going to: %1",_wpLoc];

	//	_curGroup = (group _x);
	//	{
	//		_curGroup reveal [_x,4];
	//	} foreach _enemyTargets;
	//
	} foreach [hunter1,hunter2];
};

if (!hasInterface || isServer) then {
	[] spawn {
		sleep (20 * 60);
		_initPos = [[west,false]] call HZ_fnc_avgSideLoc;
		[[_initPos,qrfGroups,400]] call HZ_fnc_activateQRF;
	};
	
	[] spawn {
	
		while {!EnemyAlerted} do {
			{
				if (behaviour _x == "COMBAT") then {
					EnemyAlerted = true;
					publicVariable "EnemyAlerted";
					[] call fnc_activateHunters;
				};
				sleep 0.1;
			} foreach TrenchUnits;
			sleep 10;
		};
	}

};