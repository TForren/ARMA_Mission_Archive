scriptName "modules_ACR\Functions\GUI\fn_centerMap.sqf";
/*
	File: fn_centerMap.sqf
	Author: Karel Moricky

	Description:
	Centers briefing map on specific location

	Parameter(s):
	_this select 0 (Optional): ARRAY - Position
	_this select 1 (Optional): NUMBER - Zoom

	Returns:
	Nothing
*/

#define MAP	((finddisplay 37) displayCtrl 51)

_pos = if (count _this > 0) then {_this select 0} else {position vehicle player};
_zoom = if (count _this > 1) then {_this select 1} else {0.2};

if (!isnull MAP) then {
	MAP ctrlMapAnimAdd [0, _zoom, _pos];
	ctrlMapAnimCommit MAP
};