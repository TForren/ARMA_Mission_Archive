
diag_log format ["Mission failed, clean and make new."];
{deleteVehicle _x} foreach baseObjectInstances;
baseObjectInstances = [];

{
	_classname = (_x select 0);
	_pos = (_x select 1);
	_dir = (_x select 2);
	_init = (_x select 3);
	diag_log format["refreshing: %1 at %2 with direction %3",_classname,_pos,_dir];
	_curObject = _classname createVehicle _pos;
	_curObject remoteExec [_init];
	_curObject setpos _pos;
	_curObject setdir _dir;
	baseObjectInstances = baseObjectInstances + [_curObject];
} foreach baseObjects;

[] call HZ_fnc_cleanup;


forcePlayerRespawn = true; publicVariable "forcePlayerRespawn";