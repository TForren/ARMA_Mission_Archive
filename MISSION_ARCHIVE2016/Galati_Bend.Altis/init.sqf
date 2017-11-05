#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE
#include "HZ\HZ_init.sqf";

{
	_x setVariable ["asr_ai_exclude", true];
} foreach AllUnits;

if (isServer) then {
	[false,30,true,true,30,0,false,[]] execVM "WerthlesHeadless.sqf";
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