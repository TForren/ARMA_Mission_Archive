if (isServer) then { //This scope is only for the server

	setViewDistance 700; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 80; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "The oppurtunity for a counterattack has passed. Northern Command has recalled our force for use elsewhere, canceling southern offensives for now."; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[independent, "RACS", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "SLA", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
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
victoryMessage = "The SLA has been cleared from Obregan, setting the stage for a RACS general counterattack. <br/><br/>RACS VICTORY<br/>";
failureMessage = "The RACS task force has taken massive casualties, not only weakening the line but also giving the SLA valuable time to reconstitute their forces. <br/><br/>SLA VICTORY<br/>";
	