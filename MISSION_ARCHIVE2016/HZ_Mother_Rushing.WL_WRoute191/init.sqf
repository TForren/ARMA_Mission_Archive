#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//===========Snow n' stuff=====================
[] execVM "scripts\goon_snowstorm.sqf";
0 setfog [1,0.045,30];
setWind [2,2,false];
_nul = [player, 0.01] execvm "scripts\breath.sqf";
//======================================================

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE

			// Time limit and message is set in the settings.sqf
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition, do not MODIFY THIS
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
			
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

if (isServer) then {
	call compile ("AMET" callExtension "init" );
};

