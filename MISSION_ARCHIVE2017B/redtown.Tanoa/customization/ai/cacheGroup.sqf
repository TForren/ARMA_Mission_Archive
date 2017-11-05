//Written by beta
//Cache a group for use in scripts later

if (isServer) then
{
	private ["_group", "_units", "_array"];
	
	_group = _this select 0;
	_units = units _group;
	
	_array = [];
	{
		_array = _array + [[side _x, skill _x, rank _x, getPosASL _x, (_x getVariable "myInit"), typeOf _x]];
	} forEach _units;
	
	{
		deleteVehicle _x;
	} forEach _units;
	
	deleteGroup _group;
	
	_array
};
