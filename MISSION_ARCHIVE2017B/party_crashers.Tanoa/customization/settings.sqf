if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "MARSOC", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Russian MSV", "ai"] call FNC_AddTeam; //Adds a player team called USA on side west
	[independent, "Sones The Jungal", "ai"] call FNC_AddTeam; //Adds a player team called USA on side west
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
ExtractbothKilled = "MARSOC has extracted from the AO. Both HVTs have been eliminated. <br/><br/>BLUFOR VICTORY<br/>";
ExtractbothCaptured = "MARSOC has extracted from the AO. Both HVTs have been captured. <br/><br/>MAJOR BLUFOR VICTORY<br/>";
ExtractoneKilledOneCaptured = "MARSOC has extracted from the AO. One HVT has been captured and the other has been eliminated. <br/><br/>BLUFOR VICTORY<br/>";
ExtractoneKilledOneFree = "MARSOC has extracted from the AO. One HVT has been eliminated but the other is MIA. <br/><br/>MINOR BLUFOR VICTORY<br/>";
ExtractoneCapturedOneFree = "MARSOC has extracted from the AO. One HVT has been captured but the other is MIA. <br/><br/>BLUFOR VICTORY<br/>";
ExtractfailureMessage = "MARSOC has extracted from the AO. Both HVTs are still at large.<br/><br/>OPFOR VICTORY<br/>";
failureMessage = "MARSOC has has taken too many casualties and cannot continue the mission.<br/><br/>OPFOR VICTORY<br/>";
