createDialog "DIA_ENDSCREEN";
_dia = 300;
_bg = 3000;
_endTitle = 3001;
_left = 3002;
_right = 3003;

_scenario = _this select 0;
_timeLimt = _this select 1;
_teams = _this select 2;

disableUserInput true;

{
	_x enableSimulation false;
} forEach vehicles;

_leftText = "";
_rightText = "";
_textSide = 0;
{
	_temp = format["**** %1 ****<br />Men Killed: %2<br />",(_x select 0), ((_x select 1) - (_x select 2))];

		if ((count (_x select 3) != 0) || (count (_x select 4) != 0)) then {
		{
			_temp = _temp + "<br />Assets Lost:<br />";
		} forEach (_x select 3);
	};
	
	if (count (_x select 3) != 0) then {
		{
			_temp = _temp + format["%1 disabled<br />", _x];
		} forEach (_x select 3);
	};

	if (count (_x select 4) != 0) then {
		{
			_temp = _temp + format["%1 destroyed<br />", _x];
		} forEach (_x select 4);
	};
	
	_temp = _temp + "<br />";
	
	if (_textSide == 0) then {
		_textSide = 1;
		_leftText = _leftText + _temp;
	} else {
		_textSide = 0;
		_rightText = _rightText + _temp;
	};
} forEach _teams;

_timeLimitText = format["Duration - %1 minutes", (ceil(time / 60))];

_endTitleText = format["%1<br />%2", _scenario, _timeLimitText];

((findDisplay _dia) displayCtrl _endTitle) ctrlSetStructuredText parseText _endTitleText;
((findDisplay _dia) displayCtrl _left) ctrlSetStructuredText parseText _leftText;
((findDisplay _dia) displayCtrl _right) ctrlSetStructuredText parseText _rightText;

for "x" from 1 to 120 do {
	((findDisplay _dia) displayCtrl _bg) ctrlSetBackgroundColor [0, 0, 0, (x * (1/120))];
	sleep(0.01);
};

sleep (15);
disableUserInput false;
endMission "END1";