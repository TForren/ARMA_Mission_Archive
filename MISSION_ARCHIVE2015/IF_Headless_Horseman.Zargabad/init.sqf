// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

// wait until template is init and player synched

waitUntil { TB3_INIT };

//EDIT THIS STUFF FOR THAT MISSION INTRO TEXT IN BOTTOM RIGHT CORNER
[str ("Headless Hoseman") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Zargabad")] spawn BIS_fnc_infoText;

if (isServer) then {

	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
	};

if (!isDedicated) then {		
	// Fires&Smoke
	
//		[apc_wrk1, 7, 0, false, false] spawn bis_fnc_burn; //Make shit burn
		
	// Retard prevention in spawn.
//		[] execVM "scripts\grenadeStop.sqf";
	
	player switchmove "AmovPknlMstpSlowWrflDnon";
	[rampart1, -.2, 0.5, false] call BIS_fnc_sandstorm;
	[rampart2, -.2, 0.5, false] call BIS_fnc_sandstorm;
	TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 
	};
	


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";
[] execVM "fpsmon.sqf";

// Headless Client
waitUntil { !isNil "s_param_hc" };
[] execVM "hc\init_hc.sqf";

// Fog - See docs/setFogReadme.txt
waitUntil { !isNil "s_param_vfog" };
// Check whether Volumetric Fog parameter is enabled
if (s_param_vfog == 1) then {
	// Set the starting density for the fog (between 0 and 1)
	_startDensity = 0.0;
	// Set the ending density for the fog (between 0 and 1)
	_endDensity = 0.0;
	// Set the decay rate of the fog (between 0 and 1). Lower values
	// means the fog will very gradually fade out as it reaches the
	// defined altitude. Higher values will produce a more drastic
	// cut-off near the altitude limit
	_decay = 0.0;
	// Fog altitude (in m)
	_altitude = 0;
	// Time it takes for fog to transition from _startDensity to _endDensity (in minutes)
	_transition = 0;

	// For example [[.65, .40], .010, 55, 60] execVM "Fog.sqf"; would start
	// with a fog density of .65 with a decay of .010 and an altitude of 55
	// meters and gradually decrease to a fog density of .40 over 60 minutes.
	[[_startDensity, _endDensity], _decay, _altitude, _transition] execVM "s\fog.sqf";
};