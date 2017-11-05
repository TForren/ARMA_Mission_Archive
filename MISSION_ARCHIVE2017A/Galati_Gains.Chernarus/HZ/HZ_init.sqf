HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

if !(isServer) exitWith {};

garrisonUnits = [];

#include "HZ_buildingAIPosArrays.sqf";


//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [[5882.31,4880.47,0], ["house"], 120];
	
	garCount = 5;
	attempts = 0;
	while {garCount > 0} do {
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		
		if (isNil "_chosenHouse") exitWith {};
		_posArray = (typeof _chosenHouse) call hz_fnc_getPosArray;
	
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
			
			systemchat format["house: %1 with %2",_chosenHouse,(count _posarray)];
			
			_marker1 = createMarker [format["Marker%1",random(100)], (getpos _chosenHouse)];
			_marker1 setMarkerText format["%1",(count _posarray)];
			_marker1 setMarkerShape "ICON";
			_marker1 setMarkerType "hd_dot";
			
		};
	
		if (count _posarray > 3) then {
			[_chosenHouse,_posarray,5,2] call HZ_fnc_GarrisonHouse;
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

/*
[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}
*/