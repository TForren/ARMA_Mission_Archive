_spawned = _this select 0;


[_spawned] spawn {
	sleep 1;
	_spawned = _this select 0;
	_gaz = _spawned select 0;
	_operator = (driver _gaz);
	propagandaTrucks = propagandaTrucks + [_gaz];
	_ls1 = "Loudspeaker" createvehicle (getpos _gaz);
	_ls2 = "Loudspeaker" createvehicle (getpos _gaz);
	_ls1 attachTo [_gaz, [1.2, 1.6, 1.2] ]; 
	_ls1 setdir (getdir _gaz) + 270;
	_ls2 attachTo [_gaz, [-1.2, 1.6, 1.2] ]; 
	_ls2 setdir (getdir _gaz) - 270;
	
	_utex1 = "UserTexture1m_F" createvehicle (getpos _gaz);
	_utex2 = "UserTexture1m_F" createvehicle (getpos _gaz);
	_utex1 attachTo [_gaz, [1.2, -0.9, 0.5] ];
	//_utex1 setdir (getdir _gaz + 192);
	_utex1 setdir (getdir _gaz) - 90;
	_utex2 attachTo [_gaz, [-1.3, -0.9, 0.5] ];
	_utex2 setdir (getdir _gaz) + 90;
	
	_utex1 setObjectTexture [0, "propaganda.jpg"];
	_utex2 setObjectTexture [0, "propaganda.jpg"];
	
	_spawned = _spawned + [_ls1];
	[_spawned] spawn {
		_spawned = _this select 0;
		_gaz = _spawned select 0;
		_loudSpeaker = _spawned select 1;
		_operator = (driver _gaz);
		
		while {(alive _operator) && (alive _gaz)} do {
			[_loudSpeaker, "anthem",350] call CBA_fnc_globalSay3d;
			sleep 48;
		};
	};
	
	while {(alive _operator) && (alive _gaz)} do {
		intown = false;
		tooClose = false;
		pointTick = 8;
		{
			if ((_gaz distance _x) < 500) then {
				{
					if ( ((_gaz distance _x) < 500) && !(_gaz == _x) ) then {
						tooClose = true;
					} else {
						reqPoints = reqPoints + pointTick;
						publicVariable "reqPoints";
						[[ZeusCommander, format["+%1 requisition points: %2",pointTick,reqPoints]]] remoteExec ["HZ_fnc_radioMessage", 0];
					};
				} foreach propagandaTrucks;
			};
		} foreach cityCenters;
		
		
		sleep (1 * 60);
	};
	//removed destroyed/killed trucks
	propagandaTrucks = propagandaTrucks - [_gaz];
	{deletevehicle _x} foreach [_ls1,_ls2,_utex1,_utex2];
};