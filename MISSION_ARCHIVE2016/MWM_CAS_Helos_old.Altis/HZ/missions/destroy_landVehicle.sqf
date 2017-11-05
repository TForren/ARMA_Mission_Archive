_townArray = _this select 0;
_randomPosArray = _this select 1;
_chosenFaction = _this select 2;
_factionName = _chosenFaction select 0;
_factionUnits = _chosenFaction select 1;
_factionVehicles = _chosenFaction select 2;
_factionAA = _chosenFaction select 3;
_factionArtillery = _chosenFaction select 4;
_factionTanks = _chosenFaction select 5;
_factionHelicopters = _chosenFaction select 6;
_factionJets = _chosenFaction select 7;
_hvtTargets = _chosenFaction select 8;

//====================================================================================

_randomLoc = _randomPosArray call BIS_fnc_selectRandom;
while {_randomLoc in usedLocations} do {
	_randomLoc = _randomPosArray call BIS_fnc_selectRandom;
};
usedLocations = usedLocations + [_randomLoc];
systemchat format ["usedLocations: %1", usedLocations];
_chosenPos = [_randomLoc, 0, 200, 7, 0, 0.1, 0] call BIS_fnc_findSafePos;
_center = "Sign_Sphere10cm_F" createvehicle _chosenPos;

_chosenVehicleType = [_factionVehicles,_factionAA,_factionArtillery,_factionTanks] call BIS_fnc_selectRandom;

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
["Land_fort_artillery_nest_EP1", [0,5,-1.5], 0],
["ClutterCutter_EP1", [0,0,0], 0],
["Land_CamoNet_NATO_EP1", [4.9,0,-2], 90],
["Land_CamoNet_NATO_EP1", [-4.9,0,-2], -90],
["CUP_TKOrdnanceBox_EP1", [-3.8,0,-1.0], 130],
["CUP_TKOrdnanceBox_EP1", [3.7,1,-1.1], 40]
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

//=====================================================================================

//mission specific trigger to finish mission
_endConditionsHndl = [_objective] spawn {
	_objective = _this select 0;
	while {missionInProgress} do {
		sleep 5;
		if (playerDeaths >= (count playableUnits)) exitWith {
			missionInProgress = false;
			missionfailed = true;			
		};
		if (!alive _objective) exitWith {
			diag_log format ["objective destroyed!"];
			missionInProgress = false;
			missionfailed = false;
		};
	};
};


deletevehicle _center;

