if (isServer) then { //This scope is only for the server

	setViewDistance 1000; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "USA", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Militia", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	[independent, "UN", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)
	
	publicVariable "callMissionRemote";
	
	"callMissionRemote" addPublicVariableEventHandler {
		_endStringMessage = _this select 1;
		_endString = _endStringMessage select 0;
		_endString call FNC_EndMission;
	};
	
};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released
	
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";

	setViewDistance 1000; //View distance for the player - set lower on urbanised map to increase player performance
	
	FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
};

//New end messages
victoryMessage = "Medical Vehicle has arrived at the Mosque in time.<br/><br/>BLUFOR VICTORY<br/>";
failureMessage = "US forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>";
	