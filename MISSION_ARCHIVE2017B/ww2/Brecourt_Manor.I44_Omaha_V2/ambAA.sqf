if (isServer) then {
private ["_positionArray", "_runCondition", "_secondaryChance", "_sleepTime", "_unitArray"];
_unitArray = _this select 0;
_positionArray = _this select 1;
_sleepTime = _this select 2;
_secondaryChance = _this select 3;
_runCondition = _this select 4;
{
	_x lock 3;
} forEach _unitArray;
while _runCondition do {
	private ["_direction", "_weapon"];
	{
		if (! alive gunner _x) then {
			_unitArray = _unitArray - [_x];
		};
	} forEach _unitArray;
	if (count _unitArray == 0) exitWith {};
	_direction = [
		(_positionArray select 0 select 0) - random ((_positionArray select 0 select 0) - (_positionArray select 0 select 1)),
		(_positionArray select 1 select 0) - random ((_positionArray select 1 select 0) - (_positionArray select 1 select 1)),
		(_positionArray select 2 select 0) - random ((_positionArray select 2 select 0) - (_positionArray select 2 select 1))
	];
	if (random 1 > _secondaryChance) then {
		_weapon = "cannon";
	} else {
		_weapon = "missile";
	};
	{
		if (alive gunner _x && isNull assignedTarget _x) then {
			[_x, _direction, _weapon] spawn {
				private ["_direction", "_unit", "_weapon"];
				_unit = _this select 0;
				_direction = _this select 1;
				_weapon = _this select 2;
				_unit doWatch _direction;
				sleep 2;
				switch (_weapon) do {
					case "cannon": {
						for "_x" from 1 to 1 + ceil random 5 do {
							sleep random 2;
							for "_x" from 1 to 10 do {
								if (! isNull assignedTarget _unit) exitWith {};
								_unit fire (_unit weaponsTurret [0] select 0);
								sleep 0.05;
							};
							if (! isNull assignedTarget _unit) exitWith {};
							_unit doWatch _direction;
						};
					};
					case "missile": {
						sleep (2 + random 5);
						_unit fire (_unit weaponsTurret [0] select 1);
					};
				};
				if (isNull assignedTarget _unit) then {
					_unit doWatch objNull;
				} else {
					_unit doWatch assignedTarget _unit;
				};
				_unit setVehicleAmmo 1;
			};
		};
	} forEach _unitArray;
	sleep _sleepTime;
};
};