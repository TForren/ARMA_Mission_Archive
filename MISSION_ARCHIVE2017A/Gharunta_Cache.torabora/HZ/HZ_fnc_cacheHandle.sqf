[] spawn {
	_houses = nearestObjects [cache, ["house"], 200];

	_cnt = 0;
	_posarray = [];
	while {_cnt < 2} do { //loop until good building found
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		_cnt = 0;
		_posarray = [];
		while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
			_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
			_posarray = _posarray + [_pos];		//add the position to the list
			_cnt = _cnt + 1;					//increment counter
			sleep 0.01;
		};
	};
	_chosenPos = _posarray call BIS_fnc_selectRandom;
	cache allowdamage false; //stop the immediate cache destruction because arma can't even
	cache setpos _chosenPos;
	[cache, "cache"] call FNC_VehicleGearScript;
	[cache] spawn {
		cache = _this select 0;
		sleep 5;
		cache allowdamage true;
	};
};

