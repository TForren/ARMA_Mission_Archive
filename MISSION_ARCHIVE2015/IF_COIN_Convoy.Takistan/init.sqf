// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

//New not-derp Spectator system
[] execVM "CSSA3\CSSA3_init.sqf";

// wait until template is init and player synched

waitUntil { TB3_INIT };
//EDIT THIS STUFF FOR THAT MISSION INTRO TEXT IN BOTTOM RIGHT CORNER
[str ("ONLY USE 17 CHARS") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("WHERE ARE WE?!")] spawn BIS_fnc_infoText;

if (!isDedicated) then {		
	// Retard prevention in spawn.
		[] execVM "scripts\grenadeStop.sqf";
	TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 
	};