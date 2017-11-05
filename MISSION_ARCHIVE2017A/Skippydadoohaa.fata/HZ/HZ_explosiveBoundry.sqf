/*
[center, x, y, angle, isRectangle, checkInterval, [exclude,Array]] call HZ_explosiveBoundry;
center of safe area
x axis of safe area
y axis of safe area
angle of safe area
frequency of checking
exclusioned units

*/
_this spawn {
	_center = _this select 0;
	_xAxis = _this select 1;
	_yAxis = _this select 2;
	_angle = _this select 3;
	_rectangle = _this select 4;
	_interval = _this select 5;
	_exclude = _this select 6;

	_explosionTypes = ["Bomb_03_F","Bomb_04_F","R_60mm_HE","R_80mm_HE","HelicopterExploSmall","Bo_Mk82"];

	while {true} do {
		
		{
			_curUnitPos = (getpos _x);
			
			_inArea = _curUnitPos inArea [_center, _xAxis, _yAxis, _angle, _rectangle];			
			
			if (!_inArea && !(_x in _exclude)) then {
				
				systemChat format ["%1 is out of bounds!",_x];
				
				_chosenExplosion = _explosionTypes call BIS_fnc_selectRandom;
		
				_boomPos = [((_curUnitPos select 0) + random 10) - 20, ((_curUnitPos select 1) + random 10) - 20, 0];
		
				_boom = createVehicle [_chosenExplosion, _boomPos, [], 0, "CAN_COLLIDE"];
				
			};
			sleep 0.01;
		} foreach AllUnits;
		
		sleep _interval;
		
	};

};
