if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "Insurgents", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "CSAT", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
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
victoryMessage = "The insurgents have made it out and the air assets are destroyed. <br/><br/>INSURGENT VICTORY<br/>";
victoryMessage2 = "The insurgents were unable to make it out but the air assets were destroyed. <br/><br/>STILL A VICTORY<br/>";
stalemate = "The insurgents were escaped but air assets are still active. <br/><br/>STALEMATE<br/>";
failureMessage = "The insurgents were unable to escape and the air assets are still active. <br/><br/>CSAT VICTORY<br/>";
