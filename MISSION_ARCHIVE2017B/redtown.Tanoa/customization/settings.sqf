if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "Insurgents", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Russian Federation", "ai"] call FNC_AddTeam; //Adds a player team called USA on side west
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
victoryMessage = "The insurgents have made it out and the propaganda trucks are destroyed. <br/><br/>INSURGENT VICTORY<br/>";
victoryMessage2 = "The insurgents were unable to make it out but the propaganda trucks are destroyed. <br/><br/>STILL A VICTORY<br/>";
stalemate = "The insurgents escaped but propaganda at least one propaganda truck is still active. <br/><br/>STALEMATE<br/>";
failureMessage = "The insurgents were unable to escape and the propaganda trucks are still active. <br/><br/>RUSSIAN VICTORY<br/>";
