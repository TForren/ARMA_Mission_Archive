waitUntil {!isNil "statsLoaded"};

for[{_x = 2},{_x < 20},{_x = _x + 1}] do
{
	_thePlayer = missionNamespace getVariable format["player%1", _x];
	if(!isNil("_thePlayer")) then
	{
		if(isPlayer _thePlayer) then
		{
			["positionPlayer", getPosATL _thePlayer] call fn_SaveStat;
			["directionPlayer", direction _thePlayer] call fn_SaveStat;
			["gogglesPlayer", goggles _thePlayer] call fn_SaveStat;
			["vestPlayer", vest _thePlayer] call fn_SaveStat;
			["outfit", uniform _thePlayer] call fn_SaveStat;
			["hat", headGear _thePlayer] call fn_SaveStat;
			["weaponsPlayer", weapons _thePlayer] call fn_SaveStat;
			["magazinesPlayer", magazines _thePlayer] call fn_SaveStat;
			["itemsPlayer", items _thePlayer] call fn_SaveStat;
			["backpackPlayer", backpack _thePlayer] call fn_SaveStat;
		};
	};
};


