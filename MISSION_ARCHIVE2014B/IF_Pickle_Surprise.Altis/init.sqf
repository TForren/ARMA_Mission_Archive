
ExecVM "briefing.sqf"; 
missionOver = false;
setviewdistance 6000;
// LOADING TEXT

sleep 1;
["Altis", "Soggy Bread", str(date select 2) + "." + str(date select 1) + "." + str(date select 0)] call BIS_fnc_infoText;
sleep 1;
