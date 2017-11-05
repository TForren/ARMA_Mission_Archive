
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



if (isServer) then {
	center1Pos = getpos center1;
	center2Pos = getpos center2;
	center3Pos = getpos center3;
	centers = [center1Pos,center2Pos,center3Pos];

	chosenCenter = centers call BIS_fnc_selectRandom;
	finalPos = [chosenCenter, 0, 150, 1, 0, 0.4, 0, [], [[], chosenCenter]] call BIS_fnc_findSafePos;

	cache setpos finalPos;

	reds = ["r1","r2","r3"];
	blues = ["b1","b2","b3"];

	chosenRed = reds call BIS_fnc_selectRandom;
	chosenBlue = blues call BIS_fnc_selectRandom;

	starts = [chosenRed,chosenBlue];

	bluforStart = starts call BIS_fnc_selectRandom;
	opforStart = 0;

	if (bluforStart == chosenRed) then {
		opforStart = chosenBlue;
	} else {
		opforStart = chosenRed;
	};

	publicVariable "opforStart";
	publicVariable "bluforStart";
	
	bluforStartPos = getmarkerpos bluforStart;
	opforStartPos = getmarkerpos opforStart;

	_bStart = createMarker ["bluStart",bluforStartPos];
	_bstart setMarkerPos bluforStartPos;
	_bStart setMarkerShape "ICON";
	_bStart setMarkerType "hd_dot";
	_bStart setMarkerColor "ColorBlue";
	_bStart setMarkerText "Blufor";

	_rStart = createMarker ["redStart", opforStartPos];
	_rStart setMarkerPos opforStartPos;
	_rStart setMarkerShape "ICON";
	_rStart setMarkerType "hd_dot";
	_rStart setMarkerColor "ColorRed";
	_rStart setMarkerText "Opfor";

	bluVic setpos bluforStartPos;
	opVic setpos opforStartPos;
	
	{
		if (side _x == east) then {
			_x setpos ([opforStartPos, 0, 20, 1, 0, 0.8, 0, [], [[], opforStartPos]] call BIS_fnc_findSafePos);
		};
		if (side _x == west) then {
			_x setpos ([bluforStartPos, 0, 20, 1, 0, 0.8, 0, [], [[], bluforStartPos]] call BIS_fnc_findSafePos);
		};
	} foreach allunits;
	
	[] spawn {
		waitUntil{sleep 1; time > (60 * 10);};
		_chem = "Land_Camping_Light_F" createvehicle (getpos cache);
		_smoke = "SmokeShellYellow" createvehicle (getpos cache);
		
	};

};