_towns = (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital","NameCity","NameVillage"], 10000]);

#include "init_task_control.sqf";

[] spawn {
	sleep 2;
	{_x moveincargo armsVehicle} foreach (list startingOpfor);
};
//SystemChat "Should be getting here..";

HZ_fnc_deliverArms = {
	chosenTown = _this;
	opforPoints = opforPoints + 1;
	publicVariable "opforPoints";

	_loadouts = ["O_MG","O_RIF","O_AT","O_MARK"];
	_militiaGroup = createGroup independent;
	
	//single AA duder
	_spawnPos = (armsVehicle modelToWorld[5+random(10),5+random(10),0]);
	_newDuder1 = _militiaGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];
	[_newDuder1,"O_AA"] call FNC_GearScript;
	
	for [{_i=0}, {_i< (4 + random (4))}, {_i=_i+1}] do
	{
		_spawnPos = (armsVehicle modelToWorld[5+random(10),5+random(10),0]);
		_newDuder1 = _militiaGroup createUnit ["I_soldier_F", _spawnPos, [], 0, "FORM"];

		[_newDuder1,_loadouts call BIS_fnc_selectRandom] call FNC_GearScript;
		sleep 1;
	};
	[_militiaGroup, _militiaGroup, 100] call CBA_fnc_taskDefend;
	[leader _militiaGroup, "akForEveryone",200] call CBA_fnc_globalSay3d;

	_spawnPos = ([getpos armsVehicle, 4, 50, 3, 0, 10, 0] call BIS_fnc_findSafePos);
	_possibleVehicles = ["LOP_AFR_Landrover_M2", "LOP_AM_Landrover_M2", "LOP_AM_UAZ_AGS", "LOP_AM_UAZ_SPG"];
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
	//_usedTowns = [];
	_objCount = 1;
	_objName = "";
	[east, position armsVehicle, "Waiting", "We must wait for our next purchase order. It should not take longer than 6 minutes", "Waiting"] call FNC_ADDTASK;
	["Waiting", "Assigned"] call FNC_SETTASKSTATE;

	sleep (60);
	
	while {opforPoints < 5} do {
		_startTime = time;
		_endTime = _startTime + (60 * 19);
		chosenTown = _towns call BIS_fnc_selectRandom;
		_towns = _towns - [chosenTown];
		_endDate = numberToDate [date select 0,_endTime];
		publicVariable "chosenTown";
		/*while {chosenTown in _usedTowns} do {
			chosenTown = _towns call BIS_fnc_selectRandom;
			sleep 0.01;
		};
		_usedTowns = _usedTowns + [chosenTown];
		*/
		
		_objName = format["Delivery #%1",_objCount];
		
		[east, getpos chosenTown, format ["Delivery: %1", text chosenTown],format ["The village elder of %1 has placed a purchase order for weapons. We must deliver before %2:%3",text chosenTown,_endDate select 3,_endDate select 4], _objName] call FNC_ADDTASK;
		[_objName, "Assigned"] call FNC_SETTASKSTATE;
		
		waitUntil{
			sleep 1;
			curDist = (armsVehicle distance [getpos chosenTown select 0, getpos chosenTown select 1,0]);
			(time > _endTime) || ((curDist < 50) && (speed armsVehicle < 3));
		};

		if (curDist < 100) then {
			chosenTown call HZ_fnc_deliverArms;
			[_objName, "Succeeded"] call FNC_SETTASKSTATE;
			sleep 1;
			["Waiting", "Assigned"] call FNC_SETTASKSTATE;
			sleep (60 * (random(2) + 3));
		} else { //time out
			[_objName, "Canceled"] call FNC_SETTASKSTATE;
			
		};
		
		//_usedTowns = _usedTowns - [chosenTown];
		_objCount = _objCount + 1; 
		sleep (60 * 5);
	};
};