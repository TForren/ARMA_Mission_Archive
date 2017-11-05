//Written by beta
//Spawn a group that was cached


private ["_array", "_group"];

_array = _this select 0;

_group = createGroup (_array select 0 select 0);

{
	(_x select 5) createUnit [(_x select 3), _group, (_x select 4), (_x select 1), (_x select 2)];
} forEach _array;

_group
