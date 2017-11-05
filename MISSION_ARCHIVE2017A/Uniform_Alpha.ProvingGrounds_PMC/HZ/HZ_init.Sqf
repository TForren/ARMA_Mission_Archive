HZ_fnc_wreckRoads = compile preprocessfilelinenumbers "HZ\HZ_fnc_wreckRoads.sqf";
HZ_fnc_markBuildings = compile preprocessfilelinenumbers "HZ\HZ_fnc_markBuildings.sqf";

if (isServer) then {
	
#include "randomTown\init.sqf";
[radio] execVM "HZ\HZ_radioSounds.sqf";

maxInter = "IntervalMax" call BIS_fnc_getParamValue;
minInter = "IntervalMin" call BIS_fnc_getParamValue;



//[center, radius, interval, minTime, maxTime] call HZ_randomMortars;
//[[772,1435,0],440,6,minInter,maxInter] call HZ_randomMortars;

//[center, x, y, angle, isRectangle, checkInterval, [exclude,Array]] call HZ_explosiveBoundry;
//[[794,1521,0], 265, 303, 26, false, 6, []] call HZ_explosiveBoundry;

};