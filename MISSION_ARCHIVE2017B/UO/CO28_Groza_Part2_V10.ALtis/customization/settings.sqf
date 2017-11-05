if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)

	timeLimit = 60 * 120; //Time limit in seconds - 60 seconds * 30 = 1800 seconds = 30 min 

	ADDAITEAM(west, "Canadian Armed Forces"); //Adds a player team called USMC on side west
	ADDPLAYABLETEAM(east, "Russian Armed Forces"); //Adds a ai team called VDV on side east

};

if (!isDedicated) then { //This scope is only for the player

	setViewDistance 2500; //View distance for the player
};

//This scope is for the server and the player