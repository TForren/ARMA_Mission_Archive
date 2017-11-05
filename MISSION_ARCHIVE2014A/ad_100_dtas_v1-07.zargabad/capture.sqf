private ["_cap", "_count", "_r", "_nextTick"];

_fnc_extraAttackersInZone =
{
	private ["_count", "_units", "_defenderSide"];
	_count = 0;
	_units = list trgObj;
	_defenderSide = EAST;
	if (attackerSide == EAST) then
	{
		_defenderSide = WEST;
	};
	{
		if ([_x] call fnc_isCapturing) then
		{
			if (side _x == attackerSide) then
			{
				_count = _count + 1;
			};
			if (side _x == _defenderSide) then
			{
				_count = _count - 1;
			};
		};
	} forEach _units;
	_count
};

_r = ln (1 - minCapTime/maxCapTime);

_nextTick = time;

while {true} do
{
	waitUntil {!roundInProgress};
	waitUntil {roundInProgress};
	
	_nextTick = time;
	_cap = 0;
	
	while {roundInProgress && _cap < 1} do
	{
		waitUntil {time > _nextTick};
		_nextTick  = _nextTick + 1;
		_count = ([] call _fnc_extraAttackersInZone);
		if (_count>0) then
		{
			_cap = _cap + (1 - exp (_r*_count))/minCapTime;
		};	
	};
	if (_cap >= 1 && roundInProgress) then
	{
		if (attackerSide == WEST) then
		{
			bObjW=true;
		}
		else
		{
			bObjE=true;
		};
	};
};