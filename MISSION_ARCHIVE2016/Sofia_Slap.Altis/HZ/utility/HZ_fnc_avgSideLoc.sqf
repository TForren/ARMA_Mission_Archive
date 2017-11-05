/*
 * HZ_fnc_avgUnitLoc.sqf
 * Determines the average location of all relevant units of a particular faction
 * Takes in:
 * [faction, include aircraft(boolean)]
 * Returns:
 * average location in [x,y,0];
 *
 *avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
 */
if (!isServer) exitWith {} ; //FUCK OFF, CLIENTZ

private _allLocs = [];
private _avgX = 0;
private _avgY = 0;
private _avgLoc = [];
private _params = (_this select 0);
private _chosenSide = _params select 0;
private _includeAircraft = _params select 1;

//Creating the 2D array of xyz locations of all blufor units
{ 
	if (side _x == _chosenSide) then {
		if ( (getpos _x select 2) < 50 ) then { //unit is probably on the ground.
			_allLocs = _allLocs + [(getpos _x)];
		}
		else { //unit is > 50m above ground. Probably in aircraft
			if (_includeAircraft) then {
				_allLocs = _allLocs + [(getpos _x)];
			};
		};
	};
} foreach allunits;

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
