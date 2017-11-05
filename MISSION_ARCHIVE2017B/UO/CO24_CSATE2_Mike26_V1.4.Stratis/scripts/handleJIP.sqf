[] spawn {
	["FW_PreloadWait", "onPreloadFinished", {FW_PreLoaded = true; ["FW_PreloadWait", "onPreloadFinished"] call BIS_fnc_removeStackedEventHandler}] call BIS_fnc_addStackedEventHandler;
	waitUntil {!isNull player && !isNil "FW_PreLoaded"};

	cutText ["", "BLACK IN", 10, false];

	if ((groupID group player) == "Viper Green" || (groupID group player) == "Viper Red") then {
		if !(missionNamespace getVariable ["Heli1_Landed", false]) then {
			player assignAsCargoIndex [Heli1, (player getVariable "SeatID")];
			player moveInCargo [Heli1, (player getVariable "SeatID")];
			playMusic "BackgroundTrack02_F";
		};
	} else {
		if !(missionNamespace getVariable ["Heli2_Landed", false]) then {
			player assignAsCargoIndex [Heli2, (player getVariable "SeatID")];
			player moveInCargo [Heli2, (player getVariable "SeatID")];
			playMusic "BackgroundTrack02_F";
		};
	};
};