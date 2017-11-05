HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

if !(isServer) exitWith {};

cache allowdamage false; 

randomNum = floor (random 4);
chosenPos = [0,0,0];
switch (randomNum) do {
    case 0: { chosenPos = [6193.68,11180.3,3.14741] };
    case 1: { chosenPos = [6186.19,11237.2,0.389538] };
    case 2: { chosenPos = [6247.35,11211.2,0.433754] };
    case 3: { chosenPos = [6273.45,11239.6,0] };
    case 4: { chosenPos = [6291.77,11261.4,3.72817]  };
    case 5: { chosenPos = [6245.93,11257.3,0.359764] };
    case 6: { chosenPos = [6299.23,11228.8,3.7615] };
    case 7: { chosenPos = [6309.23,11290.2,3.9612] };
};
cache setpos chosenPos;

_parkedVehCount = 30;
_roadList = chosenPos nearRoads 200;

civCarPool = ["RDS_Gaz24_Civ_03","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_02","RDS_Golf4_Civ_01","RDS_Ikarus_Civ_01","RDS_JAWA353_Civ_01","RDS_S1203_Civ_01","RDS_Octavia_Civ_01","RDS_Lada_Civ_01","RDS_Lada_Civ_04","RDS_Lada_Civ_03","RDS_Lada_Civ_02","RDS_tt650_Civ_01"];
			
_usedSegments = [];

for "_i" from 0 to _parkedVehCount do {
	_chosenCar = civCarPool call BIS_fnc_selectRandom;
	_roadSegment = _roadList call BIS_fnc_selectRandom;
	
	_roadList = _roadList - [_roadSegment];
	
	_dir = getdir _roadSegment;
	_newCar = _chosenCar createVehicle (getpos _roadSegment);
	_newCar setdamage (random 0.6);
	_newCar setFuel (random 0.7);
	_newCar setVehicleLock "LOCKEDPLAYER";
	_newCar setdir _dir;
	if (random 1 > 0.5) then {
		_newCar setdir _dir + 180;
	};
	_newCar setpos (_newCar modelToWorld [4,0,0]);
	//[center, 0, 10, 3, 0, 0.25, 0, [], [0,0,0]] call BIS_fnc_findSafePos
/* */
	_txt=format["pedestrianMkr%1",getpos _newCar];
	_debugMkr=createMarker [_txt,getpos _newCar];
	_debugMkr setMarkerShape "ICON";
	_debugMkr setMarkerType "mil_box";
	_debugMkr setMarkerColor "ColorBlack";

};


garrisonUnits = [];

//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [chosenPos, ["house"], 100];
	_cacheHouse = nearestBuilding chosenPos;
	_houses = _houses - [_cacheHouse];
	[_cacheHouse,5,2] call HZ_fnc_GarrisonHouse;

	garCount = 4;	
	attempts = 0;
	while {garCount > 0} do {
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		_cnt = 0;
		_posarray = [];
		_houses = _houses - [_chosenHouse];
		//systemchat "checking house";
		
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
	cache allowdamage true;
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
				} foreach [vic1,vic2,vic3];
			};
		} foreach [patrolGroup1,patrolGroup2];
		
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

[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}
