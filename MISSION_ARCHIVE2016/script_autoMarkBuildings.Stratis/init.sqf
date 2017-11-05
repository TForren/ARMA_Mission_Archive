#include "HZ\HZ_init.sqf"; //Hoizen stuff
DEBUG = true;
wrecks = [];

if (DEBUG) then {
	i = 0;
	{
		_markerstr = createMarker [format ["mark%1",i],getpos _x];
		_markerstr setMarkerShape "ICON";
		_markerstr setMarkerType "hd_dot";
		i=i+1;
	} foreach wrecks;
};