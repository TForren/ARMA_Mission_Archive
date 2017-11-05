#include "HZ\HZ_init.sqf"; //Hoizen stuff


if (isServer) then {
	//[false,30,true,true,30,0,false,[]] execVM "WerthlesHeadless.sqf";
};

[player, -1.0, .5, true] call BIS_fnc_sandstorm;
