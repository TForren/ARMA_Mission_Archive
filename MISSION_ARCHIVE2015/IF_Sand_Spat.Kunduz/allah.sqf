caller = (_this select 3) select 0;
caller = _this select 1;

[_this select 1, (["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;

exitWith{};