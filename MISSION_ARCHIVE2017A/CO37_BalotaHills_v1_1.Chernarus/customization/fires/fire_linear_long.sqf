/*
 * Author: Blackhawk, Darksidesix
 *
 * Executes a Fire mission on a linear target
 *
 * Arguments:
 * 0: Howitzer <OBJECT>
 * 1: Target (Start Point)
 * 2: Length
 * 3: Attitude
 * 4: Ammo Type
 *
 * Return Value:
 * None
 *
 * [gun1, AA1101, 300, 230, 4] execVM 'customization\fire_linear.sqf';
 *
 */

if(isServer) then
{

private["_weapon","_startpos","_distance","_direction","_ammotype","_interval","_targets","_a","_newpos"];

_weapon = _this select 0;
_startpos = _this select 1;
_distance = _this select 2;
_direction = _this select 3;
_ammotype = _this select 4;

_interval = 10;
_a = 0;
_targets = [];

(vehicle _weapon) setvariable ["DS6_Fired", false, true];

(vehicle _weapon) addEventHandler["Fired", {
    (_this select 0) setVariable ["DS6_Fired", true, true];

}];

while {_a < _distance} do {
    _targets pushback ([_startpos, _a, _direction] call BIS_fnc_relPos);
    _a = _a + _interval;
};

{

    _newpos = _x;
    _weapon doArtilleryFire
    //_weapon commandArtilleryFire
    [
        _newpos,
        getArtilleryAmmo [_weapon] select _ammotype,
        2
    ];


    _weapon setVehicleammo 1;
    waituntil {((vehicle _weapon) getvariable ["DS6_Fired", false])};
    (vehicle _weapon) setVariable ["DS6_Fired", false, true];

} foreach _targets;

(vehicle _weapon) removeAllEventHandlers "Fired";

};