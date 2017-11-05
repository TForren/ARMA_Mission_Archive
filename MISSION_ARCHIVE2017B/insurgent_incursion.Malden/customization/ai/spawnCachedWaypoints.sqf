//Written by beta
//Spawn a set of waypoints that was cached


private ["_array", "_group", "_wp"];

_array = _this select 0;
_group = _this select 1;

{
	_wp = _group addWaypoint [(_x select 5), 0];
	_wp setWaypointType (_x select 0);
	_wp setWaypointTimeout (_x select 1);
	_wp setWaypointStatements (_x select 2);
	_wp setWaypointSpeed (_x select 3);
	_wp setWaypointScript (_x select 4);
	_wp setWaypointHousePosition (_x select 6);
	_wp setWaypointFormation (_x select 7);
	_wp setWaypointCombatMode (_x select 8);
	_wp setWaypointBehaviour (_x select 9);
	_wp setWaypointCompletionRadius (_x select 10);
} forEach _array;
