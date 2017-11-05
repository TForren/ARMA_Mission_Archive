
ExecVM "briefing.sqf"; 
setviewdistance 3000;
0 setFog [.5, .1, 100];

sleep 1;
["Altis", "Ranger Killjoy", str(date select 2) + "." + str(date select 1) + "." + str(date select 0)] call BIS_fnc_infoText;
sleep 1;
