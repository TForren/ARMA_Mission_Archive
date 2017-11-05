if (!isServer) exitWith {};

[_this select 0] spawn {
	_loudSpeaker = _this select 0;

	while {alive _loudSpeaker} do {
		
		[_loudSpeaker, "Alarm_OPFOR",400] call CBA_fnc_globalSay3d;
		
		sleep 8;
	};
};