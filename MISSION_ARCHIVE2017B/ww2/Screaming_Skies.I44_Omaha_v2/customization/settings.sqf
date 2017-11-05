if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's) 
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	AAUnits = [AA1,AA2,AA3,AA4,AA5,AA6]; publicVariable "AAUnits";
	HVTs = [hvt1,hvt2,hvt3]; publicVariable "HVTs";
	destroyedTrucks = 0;publicVariable "destroyedTrucks";

	// Teams, used for the end screen and to calculate casualties on each side
	[west, "Germany", "ai"] call FNC_AddTeam; //Adds a player team called USA on side west
	[resistance, "101st Airborne", "player"] call FNC_AddTeam; //Adds a ai team called MSV on side east
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
	
	FW_RespawnTickets = 100;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
};

//New end messages
endMessage = format ["The mission is complete.<br/><br/>%1x AA destroyed.<br/>%2x supply trucks destroyed.<br/>%3x German HVTs killed.",({!alive _x} count AAUnits),destroyedTrucks,({!alive _x} count HVTs)];

