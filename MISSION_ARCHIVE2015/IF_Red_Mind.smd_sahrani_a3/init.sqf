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

titleText ["Welcome to Sahrani.\n\n", "BLACK FADED"];


sleep 5;
titleText ["Population:", "BLACK FADED"];
sleep 3.2;
titleText ["Population: A whole lotta Russians", "BLACK FADED"];
sleep 3;
titleText ["Happiness:", "BLACK FADED"];
sleep 3;
titleText ["Happiness: Cheeki", "BLACK FADED"];
sleep 3;
titleText ["Weather:", "BLACK FADED"];
sleep 3;
titleText ["Weather: Red", "BLACK FADED"];
sleep 3.3;
titleText ["The Red Mind\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];


if (!isServer) exitWith {};
{
   if ((side _x) == East) then
   {
	commandLogic addCuratorEditableObjects [[_x],true ]; 
   };
   
} forEach allUnits;
