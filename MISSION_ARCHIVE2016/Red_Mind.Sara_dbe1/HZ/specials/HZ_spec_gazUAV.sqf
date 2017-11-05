_spawned = _this select 0;


[_spawned] spawn {
	sleep 1;
	_spawned = _this select 0;
	_gaz = _spawned select 0;
	_operator = (driver _gaz);
	
	_uav = "rhs_pchela1t_vvs" createvehicle (getpos _gaz);
	sleep 1;
	_uav setVelocity [0,0,200];
	createVehicleCrew _uav;
	_uav flyinHeight 200;
	
	while {(alive _operator) && (alive _gaz)} do {
		if (!alive _uav) then {
			_uav = "rhs_pchela1t_vvs" createvehicle (getpos _gaz);
			sleep 1;
			_uav setVelocity [0,0,200];
			createVehicleCrew _uav;
			_uav flyinHeight 150;
		};
		(group _uav) addWaypoint [position _gaz, 0];
		
		{
			if ((side _x != side _operator) && (_x distance _gaz < 1500)) then {
				forcedReveal = forcedReveal + [_x];
			} else {
				if (_x in forcedReveal) then {
					forcedReveal = forcedReveal - [_x];
				};
			};
		} foreach AllUnits + emptyVics;
		publicVariable "forcedReveal";
		sleep 10;
	};
	forcedReveal = [];
	publicVariable "forcedReveal";
	_uav setfuel 0;
};