#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE


if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE

			// Time limit and message is set in the settings.sqf
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition, do not MODIFY THIS
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
			
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE




if (!isServer) exitWith {};

if (side player == west) then {
	[] spawn {
	titleText ["", "BLACK FADED"]; 
	player setpos (player modelToWorld [0,0,(random 4.5)]);
	titleText ["", "BLACK IN", 8];
	};
};

_parkedVehCount = 40;
_roadList = (getMarkerpos "townMarker") nearRoads 200;

civCarPool = ['CUP_C_Skoda_Blue_CIV', 'CUP_C_Skoda_Green_CIV', 'CUP_C_Skoda_Red_CIV', 'CUP_C_Skoda_White_CIV', 'CUP_C_Datsun', \
			'CUP_C_Datsun_4seat', 'CUP_C_Datsun_Covered', 'CUP_C_Datsun_Plain', 'CUP_C_Datsun_Tubeframe', 'CUP_C_Golf4_black_Civ', \
			'CUP_C_Skoda_White_CIV', 'CUP_C_Golf4_green_Civ', 'CUP_C_Golf4_random_Civ', 'CUP_C_Golf4_red_Civ', 'CUP_C_Golf4_white_Civ', \
			'CUP_C_Golf4_yellow_Civ', 'CUP_C_Octavia_CIV', 'CUP_C_Ural_Civ_01', 'CUP_C_Ural_Open_Civ_03', 'CUP_C_Ural_Open_Civ_02'];
			
_usedSegments = [];

for "_i" from 0 to _parkedVehCount do {
	_chosenCar = civCarPool call BIS_fnc_selectRandom;
	_roadSegment = _roadList call BIS_fnc_selectRandom;
	
	while {_roadSegment in _usedSegments} do {
		_roadSegment = _roadList call BIS_fnc_selectRandom;
	};
	
	_dir = getdir _roadSegment;
	_newCar = _chosenCar createVehicle (getpos _roadSegment);
	_newCar setdamage (random 0.6);
	_newCar setFuel (random 0.7);
	_newCar setVehicleLock "LOCKEDPLAYER";
	_newCar setdir _dir;
	if (random 1 > 0.5) then {
		_newCar setdir _dir + 180;
	};
	_newCar setpos (_newCar modelToWorld [4,0,0]);
	
//	_txt=format["pedestrianMkr%1",getpos _newCar];
//	_debugMkr=createMarker [_txt,getpos _newCar];
//	_debugMkr setMarkerShape "ICON";
//	_debugMkr setMarkerType "mil_box";
//	_debugMkr setMarkerColor "ColorBlack";

};

//if(!isServer) then {waitUntil{!isNull player}};
JBOY_say3d =              compile preprocessFileLineNumbers "JBOY\JBOY_say3d.sqf";
//JBOY_isFetchable =        compile preprocessFileLineNumbers "JBOY\JBOY_isFetchable.sqf";
JBOY_turboChicken =       compile preprocessFileLineNumbers "JBOY\JBOY_turboChicken.sqf";
//featherEffect =           compile preprocessFileLineNumbers "JBOY\featherEffect.sqf";
