
ExecVM "briefing.sqf"; 
missionOver = false;
setviewdistance 3000;
// LOADING TEXT
if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("Soggy Bread")] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
		
    };
};