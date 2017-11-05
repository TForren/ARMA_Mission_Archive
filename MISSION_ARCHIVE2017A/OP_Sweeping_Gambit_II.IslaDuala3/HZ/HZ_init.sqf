HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgSideLoc.sqf";

if !(isServer) exitWith {};

	{
		_x setVariable ["acex_headless_blacklist", true];
	} foreach allunits;

excludeGroups = [bham3];

{
	_group = _x;
	_leader = (leader _group);
	_group setBehaviour "STEALTH";
	_group setCombatMode "GREEN";
	{
		_x setUnitPos "DOWN";
		dostop _x;
		_x addmagazine "MOLOTOV_MAG";
	} foreach units _x;
	
} foreach [aham1,aham2,aham3,aham4,aham5];


{
	_group = _x;
	_leader = (leader _group);
	_group setBehaviour "STEALTH";
	_group setCombatMode "GREEN";
	{
		_x setUnitPos "DOWN";
		dostop _x;
		_x spawn {
			_group = _this;
			sleep 5;
			{
				_x disableAI "ALL";
			} foreach units _group;
		};
	} foreach units _x;
	
} foreach [bham1,bham2,bham3,bham4,bham5,bham6,bham7,bham8,bham9,bham10];


//activate the given group by running doFollow on leader and setting them to engage
//group call HZ_fnc_activateGroup;
HZ_fnc_activateGroup = {
	_group = _this;
	_leader = (leader _group);
	_group setBehaviour "AWARE";
	_group setCombatMode "RED";
	_group setFormation "LINE";
	
	{
		_x setUnitPos "UP";
		if !(_group in excludeGroups) then {_x doFollow _leader};
		_x enableAI "ALL";
		_x setVariable ["acex_headless_blacklist",false];
	} foreach units _group;
	
	if (_group in excludeGroups + [bham6,bham7,bham8,bham9]) exitwith {};
	
	_loc = [[west,true,[]]] call HZ_fnc_avgSideLoc;
	//_loc = [2562.31,5273.34,0];
	_wp = _group addWaypoint [_loc, 0];
	[_group, 0] setWaypointSpeed "FULL";
	[_group, 0] setWaypointType  "SAD";
	
};

