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

//AAR System
call compile ("AMET" callExtension "init" );

// wait until template is init and player synched
waitUntil { TB3_INIT };
titleText ["Welcome back to Kunduz.\n\n", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

[player, 1, 0.2, false] call BIS_fnc_sandstorm;

sleep 5;
titleText ["ISIS Mortars have been shelling local ANA forces.", "BLACK FADED"];
sleep 6;
titleText ["Being useless, the ANA are unable to eliminate the mortar threat themselves\n\n", "BLACK FADED"];
sleep 6;
titleText ["and thus, have requested the assistance of US Forces.", "BLACK FADED"];
sleep 6;
titleText ["Helix 1PLT has been assigned the task of destroying the Mortars.", "BLACK FADED"];
sleep 6;
titleText ["IS Bias\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];