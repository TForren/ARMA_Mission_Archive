//Written by beta
//Makes AI launch paraflares when in contact

private ["_targets", "_contactFlag", "_unit", "_units", "_rand", "_flareUnits"];

while {true} do
{
	if (daytime > 20.00 || daytime < 4.00) then
	{
		{
			_units = units _x;
			_unit = leader _x;
			_targets = _unit nearTargets 500;
			_contactFlag = false;
			{
				if ((_x select 2) == WEST) then
				{
					_contactFlag = true;
				};
				sleep 0.01;
			} forEach _targets;

			if (_contactFlag) then
			{
				_flareUnits = [];
				{
					_flareUnits = _flareUnits + [_x];
				} forEach _units;

				if (count _flareUnits > 0) then
				{
					_rand = round (random ((count _flareUnits) - 1));
					_unit = _flareUnits select _rand;

					[_unit] execVM "customization\ai\launchParaflare.sqf";
				};
			}
			else
			{
				if ((random (1)) > 0.95) then
				{
					_flareUnits = [];
					{
						_flareUnits = _flareUnits + [_x];
					} forEach _units;

					if (count _flareUnits > 0) then
					{
						_rand = round (random ((count _flareUnits) - 1));
						_unit = _flareUnits select _rand;

						[_unit] execVM "customization\ai\launchParaflare.sqf";
					};
				};
			};

			sleep 0.5;
		} forEach paraflareGroups;
	};

	sleep 40;
};
