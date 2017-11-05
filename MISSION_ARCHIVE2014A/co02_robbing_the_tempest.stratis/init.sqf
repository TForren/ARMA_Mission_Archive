call compile preProcessFileLineNumbers "fhqtt.sqf";
call compile preProcessFileLineNumbers "briefing.sqf";
{if (side _x == east) then {_x addEventHandler ["fired", "deleteVehicle shotsfired"]};} forEach allunits;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// UAV Mission Overview Start
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
[
    markerPos "obj", // Target position (replace MARKERNAME)
    "Steal the data somewhere in Camp Tempest.", // SITREP text
    100,                    // altitude
    150,                    // radius
    30,                      // degrees viewing angle
    1,                      // Clockwise movement
	[]
	] spawn BIS_fnc_establishingShot;
/////////////////////////////////////////////////ar//////////////////////////////////////////////////////////////

// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	TCB_AIS_PATH = "ais_injury\";
	{[_x] execVM (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit
	
	//{[_x] execVM (TCB_AIS_PATH+"init_ais.sqf")} forEach (units group player);													// only own group - you cant help strange group members
	
	//{[_x] execVM (TCB_AIS_PATH+"init_ais.sqf")} forEach [p1,p2,p3,p4,p5];														// only some defined units
};
// --------------------------------------------------------------------------------------------------------------