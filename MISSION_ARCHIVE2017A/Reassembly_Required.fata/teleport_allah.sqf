// Pickupscript
_pole = _this select 0; 
_user = _this select 1;
_id = _this select 2;  

_user setpos ([getpos ammotruck, 4, 20, 1, 0, 5, 0] call BIS_fnc_findSafePos);