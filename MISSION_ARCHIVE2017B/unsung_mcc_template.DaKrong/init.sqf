
#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel

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



if (isServer) then {

	blop = [] spawn {
		
		aircraft = ["uns_UH1D_m60", "UNS_AH1G_FFAR","uns_ch47_m60_army","uns_ch34_USMC_M60"];
		while {true} do {
			_chosenCraft = aircraft call BIS_fnc_selectRandom;
			_chosenDir = (random 360);
			flyOverCenter setdir _chosenDir;
			flyOverSpawn setpos (flyOverCenter modelToWorld [0,4185.47,0]);
			flyOverEnd setpos (flyOverCenter modelToWorld [0,-4185.47,0]);	
		
			switch (_chosenCraft) do {
				case "uns_UH1D_m60": {
					ambFlyby1 = [
						flyOverSpawn modelToWorld [0,0,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [
						flyOverSpawn modelToWorld [0,-100,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby3 = [
						flyOverSpawn modelToWorld [0,-200,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby4 = [
						flyOverSpawn modelToWorld [0,-300,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
				};	
				case "uns_ch47_m60_army": {
					ambFlyby1 = [
						flyOverSpawn modelToWorld [0,0,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [
						flyOverSpawn modelToWorld [0,-140,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby3 = [
						flyOverSpawn modelToWorld [0,-240,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby4 = [
						flyOverSpawn modelToWorld [0,-340,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
				};	
				case "UNS_AH1G_FFAR": {
					ambFlyby1 = [
						flyOverSpawn modelToWorld [0,0,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [
						flyOverSpawn modelToWorld [-100,-100,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
				};	
				case "uns_ch34_USMC_M60": {
					ambFlyby1 = [
						flyOverSpawn modelToWorld [0,0,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
					ambFlyby2 = [
						flyOverSpawn modelToWorld [0,-100,0], 
						flyOverEnd modelToWorld [0,0,0], 100, 
						"NORMAL", _chosenCraft, WEST
					] call BIS_fnc_ambientFlyBy;
				};	
				default {};
			};
			sleep 300 + random 60;
		};
	};
};