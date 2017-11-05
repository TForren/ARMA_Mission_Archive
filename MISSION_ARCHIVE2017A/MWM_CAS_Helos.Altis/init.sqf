
#include "HZ\HZ_init.sqf"; //Hoizen stuff
#include "HZ\HZ_playerSetup.sqf"; //Hoizen stuff
#include "HZ\utilities\invoke.sqf";

if (isServer) exitWith {}; //variableEvents not working


/*
[] spawn {
	forcePlayerRespawn = false;
	while {true} do {
		if (forcePlayerRespawn) then {
			titleText ["", "BLACK OUT", 3];
			sleep 4;
			Hint "";
			titleText ["Restarting...", "BLACK FADED"];
			forceRespawn player;
			sleep 3;
			titleText ["", "BLACK IN", 8];
			sleep 8;
			titleText ["", "PLAIN"];	
			sleep 3;
			playersRespawned = true; publicVariable "playersRespawned";
		};
		sleep 2;
	};
};
*/