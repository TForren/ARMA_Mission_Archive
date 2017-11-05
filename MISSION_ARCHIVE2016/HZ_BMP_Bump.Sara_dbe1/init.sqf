#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
 
#include "HZ_Setup.sqf"; //Hoizen stuff

_any=[
	[
	["BMP Bump","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
sleep 1;




if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			"" call FNC_CurrentCount; //DO NOT REMOVE
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE

		};	
	};
};

if (isServer) then {
	_hillBuildings = nearestTerrainObjects [(getmarkerpos "destroy"), ["building","house"], 40];
	{
		_x setdamage 1;
		sleep 0.01;
	} foreach _hillBuildings;
	
		_townBuildings = nearestTerrainObjects [(getmarkerpos "town"), ["building","house"], 250];
	{
		if (random 1 > 0.8) then {
			_x setdamage 1;
			sleep 0.01;
		};
	} foreach _townBuildings;

};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE
