HZ_fnc_randomTown = compile preprocessfilelinenumbers "HZ\randomTown\HZ_fnc_randomTown.sqf";
HZ_fnc_spawnNormal_1x1 = compile preprocessfilelinenumbers "HZ\randomTown\HZ_fnc_spawnNormal_1x1.sqf";
HZ_fnc_spawnDebris = compile preprocessfilelinenumbers "HZ\randomTown\HZ_fnc_spawnDebris.sqf";
HZ_fnc_spawnDebrisBlock_1x1 = compile preprocessfilelinenumbers "HZ\randomTown\HZ_fnc_spawnDebrisBlock_1x1.sqf";
fnc_makewall = compile preprocessfilelinenumbers "HZ\randomTown\fnc_makewall.sqf";

buildings = [];

buildingMarkers = []; //Global variable required because of how BI handles markers

//startLoadingScreen ["Building City..."];

cityTrig call HZ_fnc_randomTown;

//endLoadingScreen;


//[[874.122559,2476.331543,0], "Land_Wall_IndCnc_4_F"] call FNC_BuildWall;