#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE
Drug_Trig = false;
Assasin_Trig = false;
Radar_Trig = false;
Airport_Trig = false;
Intel_Trig1 = false;
Intel_Trig2 = false;
Intel_Trig3 = false;
ObjectivesComplete = false;

if (isServer) then {
	rnumber=floor(random 3); // Used for generating different missions
	[] execVM "T8_missionEXEC.sqf"; // used for spawning units.
	"" call FNC_StartingCount; //DO NOT REMOVE
	_handle = execVM "Postion.sqf"; 
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

