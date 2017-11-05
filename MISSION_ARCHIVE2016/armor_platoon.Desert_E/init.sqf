
#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	[] spawn { //Spawns code running in parallel
	
		sleep 2;
		"" call FNC_StartingCount; //DO NOT REMOVE
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE


if (isServer) then {
//	call compile ("AMET" callExtension "init" );
};