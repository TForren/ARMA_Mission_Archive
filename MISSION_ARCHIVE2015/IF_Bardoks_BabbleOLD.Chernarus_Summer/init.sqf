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


titleText ["Chernarus 1997\n\n", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

sleep 6;
titleText ["Guerrilla fighters of the Chernarussian Movement of the Red Star", "BLACK FADED"];
sleep 6;
titleText ["Commonly known as the ChDKZ", "BLACK FADED"];
sleep 5;
titleText ["have been responsible for countless attacks on CDF supply convoys.", "BLACK FADED"];
sleep 6;
titleText ["Such attacks on the Chernarussian Defense Forces will continue", "BLACK FADED"];
sleep 6;
titleText ["until the ChDKZ are weeded out of the forests by CDF troops.", "BLACK FADED"];
sleep 6;
titleText ["Bardok's Babble\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];