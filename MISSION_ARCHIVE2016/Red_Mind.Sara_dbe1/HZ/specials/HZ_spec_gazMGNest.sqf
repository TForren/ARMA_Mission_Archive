_spawned = _this select 0;


[_spawned] spawn {
	sleep 1;
	_spawned = _this select 0;
	_gaz = _spawned select 0;
	_operator = (driver _gaz);
	_deployed = False;
	
	while {(alive _operator) && (alive _gaz) && !_deployed} do {
		if ((reqTable distance _gaz < 500) || speed _gaz > 1) then {
			//Too close or moving. Check later
		} else {
			startTime = time; 
			deployNest = False;
			_operator sideChat "Deployment started. Will finish in 30 seconds";
			while {(speed _gaz < 1) && !deployNest} do {
				if (time > (startTime + 30)) then { //after 30 seconds of waiting
					deployNest = True;
				};
				sleep 1;
			};
			if (deployNest) then {
				_deployed = True;
				[["GAZ66MGNest",_gaz,_operator]] call HZ_fnc_requestComp;
			} else {
				_operator sideChat "Deployment Canceled. Will try again soon";
			};
		};
		sleep 10;
	};
};