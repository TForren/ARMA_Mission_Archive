waitUntil {!(isNull player)};
if (!isDedicated) then
{
	switch(side player) do
	{
		case west:
		{
			_ret = ["ACRE_PRC343", "default1" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC148", "default1" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC152", "default1"] call acre_api_fnc_setPreset;
		};
		case east:
		{
			_ret = ["ACRE_PRC343", "default2" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC148", "default2" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC152", "default2"] call acre_api_fnc_setPreset;
		}; 
		case resistance:
		{ 
			_ret = ["ACRE_PRC343", "default3" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC148", "default3" ] call acre_api_fnc_setPreset;
			_ret = ["ACRE_PRC152", "default3"] call acre_api_fnc_setPreset;
		};
	};
};

