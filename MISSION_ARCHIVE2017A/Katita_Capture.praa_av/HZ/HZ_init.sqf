HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgSideLoc.sqf";

if !(isServer) exitWith {};

excludeGroups = [aham5];

{
	if (side _x == independent) then {
		_x setSkill ["aimingspeed", (0.4 + (random 0.3))];
		_x setSkill ["aimingaccuracy", (0.1 + (random 0.2))];
		_x setSkill ["aimingShake", (0.6 + (random 0.3))];
	};
} foreach allunits;

{
	_group = _x;
	_leader = (leader _group);
	_group setBehaviour "STEALTH";
	_group setCombatMode "GREEN";
	{
		_x setVariable ["acex_headless_blacklist", true];
		_x setUnitPos "DOWN";
		dostop _x;
		_x addmagazine "MOLOTOV_MAG";
	} foreach units _x;
	
} foreach [aham1,aham2,aham3,aham4,aham5,aham6];


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
	
	_loc = [[east,true,[]]] call HZ_fnc_avgSideLoc;
	//_loc = [2562.31,5273.34,0];
	_wp = _group addWaypoint [_loc, 0];
	[_group, 0] setWaypointSpeed "FULL";
	[_group, 0] setWaypointType  "SAD";
	
};


garrisonUnits = [];


//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [[1983.05,3165.78,0], ["house"], 60];
	
	garCount = 4;
	attempts = 0;
	while {garCount > 0} do {
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		
		if (isNil "_chosenHouse") exitWith {};
		
		_posArray = [];//(typeof _chosenHouse) call hz_fnc_getPosArray;
	
		if (count _posArray == 0) then {	
			_cnt = 0;
			_posarray = [];
			_houses = _houses - [_chosenHouse];
			
			
			while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
				_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
				_posarray = _posarray + [_pos];		//add the position to the list
				_cnt = _cnt + 1;					//increment counter
				sleep 0.001;
			};
			
			//systemchat format["house: %1 with %2",_chosenHouse,(count _posarray)];
			
			//_marker1 = createMarker [format["Marker%1",random(100)], (getpos _chosenHouse)];
			//_marker1 setMarkerText format["%1",(count _posarray)];
			//_marker1 setMarkerShape "ICON";
			//_marker1 setMarkerType "hd_dot";
			
		};
	
		if (count _posarray > 3) then {
			[_chosenHouse,_posarray,5,2] call HZ_fnc_GarrisonHouse;
			garCount = garCount - 1;
		};
		
		attempts = attempts + 1;
		
		if (attempts > 500) exitWith {systemchat "garrison script gave up"};
	
	};
	//systemchat "done";
};
/*

//Check for hunting
[] spawn {
	_bluNear = false;
	while {!_bluNear} do {

		_nearbyUnits = nearestObjects [[5882.31,4880.47,0], ["man"], 50];
		
		{
			if (side _x == west) then {_bluNear = true};
		} foreach _nearbyUnits;
		
		if (_bluNear) then {
			{[_x, [5882.31,4880.47,0]] remoteExec ["doMove", 0, true]} foreach garrisonUnits;
		};
		sleep 10;
	};
};
*/

[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}


