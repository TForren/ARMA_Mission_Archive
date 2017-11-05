HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_speedLimiter = compile preprocessfilelinenumbers "HZ\HZ_fnc_speedLimiter.sqf";
HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\garrison\HZ_fnc_GarrisonHouse.sqf";
HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\garrison\HZ_fnc_GarrisonTown.sqf";
HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\garrison\HZ_fnc_SetupPatrol.sqf";
HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\garrison\HZ_fnc_PatrolArea.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

/*
[[suv1,60,30]] call HZ_fnc_speedLimiter;
[[suv2,60,30]] call HZ_fnc_speedLimiter;
[[suv3,60,30]] call HZ_fnc_speedLimiter;
[[suv4,60,30]] call HZ_fnc_speedLimiter;

*/

startLoadingScreen ["Loading, please wait..."];

townPrepComplete = false; // DO NOT CHANGE
patrolLoadouts = [];
garrisonLoadouts = [];
vehicles = [];

ambCivDebug = true;


waitUntil {townPrepComplete};

EndLoadingScreen;


townPrepResultArray = [] call HZ_fnc_prepTowns;

private _handle = [] execVM "HZ\HZ_fnc_ObjectiveMain.sqf";