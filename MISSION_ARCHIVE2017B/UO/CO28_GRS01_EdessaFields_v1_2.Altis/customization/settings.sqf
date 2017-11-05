asr_ai3_main_setskills = 0;

lynx_objEnemy = true;
lynx_objFriendly = false;

if (isServer) then {

	setViewDistance 1500;

	FW_TimeLimit = 90;
	FW_TimeLimitMessage = "TIME LIMIT REACHED!";

	[west, "Freedom and Independence Army", "ai"] call FNC_AddTeam;
	[east, "CSAT 1st Infantry Battalion", "player"] call FNC_AddTeam;

	{
		if (side _x == west) then {
			_x setskill ["aimingAccuracy",0.4];
			_x setskill ["aimingShake",0.5];
			_x setskill ["aimingSpeed",0.8];
			_x setskill ["endurance",1.0];
			_x setskill ["spotDistance",1.0];
			_x setskill ["spotTime",1.0];
			_x setskill ["courage",1.0];
			_x setskill ["reloadSpeed",1.0];
			_x setskill ["commanding",0.8];
		};
	} forEach (allUnits - playableUnits);

	[{
		if ({_x distance PLT_TRUCK_HOME < 8} count playableUnits > 0) then {
			PLT_TRUCK setPosATL getPosATL PLT_TRUCK_HOME;
			PLT_TRUCK setDir (getDir PLT_TRUCK_HOME);
		};
	},1] call CBA_fnc_waitAndExecute;

	//VKing Markers
	_blu1 = [getMarkerPos "PLT_1_Marker",west,["infantry","1"],3,1,[west,east],"C"] call vk_fnc_addMarker;
	_blu2 = [getMarkerPos "PLT_2_Marker",west,["infantry","2"],3,1,[west,east],"C"] call vk_fnc_addMarker;
	_blu3 = [getMarkerPos "PLT_3_Marker",west,["infantry","3"],3,1,[west,east],"C"] call vk_fnc_addMarker;
	_blu4 = [getMarkerPos "COY_HQ",west,["infantry","hq","c"],4,1,[west,east],"1"] call vk_fnc_addMarker;

	_red1 = [getMarkerPos "red_1_marker",east,["infantry"],3,1,[west,east]] call vk_fnc_addMarker;
};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = false;

	setViewDistance 1500;

	[] execVM "customization\custom_actions.sqf";

	switch (side player) do {
		case east: {
			FW_RespawnTickets = 2;

			[player,"GryffinRegiment"] call BIS_fnc_setUnitInsignia;
		};
	};

	[{
		_str = "";
		switch (assignedTeam player) do {
			case "BLUE": {_str = "<t size='1.5'>You are in <br/><t color='#0000FF'>BLUE</t> team.</t> "};
			case "RED": {_str = "<t size='1.5'>You are in <br/><t color='#FF0000'>RED</t> team.</t> "};
			case "GREEN": {_str = "<t size='1.5'>You are in <br/><t color='#00FF00'>GREEN</t> team.</t> "};
			case "YELLOW": {_str = "<t size='1.5'>You are in <br/><t color='#FFFF00'>YELLOW</t> team.</t> "};
			default { };
		};
		hint parseText _str;
	},[],15] call CBA_fnc_waitAndExecute;
};