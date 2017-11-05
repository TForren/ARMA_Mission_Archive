private ["_veh", "_cond"];
waitUntil {!isNull player};

_veh = _this select 0;

_veh allowDammage false;

clearWeaponCargo _veh;
clearMagazineCargo _veh;

waituntil {!(isNil "aClasses")};
waitUntil {!(isNil "dClasses")};

{
	_cond = format ["(nextAttackerSide==sidePlayer) && canChangeClass && (%1)", _x select 11];
	_veh addAction [_x select 0, "classaction.sqf", [_x, WEST], 4, false, true, "", _cond];
} forEach aClasses;

if (isIDF) then
{
	for "_i" from 1 to 3 do
	{
		_veh addAction [format [localize "STR_SelectMitsnefet", _i], "mitsnefetselect.sqf", [_i], 0, false, true, "", "(nextAttackerSide==sidePlayer) && canChangeClass"];
	};
};

{
	_cond = format ["(nextAttackerSide!=sidePlayer) && canChangeClass && (%1)", _x select 11];
	_veh addAction [_x select 0, "classaction.sqf", [_x, EAST], 4, false, true, "", _cond];
} forEach dClasses;


waitUntil {!isNil "roundInProgress"};
while {true} do
{
	clearWeaponCargo _veh;
	clearMagazineCargo _veh;
	clearItemCargo _veh;
	waitUntil {roundInProgress};
	waitUntil {!roundInProgress};
};