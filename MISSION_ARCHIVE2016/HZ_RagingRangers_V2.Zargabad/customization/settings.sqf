asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

//["en", "English"] call acre_api_fnc_babelAddLanguageType;
//["ar", "Arabic"] call acre_api_fnc_babelAddLanguageType;

if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)
	[true, true] call acre_api_fnc_setupMission;
	
	FW_TimeLimit = 50; //Time limit in minutes, to disable the time limit set it to 0
	
	[west, "RANGERS", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Spetsnaz", "player"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

//AAR System
call compile ("AMET" callExtension "init" );
};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = false;//Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player
	
	[allUnits,true] call ace_spectator_fnc_updateUnits;

	player addEventHandler ["Respawn",{[player,true] call ace_spectator_fnc_stageSpectator; 
			[true] call ace_spectator_fnc_setSpectator;}];
};

