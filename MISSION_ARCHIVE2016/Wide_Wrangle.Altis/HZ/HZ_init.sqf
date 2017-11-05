
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

HZ_fnc_activateQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_activateQRF.sqf";
HZ_fnc_setupQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_setupQRF.sqf";


};
EnemyAlerted = false;
publicVariable "EnemyAlerted";

TrenchUnits = [];
publicVariable "TrenchUnits";
/*
_cocaineHandl = [] execVM "HZ\HZ_handleCocaine.sqf";

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
	{
		_wpLoc = [_enemyTargets] call HZ_fnc_avgUnitLoc;
		_wp = (group _x) addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "FAST";
		//hint format ["activating hunter going to: %1",_wpLoc];

	//	_curGroup = (group _x);
	//	{
	//		_curGroup reveal [_x,4];
	//	} foreach _enemyTargets;
	//
	} foreach hunters;
};
*/

[] spawn {
	sleep (12 * 60);
	_initPos = [[west,false]] call HZ_fnc_avgSideLoc;
	[[_initPos,qrfGroups,400]] call HZ_fnc_activateQRF;
};

