private ["_player","_unit","_dist","_textColor","_hud","_displayDistance"];

// Set variable
_player = _this select 0;
_unit = _this select 1;
_index = _this select 2;
_textColor = _this select 3;
_displayDistance = _this select 4;
_ui=uiNamespace getVariable "namehud";

// Set distance
_dist=_unit distance vehicle _player;

// If unit distance is close than 10m
if (_dist < _displayDistance) then {
	// If unit is not get in vehicle
	if (vehicle _unit == _unit) then {
		// Set position name tag
		_pos=worldToScreen [getPosATL _unit select 0,getPosATL _unit select 1,(getPosATL _unit select 2)+(_unit selectionPosition "launcher" select 2)+0.65];

		if (count _pos>0) then {
			_hud=_ui displayCtrl (23501+_index);
			_hud ctrlSetPosition [(_pos select 0)-0.2,_pos select 1];
			_hud ctrlSetText (if (!visibleMap) then {name _unit} else {""});
			_hud ctrlSetTextColor [_textColor select 0, _textColor select 1, _textColor select 2 ,0.8 min (1.2 - _dist * (1 / _displayDistance))];
			_hud ctrlCommit 0;
			_index = _index + 1;
		};
	};
};