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


titleText ["...\n\n", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

sleep 1;
titleText ["Tensions in Ukraine continue to rise with no signs of easing up.", "BLACK FADED"];
sleep 6;
titleText ["With mounting unrest, rioters join with insurgent groups against the Ukrainian Government.", "BLACK FADED"];
sleep 6;
titleText ["Fallingbostel has been heavily fortified by such insurgents. ", "BLACK FADED"];
sleep 5;
titleText ["With Ukrainian Army troops occupied with Novossiyan forces in the area", "BLACK FADED"];
sleep 6;
titleText ["the Ukraine National Guard must take offensive action.", "BLACK FADED"];
sleep 6;
titleText ["Bostel Takeover\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;

titleText ["", "PLAIN"];
