/*
[center, radius, interval, minTime, maxTime] call HZ_randomMortars;
center of mortar area
radius of mortar area
how many "safe" mortars before a potentially harmful mortar lands
minTime until next mortar
maxTime until next mortar
[[0,0,0], 200, 4 ,3, 10] call HZ_randomMortars;

*/

_this spawn {
	_center = _this select 0;
	_radius = _this select 1;
	_trueRandInterval = _this select 2;
	_minTime = _this select 3;
	_maxTime = _this select 4;
	_centerX = _center select 0;
	_centerY = _center select 1;

	_explosionTypes = ["R_60mm_HE","R_80mm_HE","HelicopterExploSmall"];

	_mortarTicker = 0;

	/*
	[pos] call _fnc_NearPlayers;
	Takes in a position and returns true if close to players (within 20m)
	*/
	_fnc_NearPlayers = {
		
		_pos = _this select 0;
		
		_result = false;
		
		{
			if (_pos distance (getpos _x) < 20) then {
				
				_result = true;
				
			};
		} foreach allunits;
		
		_result; //return
		
	};
	
	/*
	[pos] call _fnc_spawnShell;
	Takes in a position creates a whistle effect above it followed by the boom.
	*/
	_fnc_spawnShell = {
		_pos = _this select 0;
		
		_chosenSound = ["art1","art2","art3","art4","art5"] call BIS_fnc_selectRandom;
		
		_soundSource = "Land_HelipadEmpty_F" createvehicle [_pos select 0, _pos select 1, 50];
		
		[_soundSource, _chosenSound, 1000] call CBA_fnc_globalSay3d;
		
		sleep (random 2) + 2;
		
		deletevehicle _soundSource;
		
		_boom = createVehicle [_chosenExplosion, _chosenPos, [], 0, "CAN_COLLIDE"];
		
	};

	while {true} do {

		_randX = (random (_radius)*2 - _radius);
		_randY = (random (_radius)*2 - _radius);
		_finalX = _centerX - _randX;
		_finalY = _centerY - _randY;

		_chosenPos = [_finalX,_finalY,0];
	
		if (_mortarTicker < _trueRandInterval) then {
			
			systemChat format ["safe mortar"];
			
			while {[_chosenPos] call _fnc_NearPlayers} do {
				
				_randX = (random (_radius)*2 - _radius);
				_randY = (random (_radius)*2 - _radius);
				_finalX = _centerX - _randX;
				_finalY = _centerY - _randY;

				_chosenPos = [_finalX,_finalY,0];
						
				systemChat format ["Trying %1",_chosenPos];
				
			};
			
			systemChat format ["Found Safe pos %1",_chosenPos];
			
		} else {
			
			systemChat format ["UNSAFE MORTAR. Reset ticker"];
			
			_mortarTicker = 0;
		};
		
		_chosenExplosion = _explosionTypes call BIS_fnc_selectRandom;
		
		[_chosenPos] call _fnc_spawnShell;
		
		_mortarTicker = _mortarTicker + 1;
		
		//_markerstr = createMarker [format ["%1",_chosenPos],_chosenPos];
		//_markerstr setMarkerShape "ICON";
		//_markerstr setMarkerType "hd_dot";
		
		sleep (random ((_maxTime-_minTime) + _minTime));
	};

};
