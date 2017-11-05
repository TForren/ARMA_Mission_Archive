#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
 
//titleText ["\n\n", "BLACK FADED"]; //THIS IS ENDED IN HZ_SETUP. ugly yes I know.

0 setFog [0.33, .5, 6.8];
ExecVM "playRadio.sqf"; 


if (isServer) then {

//laptop
light1="#lightpoint" createVehicle (getpos laptop);
light1 setLightBrightness 0.027;
light1 setLightAmbient [1,1,1];
light1 setLightColor [0,0,0];
light1 lightAttachObject [laptop,[0,0,0]];

{
_x setDamage 1;
sleep 0.01;
} forEach (getPos generator nearObjects ["Lamps_Base_F", 500]) + (getPos generator nearObjects ["PowerLines_base_F", 500]);
	
	
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
