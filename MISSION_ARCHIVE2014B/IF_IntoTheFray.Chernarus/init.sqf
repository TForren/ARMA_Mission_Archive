
ExecVM "briefing.sqf"; 
setviewdistance 3000;
0 setFog [.1, .1, 10];

sleep 1;
["Chernarus", "Into The Fray", str(date select 2) + "." + str(date select 1) + "." + str(date select 0)] call BIS_fnc_infoText;
sleep 1;

ghst_civcars = [(getmarkerpos "chern"),400,20,false,false] execvm "ghst_civcars.sqf";