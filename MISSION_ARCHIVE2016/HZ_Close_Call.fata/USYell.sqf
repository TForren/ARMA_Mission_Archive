//_yell = this addaction ["YELL LOUDLY", "USYell.sqf", [this], 6, false, true, "", "(_target == _this)"];
caller = (_this select 3) select 0;
caller = _this select 1;

[_this select 1, (["USYell1", "USYell2","USYell3","USYell4","USYell5","USYell6","USYell7","USYell8"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;

if (true) exitWith {};