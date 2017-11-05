#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
 
titleText ["Welcome to Kunduz.\n\n", "BLACK FADED"];

//field repair and service point
[] execVM "zlt_fieldrepair.sqf";


hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]];
[player, -1.0, .5, true] call BIS_fnc_sandstorm;

hndl ppEffectCommit 0;
// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";


_draw3D = addMissionEventHandler ["Draw3D",{

		if ( (player distance (getmarkerpos "HQ")) < 60) then {

			drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,((getpos b1) select 2) + 2.3], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b5) select 0,(getpos b5) select 1,((getpos b5) select 2) + 2.3], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,0,0,1], [(getpos b6) select 0,(getpos b6) select 1,((getpos b6) select 2) + 2.3], 0, 0, 0, "1'1 Alpha", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,0,1,1], [(getpos b10) select 0,(getpos b10) select 1,((getpos b10) select 2) + 2.3], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
			
			drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b14) select 0,(getpos b14) select 1,((getpos b14) select 2) + 2.3], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,0,0,1], [(getpos b15) select 0,(getpos b15) select 1,((getpos b15) select 2) + 2.3], 0, 0, 0, "1'2 Alpha", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,0,1,1], [(getpos b18) select 0,(getpos b18) select 1,((getpos b18) select 2) + 2.3], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
			
			drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b23) select 0,(getpos b23) select 1,((getpos b23) select 2) + 2.3], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,0,0,1], [(getpos b24) select 0,(getpos b24) select 1,((getpos b24) select 2) + 2.3], 0, 0, 0, "1'3 Alpha", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,0,1,1], [(getpos b26) select 0,(getpos b26) select 1,((getpos b26) select 2) + 2.3], 0, 0, 0, "1'3 Bravo", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,1,0,1], [(getpos b28) select 0,(getpos b28) select 1,((getpos b28) select 2) + 2.3], 0, 0, 0, "1'3 Charlie", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,1,0,1], [(getpos b31) select 0,(getpos b31) select 1,((getpos b31) select 2) + 2.3], 0, 0, 0, "1'3 Delta", 1, 0.04, "TahomaB"]; 
		};
		
	}
];

player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

sleep 7;
titleText ["Population:", "BLACK FADED"];
sleep 3;
titleText ["Population: 99.8% Opfor", "BLACK FADED"];
sleep 3;
titleText ["Happiness:", "BLACK FADED"];
sleep 3;
titleText ["Happiness: 0%", "BLACK FADED"];
sleep 3;
titleText ["Weather:", "BLACK FADED"];
sleep 3;
titleText ["Weather: Shit", "BLACK FADED"];
sleep 3;
titleText ["", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];
sleep 3;

_any=[
	[
	["CO Same ol Cache","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
sleep 1;

if (isServer) then {

	[] spawn { 
		while {true} do { 
		(list allahTrig) call BIS_fnc_selectRandom say3D (["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"] call BIS_fnc_selectRandom);
		sleep 6;
		};
	};

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
