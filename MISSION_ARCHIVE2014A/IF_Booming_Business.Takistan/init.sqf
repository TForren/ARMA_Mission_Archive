//init.sqf
ExecVM "briefing.sqf"; 
setviewdistance 4000;

enableSaving [false, false];
respawnButton = 0;

// Code for convoy defend script
if (isServer) then {
	[["w1","w2","w3","w4","w5","w6"],[c1,c2,c3,c4,c5,c6,c7],true] execVM "convoyDefend\convoyDefend_init.sqf";
};


waitUntil { isServer || !isNull player };

{
_x addEventHandler ["respawn",{_this execvm "respawn.sqf"}];
} forEach Playableunits;

