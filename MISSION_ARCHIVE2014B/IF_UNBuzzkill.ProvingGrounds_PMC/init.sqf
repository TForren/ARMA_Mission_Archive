
ExecVM "briefing.sqf"; 
missionOver = false;
setviewdistance 5000;
// LOADING TEXT

sleep 1;
["Zargabad", "Hemp Smash n' Grab", str(date select 2) + "." + str(date select 1) + "." + str(date select 0)] call BIS_fnc_infoText;
sleep 1;

