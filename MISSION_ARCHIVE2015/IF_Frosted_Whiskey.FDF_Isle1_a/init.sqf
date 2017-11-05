#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";


 
titleText ["\n\n", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

[] execVM "modules\goon_snowstorm.sqf";



sleep 6;
titleText ["0755Hrs: 101st Airborne 32nd Regiment jump into Russian controlled territory.", "BLACK FADED"];
sleep 7.5;
titleText ["Soon to land in the hills of Northern Podagorsk, the 101st will rally and move to complete their objective.\n\n", "BLACK FADED"];
sleep 7.5;
titleText ["With Russian sentries scattered across the AO, enemy contact is an inevitability.", "BLACK FADED"];
sleep 7.1;
titleText ["Frosted Whiskey\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];


if (isServer) then {

	//AAR System
	call compile ("AMET" callExtension "init" );

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
