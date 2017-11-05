
ExecVM "briefing.sqf"; 
0 setFog [0.23, .5, 6.8];
truckscalled = false; // did JTAC call in the trucks?
//Count Alive trucks
trucks = 3;
etrucks = 3;


// LOADING TEXT

if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("CRIMSON INTRO)] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
		lead2 moveinDriver sub1;
		blu2 moveinGunner sub1;
		blu3 moveinCargo sub1;
		blu4 moveinCargo sub1;
    };
};

