_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;

[_caller, true] remoteExec ["hideObject", 0, true];
_caller setVariable ["FW_Spectating", true, true];

if (player == _caller) then {
[true] call acre_api_fnc_setSpectator;
};