/* 
Missions setup for eliminating air contact
*/

_townArray = _this select 0;
_randomPosArray = _this select 1;
_chosenFaction = _this select 2;
_factionName = _chosenFaction select 0;
_factionUnits = _chosenFaction select 1;
_factionVehicles = _chosenFaction select 2;
_factionVehiclesArmed = _chosenFaction select 3;
_factionAA = _chosenFaction select 4;
_factionArtillery = _chosenFaction select 5;
_factionTanks = _chosenFaction select 6;
_factionHelicopters = _chosenFaction select 7;
_factionJets = _chosenFaction select 8;
_hvtTargets = _chosenFaction select 9;

//====================================================================================

_randomLoc = _randomPosArray call BIS_fnc_selectRandom;
while {_randomLoc in usedLocations} do {
	_randomLoc = _randomPosArray call BIS_fnc_selectRandom;
};
usedLocations = usedLocations + [_randomLoc];
systemchat format ["usedLocations: %1", usedLocations];
_chosenPos = [_randomLoc, 0, 200, 7, 0, 0.1, 0] call BIS_fnc_findSafePos;
_center = "Sign_Sphere10cm_F" createvehicle _chosenPos;

_chosenVehicleType = [_factionHelicopters,_factionJets] call BIS_fnc_selectRandom;

_chosenVehicle = _chosenVehicleType call BIS_fnc_selectRandom;
_neareastTown = [_chosenPos,_townArray] call HZ_fnc_getNearestTown;
_objName = getText (configFile >> "cfgVehicles" >> _chosenVehicle >> "displayname");

curMissionTitle = format ["%1: Eliminate %2 %3",MissionCount,_factionName,_objName];
curMissionDescription = format ["A %1 wing of %2 has been spotted patrolling in the area near %3. They must be eliminated.", _factionName,_objName,_neareastTown];
curMissionDescriptionShort = "Eliminate Enemy";


//================= Spawning mission objects ==========================================

//=====================================================================================

//================= Spawning mission units ============================================

_aircraftGroup = creategroup east;

_aircraftCount = 2;
_rad = 1000;
_acc = 0;
for "_i" from 0 to difficultyCoeff do {
	_acc = _acc + 0.20;
	if (_acc > 1) then {
		_aircraftCount = _aircraftCount + 1;
		_rad = _rad + 300;
		_acc = 0;
	};
};

for [{_i=0}, {_i<_aircraftCount}, {_i=_i+1}] do
{
	_spawnedArray = [(_center modelToWorld [_i * 20,_i * 20,100]), 0, _chosenVehicle, _aircraftGroup] call bis_fnc_spawnvehicle;

	_aircraft = _spawnedArray select 0;
	_crew = _spawnedArray select 1;
	if ((_chosenVehicleType select 0) == (_factionJets select 0)) then {
		_aircraft flyinheight 120 + (random 450);
	} else {
		_aircraft flyinheight 20 + (random 140);
	};
	
	curMissionObjectives = curMissionObjectives + [_aircraft];
	curMissionUnits = curMissionUnits + _crew;
};

[_aircraftGroup, getpos _center, _rad, 7, "MOVE", "SAFE", "GREEN", "LIMITED", "STAG COLUMN", "", [3,5,11]] call CBA_fnc_taskPatrol;


//=====================================================================================

//mission specific trigger to finish mission
_endConditionsHndl = [] spawn {
	_deadCount = 0;
	
	while {missionInProgress} do {
		sleep 5;
		{
			if (!alive _x) then {
				_deadCount = _deadCount + 1;
			} else {
				_deadCount = 0;
			};
			
		} foreach curMissionObjectives;
		
		if (_deadCount >= (count curMissionObjectives)) then {
			diag_log format ["all aircraft eliminated!"];
			sleep 11;
			//missionCompleted = true;
		};
	};
};

endConditionsHndl = [] spawn {
	sleep 10;
	waitUntil{sleep 1; !(isNull (curMissionObjectives select 0))};
	_deadCount = 0;
	_playersSurvive = true;
	
	while {missionInProgress} do {
		sleep 5;
		
		{
			if (!alive _x) then {
				_deadCount = _deadCount + 1;
			} else {
				_deadCount = 0;
			};
			
		} foreach curMissionObjectives;
		

		if (_deadCount >= (count curMissionObjectives)) exitWith {
			diag_log format ["aircraft eliminated! Wait for player survival"];
			_i = 0;
			while {_i < 60 && !missionCanceled} do {
				systemchat format ["i:%1",_i];
				if (missionFailed) exitWith {
					_playersSurvive = false;
					systemchat "Players died soon after completing objective. mission failure";
				};
				_i = _i + 1;
				sleep 1;
			};
			if (_playersSurvive) then {
				if (!missionCanceled) then {
					missionCompleted = true;
					systemchat "Players survived. mission completed";
				};
			};
			terminate endConditionsHndl;
		};
	};
};


deletevehicle _center;

