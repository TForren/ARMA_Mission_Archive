//player addbackpack "B_OH_T10_Parachute";
//player setpos (player modelToWorld [0,0,600]);
//player action ["openParachute"];
//player spawn {waitUntil{sleep 1; (getpos _this select 2) < 1};sleep 1;hint "fix legs";[player,player] call ace_medical_fnc_treatmentAdvanced_fullHeal};

//ACE_player setHitPointDamage ["HitLegs", 0]
//this setvariable ["ACE_isUnconscious", true, true];
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "leg_r", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "hand_l", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "leg_l", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.8, "head", "punch"] call ace_medical_fnc_addDamageToUnit};

#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel

		while {!FW_MissionEnded} do { //Loops while the mission is not ended

			indCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
			publicVariable "indCasualty";

			westCasualty = "Wehrmacht" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
			publicVariable "westCasualty";
			
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
			sleep (10); 
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE


#include "HZ\HZ_init.sqf";
