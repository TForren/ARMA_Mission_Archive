
#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel

		while {!FW_MissionEnded} do { //Loops while the mission is not ended

			#include "customization\endConditions.sqf" //DO NOT REMOVE
			
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

missionNamespace setVariable [format ["%1",player], 0];

player addMPEventHandler ["mpkilled", {Null = _this execVM "playerkilled.sqf";}];

#include "HZ\HZ_init.sqf"; //Hoizen stuff
DEBUG = false;
wrecks = [];
FinalMessage = "";

if (DEBUG) then {
	i = 0;
	{
		_markerstr = createMarker [format ["mark%1",i],getpos _x];
		_markerstr setMarkerShape "ICON";
		_markerstr setMarkerType "hd_dot";
		i=i+1;
	} foreach wrecks;
};



JBOY_say3d =              compile preprocessFileLineNumbers "JBOY\JBOY_say3d.sqf";
JBOY_turboChicken =       compile preprocessFileLineNumbers "JBOY\JBOY_turboChicken.sqf";

//if jip player then exit
_JIPplayer = not isServer && isNull player;
if (_JIPplayer) exitwith {};
C1 = createAgent ['Cock_random_F', rabbitPos getRelPos [3, 200], [], 0, "NONE"];
C2 = createAgent ['Cock_white_F', rabbitPos getRelPos [2, 100], [], 0, "NONE"];
C3 = createAgent ['Cock_random_F', rabbitPos getRelPos [4, 200], [], 0, "NONE"];
C4 = createAgent ['Cock_white_F', rabbitPos getRelPos [1, 100], [], 0, "NONE"];

{nul = [_x, false] execVM "JBOY\JBOY_animalScatter.sqf";} foreach [C1,C2,C3,C4];