/*
Ultra Simple Patrol Script v1.5 by JW Custom

Put the below line in a units init field,
if your working with a group you only need to put it in the leaders init field.

------------------------------------------------------------------------------------------------------------
nul = [this, 500, "spawnMarker", "patrolMarker", 500, "SAFE", "RED", 100, "LIMITED", "FILE", 0, 30, 0] execVM "USPS.sqf"  
------------------------------------------------------------------------------------------------------------

argument 0: The unit/group leader we are dealing with

argument 1: The radius size where to randomly place the unit/group within 

argument 2: The marker representing the radius center of where unit/group will be randomly placed within

argument 3: The marker representing the center of the unit/group patrol

argument 4: The radius size where unit/group will patrol within

argument 5: The behaviour of the unit/group ("CARELESS","SAFE","AWARE","COMBAT","STEALTH").

argument 6: The combat mode of the unit/group ("BLUE","GREEN","WHITE","YELLOW","RED").

argument 7: Chance of unit/group existing in percentage. If set to 100 the unit/group will always exist.

argument 8: Movement speed of the unit/group ("LIMITED","NORMAL","FULL").

argument 9: Group formation. ("COLUMN","STAG COLUMN","WEDGE","ECH LEFT","ECH RIGHT","VEE","LINE","FILE","DIAMOND")

argument 10: Wait time in seconds before moving on to next waypoint. Set to 0 and theres no wait time.

argument 11: Minimum distance between current waypoint and next waypoint.

argument 12: Altitude of unit/group. Unless unit/group are a air vehicle this should be set to 0.
*/


if (!isServer) exitWith {};

private ["_wp","_ranPos","_patrolMarker","_patrolRadius","_grp","_iniPos","_oldPos","_newPos","_grp","_spawnRadius","_unit","_spawnMarker","_unitBehaviour","_existChance","_unitSpeed","_unitFormation","_numGrp","_flyInHeight","_minDistNextWP"];

_unit           = _this select 0;
_spawnRadius    = _this select 1;
_spawnMarker    = _this select 2;
_patrolMarker   = _this select 3;
_patrolRadius   = _this select 4;
_unitBehaviour  = _this select 5;
_unitCombatMode = _this select 6;
_existChance    = _this select 7;
_unitSpeed      = _this select 8;
_unitFormation  = _this select 9;
_unitWaittime   = _this select 10;
_minDistNextWP  = _this select 11;
_flyInHeight    = _this select 12;

_grp = group _unit;
_grp setSpeedMode _unitSpeed;
_grp setFormation _unitFormation;
_grp setBehaviour _unitBehaviour;
_grp setCombatMode _unitCombatMode;
_unit flyInHeight _flyInHeight;

_chance = ceil(random 100);

if (_chance > _existChance) then {{deleteVehicle vehicle _x; deleteVehicle _x; sleep 0.1} forEach units _grp};

_oldPos = [0,0,0];

_ranPos = [((getMarkerPos _spawnMarker)select 0)+sin(random 360)*(_spawnRadius-25),((getMarkerPos _spawnMarker)select 1)+cos(random 360)*(_spawnRadius-25),_flyInHeight];

_isWater = surfaceIsWater _ranPos;
_isHouse = _ranPos nearObjects ["House",10];
while {((_isWater) || (count _isHouse > 0) || (count _ranPos < 3)) || (_ranPos distance _oldPos < _minDistNextWP)} do
{
  _ranPos = [((getMarkerPos _spawnMarker)select 0)+sin(random 360)*(_spawnRadius-25),((getMarkerPos _spawnMarker)select 1)+cos(random 360)*(_spawnRadius-25),_flyInHeight];
  _isWater = surfaceIsWater _ranPos;
  _isHouse = _ranPos nearObjects ["House",10];
  sleep 0.123;
};

if (_unit isKindOf "Man") then 
{
  {_x setPos _ranPos} forEach units _grp;

  while {{alive _x} count units _grp > 0} do
  {
    waitUntil{((getPos leader _grp) distance _ranPos < 5)};
    sleep _unitWaittime;
   
    _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];

    _isWater = surfaceIsWater _ranPos;
    _isHouse = _ranPos nearObjects ["House",10];
    while {((_isWater) || (count _isHouse > 0) || (count _ranPos < 3)) || (_ranPos distance _oldPos < _minDistNextWP)} do
    {
      _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];
      _isWater = surfaceIsWater _ranPos;
      _isHouse = _ranPos nearObjects ["House",10];
      sleep 0.123;
    };
  _oldPos = _ranPos;
  _grp move _ranPos;
  };
};

if(_unit isKindOf "Air") then 
{
  {vehicle _x setPos [(_ranPos select 0) + random 50, (_ranPos select 1) + random 50, _flyInHeight]} forEach units _grp;

  while {{alive _x} count units _grp > 0} do
  {
    waitUntil{((getPos leader _grp) distance _ranPos < (_flyInHeight * 3) - _flyInHeight)};
    sleep _unitWaittime;
   
    _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];

    while {_ranPos distance _oldPos < _minDistNextWP} do
    {
      _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];
      sleep 0.123;
    };
  _oldPos = _ranPos;
  _grp move _ranPos;
  };
};

if(_unit isKindOf "LandVehicle") then 
{
  {vehicle _x setPos [(_ranPos select 0) + random 25, (_ranPos select 1) + random 25, 0];} forEach units _grp;

  while {{alive _x} count units _grp > 0} do
  {
    waitUntil{((getPos leader _grp) distance _ranPos < 20)};
    sleep _unitWaittime;
   
    _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];

    _isWater = surfaceIsWater _ranPos;
    _isHouse = _ranPos nearObjects ["House",10];
    while {((_isWater) || (count _isHouse > 0) || (count _ranPos < 3)) || (_ranPos distance _oldPos < _minDistNextWP)} do
    {
      _ranPos = [((getMarkerPos _patrolMarker)select 0)+sin(random 360)*(_patrolRadius-25),((getMarkerPos _patrolMarker)select 1)+cos(random 360)*(_patrolRadius-25),_flyInHeight];
      _isWater = surfaceIsWater _ranPos;
      _isHouse = _ranPos nearObjects ["House",10];
      sleep 0.123;
    };
  _oldPos = _ranPos;
  _grp move _ranPos;
  };
};



