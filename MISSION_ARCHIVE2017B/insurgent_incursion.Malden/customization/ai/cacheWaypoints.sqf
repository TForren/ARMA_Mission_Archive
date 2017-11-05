//Written by beta
//Cache a set of waypoints for use in scripts later


if (isServer) then
{
	private ["_group", "_units", "_array", "_wps"];
	
	_group = _this select 0;
	
	_units = units _group;
	_wps = waypoints _group;
	
	_array = [];
	{
		_array = _array + [[waypointType _x, waypointTimeout _x, waypointStatements _x, waypointSpeed _x, waypointScript _x, waypointPosition _x, waypointHousePosition _x, waypointFormation _x, waypointCombatMode _x, waypointBehaviour _x, waypointCompletionRadius _x]];
	} forEach _wps;
	
	{
		deleteVehicle _x;
	} forEach _units;
	
	deleteGroup _group;
	
	_array
};
