missionNamespace setVariable ["Heli1_Landed", false];
missionNamespace setVariable ["Heli2_Landed", false];
publicVariable "Heli1_Landed";
publicVariable "Heli2_Landed";

/*[] spawn { // Removed until BIS_fnc_UnitPlay is Fixed

	waitUntil {time >= 59};

	missionNamespace setVariable ["Heli1_Landed", true];
	publicVariable "Heli1_Landed";

	[] spawn {
		{
			if (_x in Heli1) then {
				_x action ["Eject", vehicle _x];
				sleep 0.15;
			};
		} forEach playableUnits;
	};

	waitUntil {time >= 65};

	missionNamespace setVariable ["Heli2_Landed", true];
	publicVariable "Heli2_Landed";

	[] spawn {
		{
			if (_x in Heli2) then {
				_x action ["Eject", vehicle _x];
				sleep 0.15;
			};
		} forEach playableUnits;
	};
};*/


[] spawn {
	private ["_wp"];
	waitUntil {missionNamespace getVariable ["Heli1_Landed", false]};

	//Heli1 animateDoor ["Door_6_source", 1];
	Heli1 disableAI "MOVE";

	{
		if (_x in Heli1) then {
			_x action ["Eject", vehicle _x];
			sleep 0.15;
		};
	} forEach playableUnits;

	sleep 10;

	Heli1 animateDoor ["Door_4_source", 0];
	Heli1 animateDoor ["Door_5_source", 0];
	Heli1 animateDoor ["Door_6_source", 0];
	Heli1 enableAI "MOVE";

	_wp = (group driver Heli1) addWaypoint [getMarkerPos "Extract", 200];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointStatements ["true", "{deleteVehicle _x} forEach units group driver Heli1; deleteVehicle Heli1;"];
};

[] spawn {
	private ["_wp"];
	waitUntil {missionNamespace getVariable ["Heli2_Landed", false]};

	//Heli2 animateDoor ["Door_6_source", 1];
	Heli2 disableAI "MOVE";

	{
		if (_x in Heli2) then {
			_x action ["Eject", vehicle _x];
			sleep 0.15;
		};
	} forEach playableUnits;

	sleep 10;

	Heli2 animateDoor ["Door_4_source", 0];
	Heli2 animateDoor ["Door_5_source", 0];
	Heli2 animateDoor ["Door_6_source", 0];
	Heli2 enableAI "MOVE";

	_wp = (group driver Heli2) addWaypoint [getMarkerPos "Extract", 200];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointStatements ["true", "{deleteVehicle _x} forEach units group driver Heli2; deleteVehicle Heli2;"];
};