if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)
	
	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	[west, "USA", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "USSR", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released
	
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";
	
	player setvariable ["ace_medical_medicClass", 1, true]; // Set everyone as medic (still appropriate)

	setViewDistance 2500; //View distance for the player
	
	switch (side player) do { //Checks what team the player is on

			case west: { //If player is west he receives this respawn ticket count
				
				FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
				
			}; //End of west case		
			case east: { //If player is west he receives this respawn ticket count
				
				if (typeof player == "AFGHAN_WVDV_SARGE") then {
					player addEventHandler ["Respawn",{_yell = player addaction ["Call for Charge", "hurrahStart.sqf", [player], 6, false, true, "", "(_target == _this)"];}];
					[player, "O_SL", "USSR"] call FNC_GearScript;
				} else {
					player addEventHandler ["Respawn",{_yell = player addaction ["Yell to Charge", "hurrah.sqf", [player], 6, false, true, "", "(_target == _this)"];}];
					[player, "O_RIF", "USSR"] call FNC_GearScript;
				};
				FW_RespawnTickets = 15;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
				
			}; //End of west case
		}; //End of switch
};