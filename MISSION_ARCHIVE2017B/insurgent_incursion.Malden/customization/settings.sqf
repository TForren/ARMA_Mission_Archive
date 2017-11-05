if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "Insurgents", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Hellenic Forces", "ai"] call FNC_AddTeam; //Adds a player team called USA on side west
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)
		
	publicVariable "callMissionRemote";
	
	"callMissionRemote" addPublicVariableEventHandler {
		_endStringMessage = _this select 1;
		_endString = _endStringMessage select 0;
		_endString call FNC_EndMission;
	};
	
};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = false;//Only disable debug messages when the mission is released
	
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";

	setViewDistance 2500; //View distance for the player - set lower on urbanised map to increase player performance
	
	FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
};

//New end messages
victoryMessage = "The insurgents have destroyed the KA-52 and extracted from the island. <br/><br/>	INSURGENT VICTORY<br/>";
victoryMessage2 = "The KA-52 has been destroyed but the insurgents are trapped on the island. <br/><br/>MINOR INSURGENT VICTORY<br/>";
failureMessage = "The KA-52 has not been destroyed and the insurgents have taken heavy casualties.<br/><br/>HELLENIC FORCES VICTORY<br/>";
