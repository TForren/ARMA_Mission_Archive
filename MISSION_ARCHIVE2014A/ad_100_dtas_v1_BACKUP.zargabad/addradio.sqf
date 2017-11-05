private ["_bGiveWeapons", "_i", "_radio"];

_bGiveWeapons = _this select 0;

if (!isACRE) then
{
	player addWeapon "ItemRadio";
}
else
{
	_items = (items player) - ["ItemRadio"];
	removeAllItems player;
	for "_i" from 0 to (count _items-1) do
	{
		_radio = [_items select _i] call acre_api_fnc_getBaseRadio;
		if (toLower(str _radio)!="false") then
		{
			_items set [_i, ""];
		};
	} forEach _items;
	_items = _items - [""];
	
	sleep .6;
	removeAllItems player;
	
	{player addWeapon _x} forEach _items;

	if (_bGiveWeapons) then
	{
		if (sidePlayer == attackerSide) then
		{
			player addWeapon "ACRE_PRC148";
		}
		else
		{
			player addWeapon "ACRE_PRC343";
		};
	};
};