// Infantry Occupy House
// by Zenophon
// Released under Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)
// http://creativecommons.org/licenses/by-nc/4.0/

// Teleports the units to random windows of the building
// Faces units in the right direction and orders them to stand up
// Units will only fill the building up to all windows positions
// Usage: Call
// Params: 1. Array, the building nearest this position is used
//         2. Array of objects, the units that will garrison the building
// Return: Array of objects, the units that were not garrisoned


//0 = [player, units group X] execVM "Zen_OccupyHouse.sqf";
//Zen_OccupyHouse = compileFinal preprocessFileLineNumbers "Zen_OccupyHouse.sqf";
//_units = [(getMarkerPos "mkHouse"), [X, Y, Z]] call Zen_OccupyHouse;

#define I(X) X = X + 1;

private ["_center", "_units", "_Zen_ExtendPosition", "_building", "_buildingDir", "_unitIndex", "_buildingPositions", "_housePos", "_notUsedUnits", "_i", "_checkPos", "_posArray", "_randomIndex", "_startAngle"];

_center = _this select 0;
_units = _this select 1;

_Zen_ExtendPosition = {
    private ["_center", "_dist", "_phi"];

    _center = _this select 0;
    _dist = _this select 1;
    _phi = _this select 2;

    ([(_center select 0) + (_dist * (cos _phi)),(_center select 1) + (_dist * (sin _phi)), (_this select 3)])
};

_building = nearestBuilding _center;
_buildingDir = getDir _building;
_unitIndex = 0;
_buildingPositions = 0;

for "_i" from 0 to 100 do {
    if ((_building buildingPos _buildingPositions) isEqualTo [0,0,0]) exitWith {};
    I(_buildingPositions)
};

_posArray = [];
for "_i" from 0 to (_buildingPositions - 1) do {
    _posArray set [_i, _i];
};

while {(count _posArray) > 0} do {
    if (_unitIndex >= count _units) exitWith {};

    _randomIndex = floor random count _posArray;
    _housePos = _building buildingPos (_posArray select _randomIndex);
    _housePos = [(_housePos select 0), (_housePos select 1), (_housePos select 2) + (getTerrainHeightASL _housePos) + 1.6];

    _posArray set [_randomIndex, _posArray select (count _posArray - 1)];
    _posArray resize (count _posArray - 1);

    _startAngle = (round random 10) * (round random 36);
    for "_i" from _startAngle to (_startAngle + 350) step 10 do {
        _checkPos = [_housePos, 15, (90 - (_i + _buildingDir)), (_housePos select 2)] call _Zen_ExtendPosition;
        if !(lineIntersects [_housePos, _checkPos, objNull, objNull]) exitWith {
            (_units select _unitIndex) setPosASL [(_housePos select 0), (_housePos select 1), (_housePos select 2) - 1.6];
            (_units select _unitIndex) setDir (_i + _buildingDir);

            (_units select _unitIndex) setUnitPosWeak "UP";
            (_units select _unitIndex) lookAt _checkPos;
            doStop (_units select _unitIndex);
            I(_unitIndex)
        };
    };
};

_notUsedUnits = [];

if (_unitIndex < (count _units - 1)) then {
    for "_i" from _unitIndex to (count _units - 1) do {
        _notUsedUnits set [(count _notUsedUnits), (_units select _i)];
    };
};

(_notUsedUnits)

// Changelog

// 7/24/14
    // Initial Release

// Known Issues

// Sometimes units may initially face the 'wrong' window, i.e. a different one then the one they are standing next to.  The unit can still see out of a window and turn to face enemy that they know about.
