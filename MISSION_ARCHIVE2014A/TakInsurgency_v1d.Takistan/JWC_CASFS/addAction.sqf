_object = _this select 0;
_maxDist = _this select 1;
_lock = _this select 2;
_num = _this select 3;

_str = format["<t color='#FF9000'>Request CAS (%1)</t>",_num];

_object addAction [_str, "JWC_CASFS\casMenu.sqf", [_maxDist, _lock, _num], -1, false, true, ""];


