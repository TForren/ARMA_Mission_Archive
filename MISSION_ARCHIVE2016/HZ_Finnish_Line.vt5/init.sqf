#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
   execVM "randomWeather2.sqf";



#include "HZ_Setup.sqf"

titleText ["", "BLACK IN", 8];
sleep 8;
_any=[
	[
	["Finnish Line","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			"" call FNC_CurrentCount; //DO NOT REMOVE
			#include "customization\endConditions.sqf" //DO NOT REMOVE

		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE


