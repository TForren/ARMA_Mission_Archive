/*
 * HZ_fnc_avgUnitLoc.sqf
 * Determines the average location of all relevant units of a particular faction
 * Takes in:
 * [faction, include aircraft(boolean)]
 * Returns:
 * average location in [x,y,0];
 *
 *avgLoc = [[unit1,unit2]] call HZ_fnc_avgUnitLoc;
 =======================================================================
	================MODIFIED FOR SEIRRA SEVEN MISSION===================
========================================================================
 */
if (!isServer) exitWith {} ; //FUCK OFF, CLIENTZ

private _allLocs = [];
private _avgX = 0;
private _avgY = 0;
private _avgLoc = [];
private _duders = (_this select 0);

//Creating the 2D array of xyz locations of all blufor units
{ 
	_allLocs = _allLocs + [(getpos _x)];
} foreach _duders;

//get count of all duders to calculate average location
_duderCount = count _allLocs;

{
	_avgX = _avgX + (_x select 0);
	_avgY = _avgY + (_x select 1);
} foreach _allLocs;

_avgX = _avgX / _duderCount;
_avgY = _avgY / _duderCount;

_avgLoc = [_avgX,_avgY,0];

//arrow = "Sign_arrow_down_large_EP1" createvehicle _avgLoc;
_avgLoc;
