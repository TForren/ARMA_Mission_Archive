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

if (!isDedicated) then {		
	// Retard prevention in spawn.
		[] execVM "scripts\grenadeStop.sqf";
	};

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

sleep 3;
titleText ["Creating Terrorism...", "BLACK FADED"];
sleep 4;
titleText ["Done...?\n\n", "BLACK FADED"];
sleep 2;
titleText ["Terrorism Setup Done.", "BLACK FADED"];
sleep 2;
titleText ["Rabble Rousers\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];



