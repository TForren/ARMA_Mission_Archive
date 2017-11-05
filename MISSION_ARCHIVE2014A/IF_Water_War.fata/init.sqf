enablesaving [false, false];

[5, 500, 10] execVM "MAD_civilians.sqf";
[2, 500, 1000] execVM "MAD_traffic.sqf";

ExecVM "scripts\bluradio.sqf"; 
ExecVM "scripts\opradio.sqf"; 
ExecVM "briefing.sqf"; 



{ if (side _x == east) then {removeVest _x;};
} foreach allunits;


// LOADING TEXT
if ((time < 15) && (side player == west))  then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Pakistán") , str("Explosions"), str("")] spawn BIS_fnc_infoText;
        sleep 8; 
		{
		if (side _x == west) then {_x switchMove "amovppnemstpsraswrfldnon";}; 
		} foreach allunits;
        cutText ["","BLACK IN",10];

    };
};

if (!isDedicated) then {
	[] execVM "initplayer.sqf";
	AR addeventhandler ["respawn","_this execVM 'Loadouts\respawn\AR.SQF'"];
	AT addeventhandler ["respawn","_this execVM 'Loadouts\respawn\AT.SQF'"];
	Engineer addeventhandler ["respawn","_this execVM 'Loadouts\respawn\Engineer.SQF'"];
	Grenadier addeventhandler ["respawn","_this execVM 'Loadouts\respawn\Grenadier.SQF'"];
	Marksman addeventhandler ["respawn","_this execVM 'Loadouts\respawn\Marksman.SQF'"];
	Medic addeventhandler ["respawn","_this execVM 'Loadouts\respawn\Medic.SQF'"];
	Rifleman addeventhandler ["respawn","_this execVM 'Loadouts\respawn\Rifleman.SQF'"];
	SL addeventhandler ["respawn","_this execVM 'Loadouts\respawn\SL.sqf'"];
	TL addeventhandler ["respawn","_this execVM 'Loadouts\respawn\TL.SQF'"];
	

};
