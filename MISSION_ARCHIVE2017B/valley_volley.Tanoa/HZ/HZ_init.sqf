HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

HZ_fnc_getClosest = {
	_shortest = 9999;
	_closestDude = "";
	{
		if ( side _x == west && ((obj distance _x) < _shortest)) then {
			_shortest = (obj distance _x);
			_closestDude = _x;
		};
	} foreach allunits;
	_closestDude;
};

HZ_fnc_beginHuntObj = {
	if (_this getvariable "hunting" == true) exitWith {};
	_this spawn {
		while {true} do {
			_group = _this;
			//_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_avgLoc = getpos ([] call HZ_fnc_getClosest); 
			_newHuntLoc = [(_avgLoc select 0) + (random 50 - 25),(_avgLoc select 1) + (random 50 - 25),0];
			_group addWaypoint [_newHuntLoc,0];
			[_group,0] setWaypointType "SAD";
			[_group,0] setWaypointCombatMode "RED";
			{_x domove _newHuntLoc} foreach units _group;
			sleep 60;
		};
	};
};

HZ_fnc_beginHuntAvg = {
	if (_this getvariable "hunting" == true) exitWith {};
	_this spawn {
		while {true} do {
			_group = _this;
			_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			//_avgLoc = getpos ([] call HZ_fnc_getClosest); 
			_newHuntLoc = [(_avgLoc select 0) + (random 50 - 25),(_avgLoc select 1) + (random 50 - 25),0];
			_group addWaypoint [_newHuntLoc,0];
			[_group,0] setWaypointType "SAD";
			[_group,0] setWaypointCombatMode "RED";
			{_x domove _newHuntLoc} foreach units _group;
			sleep 60;
		};
	};
};


/*
[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}*/
