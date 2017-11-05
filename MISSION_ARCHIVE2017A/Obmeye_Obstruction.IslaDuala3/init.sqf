
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
	//{_x setVariable["ASR_AI_Exclude", true] } foreach allUnits;
	missionWon = false;
	RydHQ_Debug = false;
	RydHQ_DebugII = false;
	RydHQ_ChatDebug = false;
	//RydHQ_GroupMarks = [west,east,resistance,civilian];
	RydHQ_ChatDebug = false; 

	RydHQ_NoRec = 10000;
	RydHQ_RapidCapt = 500;

	RydHQ_Wait = 1;
	//RydHQ_ArtyShells = 1;
	RydART_Safe = 100;
	RydART_Acc = 2;
	
	RydHQ_SubAll = true;
	RydHQ_IdleOrd = false;
	RydHQ_fast = true;
	RydHQ_CargoFind = 1;
	RydHQ_CaptLimit = 3;
	RydHQ_ObjHoldTime = 60;
	RydHQ_UnlimitedCapt = true;
	
	RydHQ_Add_OtherArty = [
		[["rhs_2b14_82mm_vdv"],["rhs_mag_3vo18_10","rhs_mag_3vo18_10","rhs_mag_3vo18_10","",""]],
		[["lop_tka_bm21"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]],
		[["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
	];

	nul = [] execVM "RydHQInit.sqf";
};