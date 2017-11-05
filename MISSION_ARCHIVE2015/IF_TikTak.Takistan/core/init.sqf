#include "functions.sqf" //DO NOT REMOVE

enableSaving [false, false];

if (isServer) then {
	
	"west" call FNC_CreateRespawnMarker;
	"east" call FNC_CreateRespawnMarker;
	"guerrila" call FNC_CreateRespawnMarker;
	"civilian" call FNC_CreateRespawnMarker;
	
	FW_Teams = []; //DO NOT REMOVE
	FW_MissionEnded = false; //Mission has not ended
	
};

if (!isDedicated) then {

	//Anything done using "player" must be past this line for JIP compatibility
	waitUntil {!(isNull player)};
	
	//"FW_EndMission" player event sends the received variables to the end screen
	FW_EndMissionEh = ["FW_EndMission", {_this execVM "core\dia\endscreen\dia_endscreen.sqf";}] call CBA_fnc_addEventHandler;
	
	//Various settings
	enableEngineArtillery false; //Disable Arma 3 artillery computer
	enableRadio false; //Disable Arma 3 regular radio
	enableSentences false; //Disable Arma 3 regular radio chatter
	0 fadeRadio 0; //Lower radio volume to 0
	
	//Creates the briefing notes for the player
	"" call FNC_Briefing;
	"" call FNC_Menu;
	
	FW_RespawnTickets = 0; //Initialize respawn tickets to 0 
	
	player setVariable ["FW_Dead", false, true]; //Tells the framework the player is alive
	
	//Various settings
	if !(player in [civ1,civ2,civ3]) then {
	player addRating 100000; //Makes sure ai doesnt turn hostile when teamkilling
	};
	player setVariable ["BIS_noCoreConversations", true]; //Disable scroll wheel conversations
	
};