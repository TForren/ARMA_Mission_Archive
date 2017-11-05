#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";

//titleText ["\n\n", "BLACK FADED"]; //THIS IS ENDED IN HZ_SETUP. ugly yes I know.

#include "HZ\HZ_init.sqf"; //Hoizen stuff
#include "HZ\HZ_PlayerSetup.sqf"; //Hoizen stuff


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";




if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE
	
	[] spawn {
		waitUntil{time > 1000};
		while {alive mi8} do {
			
			{ 
				if (side _x == west) then { 
					mi8 reveal [_x, 3]; 
				}
			} foreach allUnits;
			
			avgLoc = [[west,true]] call HZ_fnc_avgUnitLoc;
			_wp1 = (group mi8) addWaypoint [avgLoc , 0];
			_wp1 setWaypointType "DESTROY";
			sleep 50;
		};
	};

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			"" call FNC_CurrentCount; //DO NOT REMOVE
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE

		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE
