if (isServer) then {
	[] spawn {
		stops = [getmarkerpos "p1",getmarkerpos "p2",getmarkerpos "p3" ,getmarkerpos "p4", getmarkerpos "p5"];
		trucks = [t1,t2,t3,t4,t5];
		_ti = 0;
		{
			null = [_x,stops,_ti] spawn {
				_truck = _this select 0;
				_stops = _this select 1;
				_i = _this select 2;
				while {alive _truck} do {
					_chosenStop = _stops select (_i mod 6);
					_wp = (group _truck) addWaypoint [_chosenStop, 0];
					_i = _i + 1;
					waitUntil{sleep 1; (_truck distance _chosenStop) < 10};
					sleep (random 10);
				};
			};
			_ti = _ti + 1;
		} foreach trucks;
	};
};