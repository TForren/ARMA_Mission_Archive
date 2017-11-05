asr_ai3_main_setskills = 0; //Stops ASR from changing the skill of the AI

if (isServer) then { //This scope is only for the server

// TRANSFORMERS

	build1 = nearestObjects [Tr2, ["building"], 10];
	build2 = nearestObjects [Tr1, ["building"], 10];

	transf1 = build1 select 0;
	transf2 = build1 select 1;
	transf3 = build2 select 0;
	transf4 = build2 select 1;

// SEE IF THIS IS NEEDED

	firefight = false; publicVariable "firefight";

	GUE_CivKilled = 0; publicVariable "GUE_CivKilled";
//	BLU_CivKilled = 0; publicVariable "BLU_CivKilled";

	FaceArray = ["WhiteHead_01", "WhiteHead_02", "WhiteHead_03", "WhiteHead_04", "WhiteHead_05", "WhiteHead_06", "WhiteHead_07", "WhiteHead_08", "WhiteHead_09", "WhiteHead_10", "WhiteHead_11", "WhiteHead_12", "WhiteHead_13", "WhiteHead_14", "WhiteHead_15"];
	
	{
		if ((side _x) == east) then {
			//_x setface (FaceArray select (random(round(count facearray))))
			
			[_x, (FaceArray select (random(round(count facearray))))] remoteExec ["setFace", 0, true];
			
  		};
	}foreach allunits;
	
	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 60; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

	[independent, "Militia", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[east, "Russia", "ai"] call FNC_AddTeam; //Adds a ai team called VDV on side east
//	[civilian, "civ", "ai"] call FNC_AddTeam;
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

	[] execVM "VCOM_Driving\init.sqf";
	
};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = false;//Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player
	
	switch (side player) do { //Checks what team the player is on

		case independent: { //If player is west he receives this respawn ticket count
			
			FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
			
		}; //End of west case
	}; //End of switch
};