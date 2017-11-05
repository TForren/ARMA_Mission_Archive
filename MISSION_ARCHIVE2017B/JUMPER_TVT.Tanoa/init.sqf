#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE


if (isServer) then {


	[] spawn { //Spawns code running in parallel
	
		sleep 2;
		"" call FNC_StartingCount; //DO NOT REMOVE
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			//#include "customization\endConditions.sqf" //DO NOT REMOVE
			sleep 60;
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

#include "HZ\HZ_init.sqf"; //Hoizen stuff

//[missionNamespace,["WEST1",5,10]] call BIS_fnc_addRespawnInventory;


//[west,["GREN",2,2]] call BIS_fnc_addRespawnInventory;
//[west, "AR"] call BIS_fnc_addRespawnInventory;
[west, "RIF"] call BIS_fnc_addRespawnInventory;
//[west, "RIFAT"] call BIS_fnc_addRespawnInventory;
[east, "Insurgent"] call BIS_fnc_addRespawnInventory;

//[west, [4380.24,9764.63,0]] call BIS_fnc_addRespawnPosition;
//[east, [3998.83,9816.09,0]] call BIS_fnc_addRespawnPosition;

RscSpectator_allowFreeCam = false;

/*
if (!isDedicated) then { //This scope is only for the player
	switch (side player) do { //Checks what team the player is on
		case east: { //If player is east he receives this respawn ticket count
		player addEventHandler ["Respawn",{_yell = player addaction ["YELL LOUDLY", "allah.sqf", [player], 6, false, true, "", "(_target == _this)"];}];
			
			O_headgear = ["LOP_H_Turban_mask","LOP_H_Shemag_RED2","LOP_H_Shemag_RED1","LOP_H_Shemag_OLV","LOP_H_Shemag_GRE","LOP_H_Shemag_BLU","LOP_H_Shemag_BLK","H_Hat_Face_Wrap_Olive","H_Hat_Face_Wrap_Desert","H_Hat_Face_Wrap","H_Hat_Face_Cover_Green","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Black","H_Hat_Face_Cover","H_Hat_Kufiya_C","H_Hat_Kufiya_R","H_Hat_Kufiya_G","H_Hat_Kufiya_F","H_Hat_Kufiya","H_Hat_Kufiya_D","H_Hat_Kufiya_B","H_Hat_Face_Wrap_Sand","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_DPM","H_Hat_Face_Wrap_White","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_Dark","H_Hat_Face_Wrap_Black","H_Hat_Face_Balaclava_T","LOP_H_Turban","LOP_H_Pakol","H_Hat_Turban_D","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Pagri_C","H_Hat_Turban_E","H_Hat_Pagri_B","H_Hat_Turban_B","H_Hat_Taqiyah_B","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E","H_Hat_Taqiyah_C","H_Hat_Taqiyah_A","H_Hat_Pakol","H_Hat_Ghutra","H_Hat_Ghutra_A"];

			O_vest = "V_AFGHAN_6sh46";

			O_uniform = ["LOP_U_AM_Fatigue_01_4","LOP_U_AM_Fatigue_01_6","LOP_U_AM_Fatigue_01","LOP_U_AM_Fatigue_01_5","LOP_U_AM_Fatigue_01_2","LOP_U_AM_Fatigue_01_3","LOP_U_AM_Fatigue_02_3","LOP_U_AM_Fatigue_02_5","LOP_U_AM_Fatigue_02_6","LOP_U_AM_Fatigue_02_4","LOP_U_AM_Fatigue_02_2","LOP_U_AM_Fatigue_02","LOP_U_AM_Fatigue_03_3", "LOP_U_AM_Fatigue_03_6","LOP_U_AM_Fatigue_03_4","LOP_U_AM_Fatigue_03_2","LOP_U_AM_Fatigue_03_5", "LOP_U_AM_Fatigue_03","LOP_U_AM_Fatigue_04_6","LOP_U_AM_Fatigue_04_5","LOP_U_AM_Fatigue_04_4","LOP_U_AM_Fatigue_04_2","LOP_U_AM_Fatigue_04_3","LOP_U_AM_Fatigue_04"];
		};
	}; //End of switch
	
};
*/

if (isServer) then {

	[west, "bluTick" call BIS_fnc_getParamValue] call BIS_fnc_respawnTickets;
	[east, "opTick" call BIS_fnc_getParamValue] call BIS_fnc_respawnTickets;
	

	blop = [] spawn {
		aircraft = ["swop_lambda", "TIE_Stryker","swop_tieb","swop_tie_int","swop_tie_def"];
		while {true} do {
			_chosenCraft = aircraft call BIS_fnc_selectRandom;
		
			switch (_chosenCraft) do {
				case "swop_lambda": {
					ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
				};	
				case "TIE_Stryker": {
					ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [aStart modelToWorld [-55,55,0], aEnd modelToWorld [-55,55,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
				};
				case "swop_tieb": {
					ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [aStart modelToWorld [-55,55,0], aEnd modelToWorld [-55,55,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
				};
				case "swop_tie_int": {
					ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [aStart modelToWorld [-55,55,0], aEnd modelToWorld [-55,55,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
				};
				case "swop_tie_def": {
					ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [aStart modelToWorld [-55,55,0], aEnd modelToWorld [-55,55,0], 280, "LIMITED", _chosenCraft, EAST] call BIS_fnc_ambientFlyBy;
				};
				default { hint "default" };
			};
			
			sleep 60 + random 60;
		};
	};
		/*
	_TimeOfDayParam = "TimeOfDay" call BIS_fnc_getParamValue;
		
		if ((_TimeOfDayParam != -1) && (_TimeOfDayParam != 666)) then {
			
			_date = date;
			_date set [3, _TimeOfDayParam];
			_date set [4, 0];
			[_date] call BIS_fnc_setDate;
			
		} else {
			
			randTime = ((random 15) + 4) - daytime;
			publicVariable "randTime";
			waitUntil{not isNil "randTime"};
			randTime remoteExec ["skipTime", 0, true];
		};
		
	_WeatherParam = "Weather" call BIS_fnc_getParamValue;

	if ((_WeatherParam != -1) && (_WeatherParam != 666)) then {
		
		_overcast = _WeatherParam;
		0 setOvercast (_overcast / 10);

	} else {
		
		0 setOvercast (random 0.6);
		
	};

	_WindParam = "Wind" call BIS_fnc_getParamValue;

	if (_WindParam != -1) then {
		_wind = 0;
		if (_WindParam != 666) then {
			_wind = [0, 2, 4, 6, 8] call BIS_fnc_selectRandom;
		} else {
			_wind = _WindParam;
		};
		0 setWindStr (_wind / 10);

		if ((_wind / 10) * 1.25 > 1) then {

			0 setGusts 1;

		} else {

			0 setGusts ((_wind / 10) * 1.25);

		};
	}; */
};