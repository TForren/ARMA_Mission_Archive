asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 40; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "The US Forces have run out of time and the Militia have made off with the Ammo Truck.<br/><br/>OPFOR VICTORY"; //The message displayed when the time runs out

	[west, "US SOF", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[east, "Militia", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west

	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = false;//Only disable debug messages when the mission is released

	setViewDistance 4500; //View distance for the player
	
	switch (side player) do { //Checks what team the player is on

		case west: { //If player is west he receives this respawn ticket count
			
			FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
			
		}; //End of west case
	}; //End of switch
};