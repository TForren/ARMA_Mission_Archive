#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE
#include "HZ\HZ_init.sqf"; //Hoizen stuff

[] execVM "core\CSSA3\CSSA3_init.sqf";

#include "HZ\HZ_PlayerSetup.sqf"; //Hoizen stuff


if (isServer) then {
	fired = false;
	
	//[east, (getmarkerpos "respawn_east")] call BIS_fnc_addRespawnPosition;
	
	[] spawn { //Spawns code running in parallel
	
		"" call FNC_StartingCount; //DO NOT REMOVE
		
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			"" call FNC_CurrentCount; //DO NOT REMOVE
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE

		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE



while {true} do {
	{
		if (!isPlayer _x) then {
			if (animationState _x == "amovppnemstpsraswrfldnon") then {
				_x setunitpos "UP";
	//			hint format["proner! %1",_x];
			};
		};
	} foreach AllUnits;
	sleep 1;
};
