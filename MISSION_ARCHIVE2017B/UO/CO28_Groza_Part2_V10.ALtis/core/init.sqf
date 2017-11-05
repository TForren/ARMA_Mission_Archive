#include "definitions.sqf" //DO NOT REMOVE

enableSaving [false, false];

if (isServer) then {
	
	CREATERESPAWNMARKER("respawn_west");
	CREATERESPAWNMARKER("respawn_east");
	CREATERESPAWNMARKER("respawn_guerrila");
	CREATERESPAWNMARKER("respawn_civilian");
	
	TEAMSTEST = []; //DO NOT REMOVE
	STARTCOUNT = []; //DO NOT REMOVE
	CURRENTCOUNT = []; //DO NOT REMOVE
	missionEnded = false; //Mission has not ended
	
};

if (!isDedicated) then {
	
	//"endScreen" player event sends the received variables to the end screen
	["endScreen", {_this execVM "core\dia\endscreen\dia_endscreen.sqf";}] call CBA_fnc_addEventHandler;
	
	//Various settings
	enableRadio false;
	0 fadeRadio 0; //Lower radio volume to 0
	
	//Anything done using "player" must be past this line for JIP compatibility
	waitUntil {!(isNull player)};
	
	//Creates the briefing notes for the player
	[] execVM "customization\briefing.sqf";
	
	player setVariable ["frameworkDead", false, true]; //Tells the framework the player is alive
	
	spectating = false; //Player is not spectating
	
	//Makes the player go into spectator mode when dead
	killedEh = player addEventHandler ["Killed", {deadBody = player; [] execVM "core\spectatePrep.sqf";}];
	
	//Various settings
	player addRating 100000; //Makes sure ai doesnt turn hostile when teamkilling
	player setVariable ["BIS_noCoreConversations", true]; //Disable scroll wheel conversations
	
};