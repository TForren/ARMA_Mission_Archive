_map = _this select 0;
_zoom = _this select 1;

{
	_unit = _x select 0;
	
	_info = [_unit] call vip_asp_fnc_cl_unitInfo;
	_colour = _info select 2;
	
	if (_unit == vip_asp_var_cl_unit) then {_colour = [1,1,0,_colour select 3]};
	
	_positions = _x select 1;
	_count = count _positions;
	_step = floor (10 * _zoom) min 3 max 1;
	_lastIndex = 0;

	if (_count > 1) then {
		for "_i" from 0 to (_count - 1) step _step do {;
			if (_i > 0 && _i < _count) then {
				_pos1 = _positions select _i;
				_pos2 = _positions select (_i - _step);
				_lastIndex = _i;
				_map drawLine [_pos1, _pos2, _colour];
			};
		};
	};
	
	//((_count - _step + _count mod _step) max 0)
	if (alive _unit) then {
		_map drawLine [_positions select _lastIndex, getPosVisual _unit, _colour];
	};
	
} forEach vip_asp_var_cl_trackingArray;