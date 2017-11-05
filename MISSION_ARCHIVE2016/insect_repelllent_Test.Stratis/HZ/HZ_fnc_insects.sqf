// [wareoffTime] call HZ_fnc_insects
_params = _this select 0;


[_params] spawn {
	_params = _this select 0;
	_unit = _params select 0;
	_wareOff = _params select 1;
	_repellent = "usm_bugrepellant";
	
	while {true} do {
		if (_repellent in items _unit) then {
			systemchat "Repellent Applied";
			sleep _wareOff;
		} else {
			systemchat "bitten";
			0 = ["DynamicBlur", 400, [(random 2)]] spawn {
				params ["_name", "_priority", "_effect", "_handle"];
				while {
					_handle = ppEffectCreate [_name, _priority];
					_handle < 0
				} do {
					_priority = _priority + 1;
				};
				_handle ppEffectEnable true;
				_handle ppEffectAdjust _effect;
				_handle ppEffectCommit 1;
				waitUntil {ppEffectCommitted _handle};
				_handle ppEffectAdjust [0];
				_handle ppEffectCommit 1;
				waitUntil {ppEffectCommitted _handle};
				_handle ppEffectEnable false;
				ppEffectDestroy _handle;
			};
		};
		sleep 10 + (random 10);
	};
};

