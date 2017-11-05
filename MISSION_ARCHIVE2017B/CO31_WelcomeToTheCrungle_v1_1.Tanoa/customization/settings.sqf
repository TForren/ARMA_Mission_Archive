if (isServer) then { //This scope is only for the server

	setViewDistance 500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 80; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "The Jaguares, under pressure from the SSC, have retreated. However, they remain a strong force locally, having withdrawn with most of their manpower and equipment."; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[independent, "SSC", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Jaguares", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
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

	setViewDistance 2500; //View distance for the player - set lower on urbanised map to increase player performance
	
	FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
};

//New end messages
victoryMessage = "The Jaguares have been pushed back, and their local manpower has been diminished. El Presidente is most pleased. <br/><br/>SSC VICTORY<br/>";
failureMessage = "After having taken unexpectedly heavy casualties, Sterling Security is renegotiating its contract with the President of Tanoa. <br/><br/>JAGUARES VICTORY<br/>";
	