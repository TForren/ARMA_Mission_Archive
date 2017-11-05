_towns = (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital","NameCity","NameVillage"], 25000]);



[] spawn {
	sleep 2;
	{_x moveincargo armsVehicle} foreach (list startingOpfor);
};
//SystemChat "Should be getting here..";

HZ_fnc_deliverArms = {
	chosenTown = _this;
	opforPoints = opforPoints + 1;
	publicVariable "opforPoints";

	_loadouts = ["I_MG","I_RIF","I_AT","I_MARK"];
	_militiaGroup = createGroup independent;
	
	for [{_i=0}, {_i< (4 + random (4))}, {_i=_i+1}] do
	{
		_spawnPos = (armsVehicle modelToWorld[5+random(10),5+random(10),0]);
		_newDuder1 = _militiaGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];

		[_newDuder1,_loadouts call BIS_fnc_selectRandom] call FNC_GearScript;
		sleep 0.2;
	};
	[_militiaGroup, _militiaGroup, 100] call CBA_fnc_taskDefend;
	[leader _militiaGroup, "akForEveryone",200] call CBA_fnc_globalSay3d;

	_spawnPos = ([getpos armsVehicle, 4, 50, 3, 0, 10, 0] call BIS_fnc_findSafePos);
	_possibleVehicles = ["CUP_O_UAZ_SPG9_RU", "CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_AGS30_RU", "CUP_O_LR_MG_TKM", "CUP_O_LR_SPG9_TKM"];
	_technical = (_possibleVehicles call BIS_fnc_selectRandom) createvehicle _spawnPos;
	
	_technicalGroup = createGroup independent;
	
	_driver = _technicalGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];
	_gunner = _technicalGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];
	_pass = _technicalGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];
	_driver moveindriver _technical;
	_gunner moveingunner _technical;
	_pass moveincargo _technical;
	{[_x,_loadouts call BIS_fnc_selectRandom] call FNC_GearScript;} foreach [_driver,_gunner,_pass];
	
	[_technicalGroup] spawn {
		_group = _this select 0;
		while {true} do {
			_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_wp = _group addWaypoint [_avgLoc , 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointSpeed "NORMAL";
			sleep 60;
		};
	};
	
};

[_towns] spawn {
	_towns = _this select 0;
	_usedTowns = [];
	while {opforPoints < 4} do {
		_startTime = time;
		_endTime = _startTime + (60 * 12);
		chosenTown = _towns call BIS_fnc_selectRandom;
		publicVariable "chosenTown";
		while {chosenTown in _usedTowns} do {
			chosenTown = _towns call BIS_fnc_selectRandom;
			sleep 0.01;
		};
		_usedTowns = _usedTowns + [chosenTown];
		//dealer customChat [armsDealerChannel, format ["We must deliver to %1. They need AKs.",text chosenTown]];
		// <params1> someScriptCommand <params2>;
		[dealer, [armsDealerChannel, format ["We must deliver to %1. They need AKs.",text chosenTown]]] remoteExec ["customChat", 0, true];
		["deliver",  (getpos chosenTown)] remoteExec ["setmarkerpos", 0, true];

		waitUntil{
			sleep 1;
			curDist = (armsVehicle distance [getpos chosenTown select 0, getpos chosenTown select 1,0]);
			(time > _endTime) || ((curDist < 50) && (speed armsVehicle < 3));
		};
		
		if (curDist < 90) then {
			chosenTown call HZ_fnc_deliverArms;
			[dealer, [armsDealerChannel, format ["Delivery to %1 Successful! AK-47s for Everyone!",text chosenTown]]] remoteExec ["customChat", 0, true];
			sleep 1;
			[dealer, [armsDealerChannel, "We will have our next delivery soon... For now we must wait."]] remoteExec ["customChat", 0, true];
			sleep (60 * 5);
		} else { //time out
			[dealer, [armsDealerChannel, format ["Delivery to %1 failed! We took too long!",text chosenTown]]] remoteExec ["customChat", 0, true];
			_usedTowns = _usedTowns - [chosenTown];
		};
	};
}