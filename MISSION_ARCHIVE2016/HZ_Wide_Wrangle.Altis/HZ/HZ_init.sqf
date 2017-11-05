
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


[] spawn {
	sleep 20;
	_startTime = time;
	_endTime = _startTime + (20 * 60);
	_startCount = 0;
	{
		_startCount = _startCount + (count units _x);
	} foreach (list trenchedarea1);
		
	started = false;
	while {!started} do {
		_count = 0;
		{
			_count = _count + (count units _x);
		} foreach (list trenchedarea1);
		
		if ((time >= _endTime) || (_count < (_startCount / 3.2)) ) then {
			_initPos = [[west,false]] call HZ_fnc_avgSideLoc;
			[[_initPos,qrfGroups,400]] call HZ_fnc_activateQRF;	
			started = true;
		};
		sleep 5;
	};
	
};

