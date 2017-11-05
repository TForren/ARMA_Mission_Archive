_params = _this select 0;
_talker = _params select 0;
_message = _params select 1;
if (player == _talker) then {
	_talker sideChat _message;
};