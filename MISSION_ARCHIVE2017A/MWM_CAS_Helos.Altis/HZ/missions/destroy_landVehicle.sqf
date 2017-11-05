/* 
Missions setup for destroying a land vehicle.
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

_chosenVehicleType = [_factionVehicles, _factionVehiclesArmed,_factionAA,_factionArtillery,_factionTanks] call BIS_fnc_selectRandom;

_chosenVehicle = _chosenVehicleType call BIS_fnc_selectRandom;
_neareastTown = [_chosenPos,_townArray] call HZ_fnc_getNearestTown;
_objName = getText (configFile >> "cfgVehicles" >> _chosenVehicle >> "displayname");

curMissionTitle = format ["%1: Destroy %2 %3",MissionCount,_factionName,_objName];
curMissionDescription = format ["A %1 %2 has been spotted near %3. It must be destroyed.", _factionName,_objName,_neareastTown];
curMissionDescriptionShort = "Destroy vehicle";


_objective = _chosenVehicle createvehicle getpos _center;
_objective setVectorUp [0,0,0];

curMissionObjectives = curMissionObjectives + [_objective];

//================= Spawning mission objects ==========================================
_objects = [
// CLASSNAME, relativePos, added rotation
["Land_fort_artillery_nest", [0,5,-1], 0],
["ClutterCutter_EP1", [0,0,0], 0]
];

{
	_classname = (_x select 0);
	_relPos = (_x select 1);
	_relDir = (_x select 2);
	_curObject = _classname createVehicle (_center ModelToWorld _relPos);
	_curObject setpos (_center ModelToWorld _relPos);
	_curObject setdir (getDir _center + _relDir);
	curMissionObjects = curMissionObjects + [_curObject];
} foreach _objects;
//=====================================================================================

//================= Spawning mission units ============================================

//TODO
//for loop spawning enough enemies based on current player count
//Add each unit and vehicle to curMissionUnits[]
_patrolCount = 0;
_vehCount = 0;
_rad = 50;
_acc = 0;
for "_i" from 0 to difficultyCoeff do {
	_acc = _acc + 0.40;
	if (_acc > 1) then {
		_patrolCount = _patrolCount + 1;
		_vehCount = _vehCount + 1;
		_rad = _rad + 80;
		_acc = 0;
	};
};


for "_i" from 0 to _patrolCount do {
	[[_factionUnits, _chosenPos,_rad]] call HZ_fnc_spawnPatrol;
};

for "_i" from 0 to _vehCount do {
	if (random 1 > 0.75) then {
		[[_factionUnits,_factionTanks, _chosenPos,_rad,true]] call HZ_fnc_spawnPatrolVehicle;
	} else {
		[[_factionUnits,_factionVehiclesArmed, _chosenPos,_rad,false]] call HZ_fnc_spawnPatrolVehicle;
	};
};

for "_i" from 0 to floor (_vehCount/1.5) do {
	[[_factionUnits,_factionAA, _chosenPos,_rad,true]] call HZ_fnc_spawnPatrolVehicle;
};


//=====================================================================================
endConditionsHndl = [] spawn {
	sleep 10;
	waitUntil{sleep 1; !(isNull (curMissionObjectives select 0))};
	_objective = curMissionObjectives select 0;
	_playersSurvive = true;
	
	while {missionInProgress} do {
		sleep 5;
		systemchat format ["checking if %1 is alive: %2",_objective, alive _objective];
		if (!alive _objective) exitWith {
			diag_log format ["objective destroyed! Wait for player survival"];
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

