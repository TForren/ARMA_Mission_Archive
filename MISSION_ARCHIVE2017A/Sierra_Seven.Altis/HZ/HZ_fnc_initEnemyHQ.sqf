//server
HQAlertLevel = 0;
publicVariable "HQAlertLevel";

alertLocations = [];


//[helo]
fnc_callHelo = {
	_helo = _this select 0;
	while {alive _helo} do {
		_wp = (group _helo) addWaypoint [(getpos SOC) , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "FULL";
		sleep 10;
	};
};


[] spawn {
	deployed = 0;
	while {deployed < 3} do {
		if ((HQAlertLevel == 1) && deployed < 1 ) then {
			[mi8a] remoteExec ["fnc_callHelo", 2];
			deployed = deployed + 1;
		};
		if ((HQAlertLevel == 2) && deployed <  2 ) then {
			[mi8b] remoteExec ["fnc_callHelo", 2];
			deployed = deployed + 1;
		};
		if ((HQAlertLevel == 3) && deployed <  3 ) then {
			[mi8b] remoteExec ["fnc_callHelo", 2];
			deployed = deployed + 1;
		};
		sleep 6;
	};
};