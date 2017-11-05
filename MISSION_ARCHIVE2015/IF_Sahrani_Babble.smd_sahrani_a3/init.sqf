#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";

 
titleText ["1530hrs\n\n", "BLACK FADED"];


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";


player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 


sleep 6;
titleText ["A Sahrani insurgent group acquired Iranian munitions and weapons from an unknown source.", "BLACK FADED"];
sleep 7.5;
titleText ["The Royal Army Corps of Sahrani have secured the last known position of the munitions with little luck of securing the crates themselves.\n\n", "BLACK FADED"];
sleep 8.4;
titleText ["9IFID 1PLT with an attached RACS Infantry squad with locate and destroy the munitions crates.", "BLACK FADED"];
sleep 6.7;
titleText ["Sahrani Babble\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];


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
