//multiplayer JIP-compatible animations that terminate on combat WOO

_unit = _this select 0;
_anim = _this select 1;
_equip = if (count _this > 2) then {_this select 2} else {"ASIS"};
_wps = count waypoints _unit;

if (isServer) then { [[_unit,_anim,_equip],BIS_fnc_ambientAnim] remoteExec ["call",0,true] };
0 = [_unit,_wps] spawn {
	_unit = _this select 0;
	_wps = _this select 1;
	waitUntil {
		sleep 5;
		(behaviour _unit == "combat") || ((count waypoints _unit) > _wps)
		};
	_this call BIS_fnc_ambientAnim__terminate
};