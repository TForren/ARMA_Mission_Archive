caller = (_this select 3) select 0;
caller = _this select 1;

[_this select 1, (["Cheeki2","Cheeki3","Cheeki4","Cheeki5","Cheeki1","Cheeki1","Cheeki6","Cheeki7","Cheeki8","Cheeki9","Cheeki10"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;

exitWith{};