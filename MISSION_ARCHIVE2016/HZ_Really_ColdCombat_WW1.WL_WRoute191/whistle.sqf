caller = (_this select 3) select 0;
caller = _this select 1;

[_this select 1, ["whistle",80]] call CBA_fnc_globalSay3d;

if (true) exitWith {};