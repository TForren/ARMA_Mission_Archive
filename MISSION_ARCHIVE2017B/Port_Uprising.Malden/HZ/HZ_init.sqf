HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

if (isServer) exitWith {

garrisonUnits = [];

{ 
	if (side _x == independent) then {
		_x setVariable ["acex_headless_blacklist", true];
		_x addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_x enablegunlights "forceOn";
		_x allowFleeing 0.5;

	};
} foreach allunits;

//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [getpos garrisonArea1, ["house"], 200];
	
	garCount = 3;
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
		
		if ( (attempts > 500) || (time > 80)) exitWith {systemchat "garrison script gave up"};
		
	};
	//systemchat "done";
};


//Check for hunting
[] spawn {
	_bluNear = false;
	while {!_bluNear} do {

		_nearbyUnits = nearestObjects [(getpos swarmArea1), ["man"], 50];
		
		{
			if (side _x == west) then {_bluNear = true};
		} foreach _nearbyUnits;
		
		if (_bluNear) then {
			{
				_x dofollow (leader (group _x));
				_x setVariable ["acex_headless_blacklist", false];
				[_x, [(getpos swarmArea1 select 0) + (random 80 - 40),
					  (getpos swarmArea1 select 1) + (random 80 - 40),
					  0]
				] remoteExec ["doMove", 0, true];
			} foreach garrisonUnits;
		};
		sleep 10;
	};
};


[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}

};
