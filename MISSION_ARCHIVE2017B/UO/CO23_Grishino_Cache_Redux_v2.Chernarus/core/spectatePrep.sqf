//The location where spectators are teleported to, in arma units. Don't change this unless you have a good reason.
#define SPECLOCATE [0, 0, 0]


//These are self explanatory - the messages that pop up when you are killed.
#define DEATHWEST "You are dead.\nEntering spectator mode..."
#define DEATHEAST "You are dead.\nEntering spectator mode..."
#define DEATHGUER "You are dead.\nEntering spectator mode..."
#define DEATHCIV "You are dead.\nEntering spectator mode..."


private "_message";
_message = switch (side player) do {
    case west: { DEATHWEST };
    case east: { DEATHEAST };
    case resistance: { DEATHGUER };
    case civilian: { DEATHCIV };
};

titleText [_message, "BLACK", 0.2];
sleep 1;
titleText [_message, "BLACK FADED", 10];

waitUntil {sleep 0.2; alive player};

player setVariable ["frameworkDead", true, true]; //Tells the framework the player is dead

player setPos SPECLOCATE;
[player] join grpNull;

player setCaptive true;
player addEventHandler ["HandleDamage", {false}];
removeAllWeapons player;
removeAllItems player;
removebackpack player;

if (!spectating) then {
	[true] call acre_api_fnc_setSpectator;
	[] execVM "core\spectate.sqf";
} 
else {
	titleText [_message, "BLACK IN", 0.2];
};