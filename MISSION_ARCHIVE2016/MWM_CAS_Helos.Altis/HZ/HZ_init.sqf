if (!isServer) exitWith {};


//seems to be unpredictable crashing with running it all at once at start.
//This adds a 1 second delay before the mission is actually loaded.
//_master = [] spawn { 
//	waitUntil{sleep 0.1; time > 0.5};
	_masterControlHndl = [] execVM "HZ\HZ_masterControl.sqf";
//};