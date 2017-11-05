
ExecVM "briefing.sqf"; 
setviewdistance 3000;


sleep 1;
["Zargabad", "Opressive Relief", str(date select 2) + "." + str(date select 1) + "." + str(date select 0)] call BIS_fnc_infoText;
sleep 1;
