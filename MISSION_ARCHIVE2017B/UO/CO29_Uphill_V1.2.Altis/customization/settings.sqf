asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 90;

	[independent, "AAF", "player"] call FNC_AddTeam;
	[west, "FIA", "ai"] call FNC_AddTeam;

};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player

	switch (side player) do { //Checks what team the player is on

		case independent: { //If player is west he receives this respawn ticket count

			FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn

		}; //End of west case
	}; //End of switch
};