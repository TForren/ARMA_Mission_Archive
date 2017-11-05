if (!isServer) exitWith {};

startLoadingScreen ["Loading My Mission, please wait..."];
HZ_fnc_prepMap = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepMap.sqf";
HZ_startMission = compile preprocessfilelinenumbers "HZ\missions\HZ_startMission.sqf";
HZ_fnc_getFaction = compile preprocessfilelinenumbers "HZ\factions.sqf";

#include "utilities\init_utilities.sqf";
#include "missions\init_missions.sqf";
#include "missions\init_task_control.sqf";

MissionCount = 1;
missionInProgress = false;
missionfailed = false;
objectiveComplete = false;
availableFactions = ["ChDKZ"];
baseObjects = [];
baseObjectInstances = [];
curMissionTitle = "";
curMissionDescription = "";
curMissionDescriptionShort = "";
curMissionObjectives = [];
curMissionObjects = [];
curMissionUnits = [];
usedLocations = [];


townArray = ([] call HZ_fnc_prepMap select 0);
randomPosArray = ([] call HZ_fnc_prepMap select 1);
[] call HZ_fnc_setupBase;

playerDeaths = 0;

endLoadingScreen;

diag_log format ["townArray: %1", count townArray];
diag_log format ["posArray: %1", count randomPosArray];

//forever loop to give new missions
[] spawn {
	[townArray,randomPosArray] call HZ_startMission; //initial mission
	sleep 1;
	while {true} do {
		
		if (!missionInProgress) then {
			Hint "Incoming Mission...";	
			if (!missionFailed) then { //mission won
				[curMissionTitle, "Succeeded"] call FNC_SETTASKSTATE;
				[] call HZ_fnc_cleanup;
			} else { //mission failed
				[curMissionTitle, "Failed"] call FNC_SETTASKSTATE;
				[] call HZ_fnc_refreshBase;
			};
			[townArray,randomPosArray] call HZ_startMission;
		};
		sleep 10;
	}; //end while
};


