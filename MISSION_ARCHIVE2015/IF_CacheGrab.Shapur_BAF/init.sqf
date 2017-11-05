// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";
TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

//New not-derp Spectator system
[] execVM "CSSA3\CSSA3_init.sqf";

// wait until template is init and player synched

waitUntil { TB3_INIT };
//EDIT THIS STUFF FOR THAT MISSION INTRO TEXT IN BOTTOM RIGHT CORNER
[str ("Cache Grab") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Shapur")] spawn BIS_fnc_infoText;

if (!isDedicated) then {		
	// Retard prevention in spawn.
		[] execVM "scripts\grenadeStop.sqf";
	};

execVM "weather.sqf";
	
// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;


switch (sandStormParam) do {
    case 1: {
		0 setFog [.6, 0.05, 0];
		hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]];
		[player, -1.0, .5, true] call BIS_fnc_sandstorm;
		setWind [4, 5, true];
	};
    case 2: {
		0 setFog [.7, 0.04, 0];
		hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.10], [0.8, 0.74, 0.63, 0.10], [0.8, 0.74, 0.63, 0.10]];
		[player, -1.0, .8, true] call BIS_fnc_sandstorm;
		setWind [8, 5, true];
	};    
	case 3: {
		0 setFog [1, 0.04, 0];
		hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
		[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
		setWind [15, 10, true];
	};

};

hndl ppEffectCommit 0;