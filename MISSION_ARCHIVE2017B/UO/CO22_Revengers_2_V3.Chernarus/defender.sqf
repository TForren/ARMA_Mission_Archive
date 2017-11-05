//make units do the CBA defend task until they get in combat
//will probably look kind of shitty
//obvs requires CBA

params ["_unit", ["_position",[]], ["_radius",50,[0]], ["_threshold",2,[0]]];

if !(local _unit) exitWith {};

_wps = count waypoints _unit;
_group = group _unit;
[_group,_position,_radius,_threshold,false] call CBA_fnc_taskDefend;

0 = [_unit,_wps] spawn {
	_unit = _this select 0;
	_wps = _this select 1;
	_group = group _unit;
	waitUntil {
		sleep 5;
		(behaviour _unit == "combat") || ((count waypoints _unit) > _wps)
		};
	{
		_x enableAi _ai;
		_x setUnitPos "AUTO";
	} forEach members _group;
};