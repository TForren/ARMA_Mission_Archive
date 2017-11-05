
_spawnLoop = true;
_strikeTrigger = _this select 0;
_strikeLocation = [];
_playerLocation = [];
_haveTargetValid = false;
_spawnIteration = 0;

	while {_spawnLoop} do {

		while {_spawnIteration < 8} do { //number of hits

			_invalidLocation = 0;
			_strikeLocation = [0,0,0];
			_playerLocation = [];
			_haveTargetValid = false;

			
			_strikeLocation = [position hideLogic, 300] call CBA_fnc_randPos;
			_playerLocation = nearestObjects [position hideLogic, ["Man"], 400];

			sleep 8; //time between hits

			{
				if (_x distance _strikeLocation <= 30) then {
					_invalidLocation = _invalidLocation + 1;
				};
			} forEach _playerLocation;

			if (_invalidLocation == 0) then {
				_haveTargetValid = true;

			}
			else {
				_haveTargetValid = false;
				_invalidLocation = 0;
			};

			if (_haveTargetValid) then {

				_mortarStrike = "rhs_ammo_3vo18" createVehicle [_strikeLocation select 0,_strikeLocation select 1,500];
				_mortarStrike setVelocity [0, 0, -225];

				//_tmpMarker = random(5) + random(250000);

				//_tempMark = createMarker [str(_tmpMarker), _strikeLocation];
				//_tempMark setMarkerType "mil_dot";
				//_tempMark setMarkerColor "ColorRed";

				_haveTargetValid = false;
				_invalidLocation = 0;
				_spawnIteration = _spawnIteration + 1;
			};
		};

		_spawnLoop = false;
	};