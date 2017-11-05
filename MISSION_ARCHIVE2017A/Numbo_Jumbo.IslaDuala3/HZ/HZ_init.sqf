//HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";
//HZ_fnc_callArtillery = compile preprocessfilelinenumbers "HZ\HZ_fnc_callArtillery.sqf";


if (player == opforCommander) then {
	player setVariable ["callingArtillery",false];

	//onMapSingleClick command
};

if !(isServer) exitWith {};

