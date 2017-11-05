
//Clients will get these

//civilians
HZ_fnc_populateTowns = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_populateTowns.sqf";
HZ_fnc_prepTowns = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_prepTowns.sqf";
HZ_fnc_AmbCivMain = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_AmbCivMain.sqf";
HZ_fnc_civGear = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_civGear.sqf";
HZ_fnc_civVehHandler = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_civVehHandler.sqf";
HZ_fnc_spawnCivVeh = compile preprocessfilelinenumbers "HZ\civilians\HZ_fnc_spawnCivVeh.sqf";

//utility
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_speedLimiter = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_speedLimiter.sqf";
HZ_fnc_roadDebris = compile preprocessfilelinenumbers "HZ\IED\HZ_fnc_roadDebris.sqf";



//Stuff only the server will use
if (isServer) then {

//utility
HZ_fnc_getDimensions = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_getDimensions.sqf";
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_getBuildingPositions = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_getBuildingPositions.sqf";


[] call HZ_fnc_AmbCivMain;

_handle = execVM "HZ\HZ_fnc_setupObjective.sqf";

_handle = execVM "HZ\HZ_fnc_setupLZ.sqf";

};

//clients run this:
[] spawn {
	sleep 1;
	
	if (side player == west) then {
		_bluLZ = createMarkerLocal ["bluLZ", [0,0,0]];
		"bluLZ" setMarkerShapeLocal "ICON";
		"bluLZ" setMarkerTypeLocal "hd_end";
		"bluLZ" setMarkerColorLocal "colorBLUFOR";
		"bluLZ" setMarkerTextLocal "Attack Vector";
		"bluLZ" setMarkerPosLocal BluforLZ;
	};
	if (side player == east) then {
		_opLZ = createMarkerLocal ["opLZ", [0,0,0]];
		"opLZ" setMarkerShapeLocal "ICON";
		"opLZ" setMarkerTypeLocal "hd_end";
		"opLZ" setMarkerColorLocal "colorOPFOR";
		"opLZ" setMarkerTextLocal "Attack Vector";
		"opLZ" setMarkerPosLocal OpforLZ;
	};
};

deleteMarker "plan";