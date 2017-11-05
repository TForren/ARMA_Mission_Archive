if (!isServer) exitWith {};

[_this select 0] spawn {
	_flareLoc = _this select 0;

	for "_i" from 1 to 4 + random(3) do {
		_flrObj = "F_20mm_Red" createvehicle [(_flareLoc select 0) + (random(300) - 150),
												(_flareLoc select 1) + (random(300) - 150), 
												250 + random(90)]; 
		_flrObj setVelocity [0,0,(-0.5 + random(-0.5))];
		sleep random(8);
	};
};