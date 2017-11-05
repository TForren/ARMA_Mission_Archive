
#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE


0 setFog [0.9, 0.02, -10];


if (isServer) then {
	[false,30,true,true,30,0,false,[]] execVM "WerthlesHeadless.sqf";
};

HZ_fnc_ActivateConvoy = {
	{
		{
			if (vehicle _x != _x) then { //in vehicle
				(vehicle _x) enableSimulation true;
				(vehicle _x) hideObject false; 
			};
			_x enableSimulation true;
			_x hideObject false; 
		} foreach units _x;
	} foreach convoyGroups;
	
	_wp = (group c1) addwaypoint [getmarkerpos "convoyEnd",0];
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointFormation "COLUMN";
};


if (player == HC) then {
	[] spawn {
		sleep (60 * 30);
		[] call HZ_fnc_ActivateConvoy;
	};
};

if (isServer) then {
	alerted = false;
	
	convoyGroups = [];
	[] spawn {
		sleep 1;
		{
			if (side _x == east) then {	
				if !((group _x) in convoyGroups) then {
					convoyGroups = convoyGroups + [(group _x)];
				};	
			};
		} foreach list convoyTrig;
		{
			{
				if (vehicle _x != _x) then { //in vehicle
					(vehicle _x) enableSimulation false;
					(vehicle _x) hideObject true; 
				};
				_x enableSimulation false;
				_x hideObject true; 
				_x setSkill ["courage", 1];
				_x setskill ["aimingShake",0.9];
				_x setskill ["aimingAccuracy", 0.21];
			} foreach units _x;
		} foreach convoyGroups;

	};
		

	 { //for all garrison AI, set skill to trash. hard part of the misison is the convoy.
	  if ((side _x == east) && (_x distance [3211.58,1914.9,0] < 500)) then {
	   _x setskill ["aimingShake",0.9];
	   _x setskill ["aimingAccuracy", 0.11];
	  };
	 } foreach allunits;
  
	[] spawn { //Spawns code running in parallel
	
		sleep 2;
		"" call FNC_StartingCount; //DO NOT REMOVE
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE
			
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

#include "HZ\HZ_PlayerSetup.sqf";
