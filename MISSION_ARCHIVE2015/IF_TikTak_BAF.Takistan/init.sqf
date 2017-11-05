#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
 
 titleText ["\n\n", "BLACK FADED"]; //THIS IS ENDED IN HZ_SETUP. ugly yes I know.

//field repair and service point
[] execVM "zlt_fieldrepair.sqf";


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

#include "HZ_Setup.sqf"; //Hoizen stuff

_any=[
	[
	["Tik Tak","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
sleep 1;

/*
[] spawn { 
	while {true} do { 
	(list allahTrig) call BIS_fnc_selectRandom say3D (["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"] call BIS_fnc_selectRandom);
	sleep 3.5;
	};
};
*/

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
