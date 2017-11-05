waitUntil { isServer || !isNull player };

enableSaving [false, false];
respawnButton = 0;

if (isServer) then {
deathCounter = 0;
bluCount = {side _x == west} count allUnits; // returns the number of alive units
deathLimit = bluCount * 0.3;
};

{
_x addEventHandler ["respawn",{_this execvm "respawn.sqf"}];
} forEach Playableunits;

