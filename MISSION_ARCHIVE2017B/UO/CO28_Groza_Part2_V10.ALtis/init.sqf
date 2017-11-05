#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE

asr_ai3_main_setskills = 0;
if (isServer) then 
{

	COUNTUNITS(STARTCOUNT); //DO NOT REMOVE
	//[] execVM "capturezone.sqf";
	[] spawn { //Spawns code running in parallel
	
		while {!missionEnded} do 
		{ //Loops while the mission is not ended
		
			COUNTUNITS(CURRENTCOUNT); //DO NOT REMOVE
			
			["serverDate", [date select 3, date select 4]] call CBA_fnc_publicVariable; //Sends the hour and min of the server to all players
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE
			
		};
		
	};
	
};

#include "modules\modules.sqf" //DO NOT REMOVE