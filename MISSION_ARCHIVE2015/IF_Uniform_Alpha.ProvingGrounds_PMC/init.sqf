// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";
TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 

player addrating 99999; // because fuck that "player turns hostile" shit 

[] execVM "scripts\zlt_fieldrepair.sqf";

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

//New not-derp Spectator system
[] execVM "CSSA3\CSSA3_init.sqf";

//AAR System
call compile ("AMET" callExtension "init" );

// wait until template is init and player synched
waitUntil { TB3_INIT };

	
titleText ["Ukraine 2015\n\n", "BLACK FADED"];


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

sleep 7;
titleText ["Russian-backed rebels advanced and encircled a Ukrainian Army garrison.", "BLACK FADED"];
sleep 6;
titleText ["A new offensive unleashing all-out war after a five-month ceasefire.", "BLACK FADED"];
sleep 6;
titleText ["The Ukrainian Army was left with two options.", "BLACK FADED"];
sleep 6;
titleText ["Surrender to the rebels", "BLACK FADED"];
sleep 5;
titleText ["or perform a daring break-out of the encirclement.", "BLACK FADED"];
sleep 5;
titleText ["Uniform Alpha\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];
[str ("Ukrainian Army") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("NE Town Garrison")] spawn BIS_fnc_infoText;
.
