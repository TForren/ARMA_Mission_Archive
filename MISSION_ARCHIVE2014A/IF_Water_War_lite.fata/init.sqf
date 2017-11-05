enablesaving [false, false];

[8, 500, 4] execVM "MAD_civilians.sqf";
[3, 500, 1000] execVM "MAD_traffic.sqf";

ExecVM "scripts\bluradio.sqf"; 
ExecVM "scripts\opradio.sqf"; 
ExecVM "briefing.sqf"; 
[] execVM "scripts\zlt_fieldrepair.sqf";


{ if (side _x == east) then {removeVest _x;};
} foreach allunits;


// LOADING TEXT
if ((time < 15) && (side player == west))  then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Pakistán")] spawn BIS_fnc_infoText;
        sleep 8; 
		{
		if (side _x == west) then {_x switchMove "amovppnemstpsraswrfldnon";}; 
		} foreach allunits;
        cutText ["","BLACK IN",10];

    };
};
	SL addeventhandler ["respawn","_this execVM 'scripts\Loadouts\SL.sqf'"];
	TL addeventhandler ["respawn","_this execVM 'scripts\Loadouts\TL.sqf'"];
	AR addeventhandler ["respawn","_this execVM 'scripts\Loadouts\AR.sqf'"];
	Grenadier addeventhandler ["respawn","_this execVM 'scripts\Loadouts\Grenadier.sqf'"];
	Medic addeventhandler ["respawn","_this execVM 'scripts\Loadouts\Medic.sqf'"];
	Marksman addeventhandler ["respawn","_this execVM 'scripts\Loadouts\Marksman.sqf'"];
	Engineer addeventhandler ["respawn","_this execVM 'scripts\Loadouts\Engineer.sqf'"];
	AT addeventhandler ["respawn","_this execVM 'scripts\Loadouts\AT.sqf'"];

if (!isDedicated) then {
	[] execVM "initplayer.sqf";
};
