private ["_unit", "_channel", "_return"];

_unit = _this select 0;
_channel = _this select 1;

_return = false;

if ([[] call acre_api_fnc_getCurrentRadioList, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio) then
{
	if ([["ACRE_PRC148"] call acre_api_fnc_getRadioByType] call acre_api_fnc_getRadioChannel == _channel) then
	{
		_return = true;
	};
};

if ([[] call acre_api_fnc_getCurrentRadioList, "ACRE_PRC117F"] call acre_api_fnc_hasKindOfRadio) then
{
	if ([["ACRE_PRC117F"] call acre_api_fnc_getRadioByType] call acre_api_fnc_getRadioChannel == _channel) then
	{
		_return = true;
	};
};

_return
