#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE
#include "HZ\HZ_PlayerSetup.sqf"; //Hoizen stuff
#include "HZ\HZ_init.sqf"; //Hoizen stuff


if (isServer) then {
	[false,30,true,true,30,0,false,[]] execVM "WerthlesHeadless.sqf";
};

_any=[
	[
	["VIP Vacation","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
sleep 1;


vipKilled = false;
PublicVariable "vipKilled";


if (isServer) then {
	
	//[east, (getmarkerpos "respawn_east")] call BIS_fnc_addRespawnPosition;

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


//WaitUntil {Sleep 1;Local Player};
      [east, "EAST1"] call BIS_fnc_addRespawnInventory;
      [east, "EAST2"] call BIS_fnc_addRespawnInventory;
      [east, "EAST3"] call BIS_fnc_addRespawnInventory;
      [east, "EAST4"] call BIS_fnc_addRespawnInventory;
      [east, "EAST5"] call BIS_fnc_addRespawnInventory;
      [east, "EAST6"] call BIS_fnc_addRespawnInventory;
  //    _gear = [west, "EAST1"] call BIS_fnc_addRespawnInventory;
  //    _gear = [west, "Medicz"] call BIS_fnc_addRespawnInventory;
      