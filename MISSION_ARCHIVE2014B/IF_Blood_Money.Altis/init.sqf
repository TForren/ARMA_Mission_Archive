
ExecVM "briefing.sqf"; 
missionOver = false;
setviewdistance 5000;
// LOADING TEXT

if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("Blood Money")] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
		d1 moveinDriver sub1;
		d2 moveinGunner sub1;
		d3 moveinCargo sub1;
		d4 moveinCargo sub1;
		
    };
};
