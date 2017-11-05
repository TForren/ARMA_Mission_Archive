// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";
TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

//AAR System
call compile ("AMET" callExtension "init" );

// wait until template is init and player synched

waitUntil { TB3_INIT };

titleText ["..", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

sleep 6;
titleText ["Ultranationalists fighting for the Ukrainian Government", "BLACK FADED"];
sleep 6;
titleText ["have aquired 3x BM-21 Grad truck-mounted rocket launchers.", "BLACK FADED"];
sleep 6;
titleText ["With such artillery, the Ultranationalists have devastated Novossiya positions.", "BLACK FADED"];
sleep 6;
titleText ["The Armed Forces of the Russian Federation have decided to take action against this threat\n", "BLACK FADED"];
sleep 6;
titleText ["and have decided to send the VDV.\n", "BLACK FADED"];
sleep 6;
titleText ["With 2x BMD-4s and only 3x squads of paratroopers,\n", "BLACK FADED"];
sleep 6;
titleText ["The VDV have deployed South of the Ultranationalist position\n", "BLACK FADED"];
sleep 6;
titleText ["and will soon hit contact with the Ultranationalists.\n", "BLACK FADED"];
sleep 6;
titleText ["Stetchkov Stumble\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];