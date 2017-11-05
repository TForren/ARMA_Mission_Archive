asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

//["en", "English"] call acre_api_fnc_babelAddLanguageType;
//["ar", "Arabic"] call acre_api_fnc_babelAddLanguageType;

if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)
	
	FW_TimeLimit = 50; //Time limit in minutes, to disable the time limit set it to 0
	
	[west, "USMC", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[civilian, "Aliabad Civilians", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

//AAR System
call compile ("AMET" callExtension "init" );
};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player
	
	[allUnits,true] call ace_spectator_fnc_updateUnits;
	
	switch (side player) do { //Checks what team the player is on

		case east: { //If player is east he receives this respawn ticket count
			//["ar"] call acre_api_fnc_babelSetSpokenLanguages;
			player addEventHandler ["Respawn",{_yell = player addaction ["YELL LOUDLY", "allah.sqf", [player], 6, false, true, "", "(_target == _this)"];}];
			//FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
			[east, 2] call BIS_fnc_respawnTickets;
		}; //End of east case
		
		case west: { //If player is west he receives this respawn ticket count
			/*if (typeof player == "B_soldier_UAV_F") then { //interpreter
				["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
			} else {
				["en"] call acre_api_fnc_babelSetSpokenLanguages;				
			};*/
			player addEventHandler ["Respawn",{[player,true] call ace_spectator_fnc_stageSpectator; 
			[true] call ace_spectator_fnc_setSpectator;}];

		}; //End of west case		
		
		case civilian: {
			//["ar"] call acre_api_fnc_babelSetSpokenLanguages;
			player addEventHandler ["Respawn",{[player,true] call ace_spectator_fnc_stageSpectator; 
			[allUnits,true] call ace_spectator_fnc_updateUnits;
			vipKilled = true;
			PublicVariable "vipKilled";}];
		}; //End of civ case
	}; //End of switch
	
};

