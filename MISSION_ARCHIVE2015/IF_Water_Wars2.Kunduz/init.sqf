enablesaving [false, false];

ExecVM "scripts\bluradio.sqf"; 
ExecVM "scripts\opradio.sqf"; 
[] execVM "scripts\zlt_fieldrepair.sqf";


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
titleText ["Welcome to the Second Pain Train.\n\n", "BLACK FADED"];

if (!isDedicated) then {
	[] execVM "initplayer.sqf";
};

if (!isPlayer) then {
[8, 500, 4] execVM "MAD_civilians.sqf";
[3, 500, 1000] execVM "MAD_traffic.sqf";
};


sleep 3;
titleText ["Ambushing Water Supply...", "BLACK FADED"];
sleep 3;
titleText ["Spawning Civilians...\n\n", "BLACK FADED"];
sleep 3;
titleText ["Exploding Civilians...", "BLACK FADED"];
sleep 2;
titleText ["Water Wars\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];