while {true} do
{
	waitUntil {uniform player != currentUniform};

	removeUniform player;
	player forceAddUniform currentUniform;
};

/*
while {true} do
{
	sleep 1;
	{
		_uniformVar = _x getVariable ["currentUniform", ""];
		if ((_uniformVar != "") && (_uniformVar != uniform _x)) then
		{
			removeUniform _x;
			_x addUniform _uniformVar;
		};
	} forEach allUnits;
};
*/