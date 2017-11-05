//init.sqf
setviewdistance 4000;
ExecVM "briefing.sqf"; 

enableSaving [false, false];


waitUntil { isServer || !isNull player };

{
_x addEventHandler ["respawn",{_this execvm "respawn.sqf"}];
} forEach Playableunits;

