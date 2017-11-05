asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

if (isServer) then { //This scope is only for the server

	//0 setFog [0.5, 0.1, 5];
	
	setViewDistance 1400; //View distance for the server (the ai's)

	FW_TimeLimit = 240; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

	[WEST, "NATO", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[EAST, "Paramilitary", "ai"] call FNC_AddTeam; //Adds a ai team called VDV on side east
	
	ace_medical_medicSetting_SurgicalKit = 2;

	ace_medical_consumeItem_SurgicalKit = 0;
	
	ace_medical_useLocation_SurgicalKit = 0;

	ace_medical_useCondition_SurgicalKit = 1;

};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released

	ace_medical_medicSetting_SurgicalKit = 2;

	ace_medical_consumeItem_SurgicalKit = 0;
	
	ace_medical_useLocation_SurgicalKit = 0;

	ace_medical_useCondition_SurgicalKit = 1;

	[0.0] call acre_api_fnc_setLossModelScale;
	[false] call acre_api_fnc_setInterference;

	setViewDistance 1500; //View distance for the player
	
	switch (side player) do { //Checks what team the player is on

		case west: { //If player is west he receives this respawn ticket count
			
			FW_RespawnTickets = 500;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
			
		}; //End of west case
	}; //End of switch
};