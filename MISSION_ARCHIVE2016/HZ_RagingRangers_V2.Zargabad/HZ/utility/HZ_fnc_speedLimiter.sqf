_vehicle = (_this select 0) select 0;
_maxSpeed = (_this select 0) select 1;
_offRoadSpeed = (_this select 0) select 2;

[[_vehicle,_maxSpeed,_offRoadSpeed]] spawn { 
	_vehicle = (_this select 0) select 0;
	_maxSpeed = (_this select 0) select 1;
	_offRoadSpeed = (_this select 0) select 2;
	_finalSpeed = 0;
	
	while {true} do { 
		_xVel = 0;
		_yVel = 0;
		if (isOnRoad _vehicle) then {
			_finalSpeed = _maxSpeed;
		}else{
			_finalSpeed = _offRoadSpeed;
		};
		
		if ((speed _vehicle) >= _finalSpeed) then {
			
			if ((velocity _vehicle) select 0 < 0) then {
				_xVel = 0.2;
			} else {
				_xVel = -0.2;
			};
			
			if ((velocity _vehicle) select 1 < 0) then {
				_yVel = 0.2;
			} else {
				_yVel = -0.2;
			};
			
			_vehicle setVelocity [
			((velocity _vehicle) select 0) + _xVel, 
			((velocity _vehicle) select 1) + _yVel, 
			((velocity _vehicle) select 2)];
		};
	  sleep 0.06;
	};
};

