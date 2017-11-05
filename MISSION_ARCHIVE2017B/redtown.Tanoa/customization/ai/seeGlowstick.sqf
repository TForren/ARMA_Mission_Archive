//Written by beta
//Allows AI to detect players with attached glowsticks


private ["_glowUnits", "_spotUnits", "_unit"];

sleep 1;  //wait until mission starts

while {true} do
{
	_glowUnits = [];
	_spotUnits = [];
	{
		if (side _x == WEST) then
		{
			if (!(isNil {_x getVariable "ace_attached_knicklicht_object"})) then
			{
				_glowUnits = _glowUnits + [_x];
			};
		};
		
		if (side _x == EAST) then
		{
			_spotUnits = _spotUnits + [_x];
		};
	} forEach allUnits;
	
	{
		_unit = _x;
		{
			if (_unit distance _x < 800) then
			{
				_unit reveal _x;
				
				if (_unit distance _x < 200) then
				{
					_unit doTarget _x;
					_unit doFire _x;
				};
			};
		} forEach _glowUnits;
	} forEach _spotUnits;
	
	sleep 5;
};
