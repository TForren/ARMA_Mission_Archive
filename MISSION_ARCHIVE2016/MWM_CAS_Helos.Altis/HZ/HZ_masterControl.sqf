startLoadingScreen ["Loading Mission, please wait..."];
HZ_fnc_prepMap = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepMap.sqf";
HZ_startMission = compile preprocessfilelinenumbers "HZ\missions\HZ_startMission.sqf";
HZ_fnc_getFaction = compile preprocessfilelinenumbers "HZ\factions.sqf";

#include "utilities\init_utilities.sqf";
#include "missions\init_missions.sqf";
#include "missions\init_task_control.sqf";
#include "spawners\init_spawns.sqf";


objectiveComplete = false;
availableFactions = ["ChDKZ","MSV"];
baseObjects = [];
baseObjectInstances = [];
curMissionTitle = "";
curMissionDescription = "";
curMissionDescriptionShort = "";
curMissionObjectives = [];
curMissionObjects = [];
curMissionUnits = [];
usedLocations = [];
difficultyCoeff = 1;
playersRespawned = false;
forcePlayerRespawn = false; publicVariable "forcePlayerRespawn";
townArray = ([] call HZ_fnc_prepMap select 0);
randomPosArray = ([] call HZ_fnc_prepMap select 1);
[] call HZ_fnc_setupBase;


endLoadingScreen;

diag_log format ["townArray: %1", count townArray];
diag_log format ["posArray: %1", count randomPosArray];

//forever loop to give new missions
[] spawn {
	sleep 4;
	[townArray,randomPosArray] call HZ_startMission; //initial mission
	sleep 1;
	while {true} do {
		difficultyCoeff = (count playableUnits);
		
		if (missionInProgress) then {
			if (missionFailed || playerDeaths >= (count playableUnits)) then {
				missionInProgress = false;
				missionCompleted = false;
				missionFailed = true;
			};
			if (missionCompleted) ten {
				missionInProgress = false;
				missionfailed = false;
			};
		} else {
			sleep 1;
			Hint "Incoming Mission...";	
			if (missionFailed) then { 
				[curMissionTitle, "Failed"] call FNC_SETTASKSTATE;
				//[] remoteExec ["HZ_fnc_refreshBase", 0];
				 //["[] call HZ_fnc_refreshBase"] call fnc_DSG_Invoke;
				 [] call HZ_fnc_refreshBase;
				waitUntil{sleep 1; playersRespawned};
				forcePlayerRespawn = false; publicVariable "forcePlayerRespawn";
				playersRespawned = false;
			};
			if (missionCompleted) then {
				[curMissionTitle, "Succeeded"] call FNC_SETTASKSTATE;	
			};
			[] call HZ_fnc_cleanup;
			sleep 1;
			terminate endConditionsHndl;
			[townArray,randomPosArray] call HZ_startMission;
			systemchat format ["%1",curMissionObjectives];
		};
		if (cancelMission) then {
			cancelMission = false;
			publicVariable "cancelMission";
			missionInProgress = false;
			missionfailed = false;
			missionCompleted = false;
			[curMissionTitle, "Canceled"] call FNC_SETTASKSTATE;
			[] call HZ_fnc_cleanup;
		};	
		sleep 2;
	}; //end while
};


