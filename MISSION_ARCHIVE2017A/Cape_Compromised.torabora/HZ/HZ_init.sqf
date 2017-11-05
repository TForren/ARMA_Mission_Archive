HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_populateTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_populateTowns.sqf";
HZ_fnc_prepTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepTowns.sqf";
HZ_fnc_AmbCivMain = compile preprocessfilelinenumbers "HZ\HZ_fnc_AmbCivMain.sqf";

HZ_fnc_civGear = compile preprocessfilelinenumbers "HZ\HZ_fnc_civGear.sqf";
HZ_fnc_civVehHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_civVehHandler.sqf";
HZ_fnc_spawnCivVeh = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawnCivVeh.sqf";
HZ_fnc_speedLimiter = compile preprocessfilelinenumbers "HZ\HZ_fnc_speedLimiter.sqf";
HZ_fnc_ambIED = compile preprocessfilelinenumbers "HZ\HZ_fnc_ambIED.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";



[] call HZ_fnc_AmbCivMain;
/*
[[suv1,60,30]] call HZ_fnc_speedLimiter;
[[suv2,60,30]] call HZ_fnc_speedLimiter;
[[suv3,60,30]] call HZ_fnc_speedLimiter;
[[suv4,60,30]] call HZ_fnc_speedLimiter;

*/

