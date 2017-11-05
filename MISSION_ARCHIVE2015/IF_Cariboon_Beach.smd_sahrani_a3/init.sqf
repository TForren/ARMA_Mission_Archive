 if (isNil "lighthousePower") then {     //if the PublicVariable does not yet exist, then we'll create a local copy. But if it DOES, we won't.
    lighthousePower = false; 
    if (isServer) then {publicVariable "lighthousePower";}; // make the server propogate the value to all clients, clients should keep local copies until the propogation happens.
};

enableSaving [false, false];
enableSentences false;

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

//if (isServer) then {
//{
//Pilot Building
light1="#lightpoint" createVehicle (getpos lantern);
light1 setLightBrightness 0.067;
light1 setLightAmbient [1,1,1];
light1 setLightColor [1,0.95,0.72];
light1 lightAttachObject [lantern,[0,0,0]];
light2="#lightpoint" createVehicle (getpos lantern2);
light2 setLightBrightness 0.067;
light2 setLightAmbient [1,1,1];
light2 setLightColor [1,0.95,0.72];
light2 lightAttachObject [lantern2,[0,0,0]];
//};


//titleText ["Welcome to Sneaky Shooty Time.\n\n", "BLACK FADED"];

// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";
/*
sleep 5;
titleText ["Pushing some VDV out of a Mi-8", "BLACK FADED"];
sleep 4;
titleText ["Remembering to throw some parachutes as well\n\n", "BLACK FADED"];
sleep 3.3;
titleText ["They Survived.", "BLACK FADED"];
sleep 1.4;
titleText ["Blood Soaked Sands\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];
*/