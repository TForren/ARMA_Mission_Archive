_townArray = _this select 0;
_randomPosArray = _this select 1;

_chosenCategory = categories call BIS_fnc_selectRandom;
_chosenMission = _chosenCategory call BIS_fnc_selectRandom;
_chosenFaction = [availableFactions call BIS_fnc_selectRandom] call HZ_fnc_getFaction;

_missionHandle = [_townArray,_randomPosArray,_chosenFaction] call _chosenMission;

missionInProgress = true;
MissionCount = MissionCount + 1;

sleep 2;
[west, position (curMissionObjectives select 0), curMissionTitle, curMissionDescription, "curOBJWP"] call FNC_ADDTASK;
[curMissionTitle, "Assigned"] call FNC_SETTASKSTATE;

