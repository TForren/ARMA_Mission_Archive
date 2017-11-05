if (isServer) then { //This scope is only for the server

	setViewDistance 700; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 80; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "You bastards took too damn long."; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[resistance, "NH", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "VDV", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
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
victoryMessage = "2nd Platoon was able to successfully delay the enemy attack, allowing for the development of firmer resistance in the future. <br/><br/>NH VICTORY<br/>";
failureMessage = "2nd Platoon was unable to delay and retreat, allowing the enemy to make a forceful penetration and take large quantities of territory in short order. <br/><br/>OPFOR VICTORY<br/>";
	