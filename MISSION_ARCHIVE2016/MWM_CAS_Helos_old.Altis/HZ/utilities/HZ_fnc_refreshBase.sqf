diag_log format ["Mission failed, clean and make new."];
titleText ["", "BLACK OUT", 3];
sleep 4;
Hint "";
titleText ["Mission Failed, restarting...", "BLACK FADED"];
player setdamage 1;
{deleteVehicle _x} foreach baseObjectInstances;

{
	_classname = (_x select 0);
	_pos = (_x select 1);
	_dir = (_x select 2);
	_init = (_x select 3);
	_curObject = _classname createVehicle _pos;
	_curObject remoteExec [_init];
	_curObject setpos _pos;
	_curObject setdir _dir;
	baseObjectInstances = baseObjectInstances + [_curObject];
} foreach baseObjects;

[] call HZ_fnc_cleanup;

sleep 3;
titleText ["", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];	
sleep 3;
