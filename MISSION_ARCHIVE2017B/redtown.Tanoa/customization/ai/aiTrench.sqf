//Written by beta
//AI logic to make troops in a trench go to ground when under fire or artillery

while {true} do
{
	{
		_x setVariable ["aiStand", true, false];

		if (morale _x < 0.3) then
		{
			_x setVariable ["aiStand", false, false];
		};

		if (_x getVariable "aiStand") then
		{
			_x setUnitPos "Up";
		}
		else
		{
			_x setUnitPos "Middle";
		};

		sleep 0.1;
	} forEach trenchUnits;

	sleep 5;

	{
		if (!alive _x) then
		{
			trenchUnits = trenchUnits - [_x];
		};

		sleep 0.01;
	} forEach trenchUnits;
};
