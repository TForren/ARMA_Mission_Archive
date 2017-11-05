
ExecVM "briefing.sqf"; 

0 setFog [0.23, .5, 6.8];
/*
// LOADING TEXT
if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("Rebel Smash")] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
    };
};
*/
public count = 0;

if(count > 4) then {
task2 setTaskState "SUCCEEDED";
};