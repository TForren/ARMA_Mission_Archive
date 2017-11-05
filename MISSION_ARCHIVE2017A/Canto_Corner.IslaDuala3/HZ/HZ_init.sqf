HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

if !(isServer) exitWith {};

garrisonUnits = [];

//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [cache, ["house"], 300];
	_cacheHouse = nearestBuilding [8196.57,5538.39,0];
	_houses = _houses - [_cacheHouse];
	[_cacheHouse,5,2] call HZ_fnc_GarrisonHouse;

	garCount = 4;	
	attempts = 0;
	while {garCount > 0} do {
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		_cnt = 0;
		_posarray = [];
		_houses = _houses - [_chosenHouse];
		systemchat "checking house";
		
		while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
			_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
			_posarray = _posarray + [_pos];		//add the position to the list
			_cnt = _cnt + 1;					//increment counter
			sleep 0.001;
		};
		
		if (count _posarray > 3) then {
			[_chosenHouse,5,2] call HZ_fnc_GarrisonHouse;
			garCount = garCount - 1;
		};
		
		attempts = attempts + 1;
		
		if (attempts > 500) exitWith {systemchat "garrison script gave up"};
		
	};
	systemchat "done";
};

//Check for hunting
[] spawn {
	_bluNear = false;
	while {!_bluNear} do {
		{
			if (behaviour (leader _x) == "COMBAT") then {
				_curGroup = _x;
				_alertPos = (getpos  (leader _curGroup));
				sleep 60;
				{
					if !(isNull _x) then {
						[_x, _alertPos] remoteExec ["doMove", 0, true];
					};
				} foreach [vic1,vic2];
			};
		} foreach [patrolGroup1,patrolGroup2,patrolGroup3];
		
		_nearbyUnits = nearestObjects [getpos cache, ["man"], 50];
		{
			if (side _x == west) then {_bluNear = true};
		} foreach _nearbyUnits;
		
		if (_bluNear) then {
			{[_x, getpos cache] remoteExec ["doMove", 0, true]} foreach garrisonUnits;
		};
		sleep 10;
	};
};

/*[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}
*/