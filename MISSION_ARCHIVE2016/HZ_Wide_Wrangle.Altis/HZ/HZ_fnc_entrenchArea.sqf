/*HZ_fnc_entrenchArea
 * cover an area in enemy camo trenches using HZ_fnc_setupTrench
 * direction faces given position of expected enemy approach
 *Takes in:
 *  [[trigger,trenchCount,patrolCount,bushCount,targetPosition]] call HZ_fnc_entrenchArea;
 *Returns:
 *  N/A
*/
if (!isServer) exitWith {};

private _trig = _this select 0;
private _trenchCount = _this select 1;
private _patrolCount = _this select 2;
private _bushCount = _this select 3;
private _targetPosition = _this select 4;

trenchLocs = [];


HZ_fnc_checkValidPos = {
	_params = _this select 0;
	_pos = _params select 0;
	_radius = _params select 1;
	_maxIncline  = _params select 2;
	_result = false;

	//Collect Data
	_nearbyTerrainObjects = nearestTerrainObjects [_pos, [], _radius];
	_nearbyRoads = _pos nearRoads 15; //_radius
	_sNorm = surfaceNormal _pos;
	
	//check for objects and roads
	if ((count _nearbyTerrainObjects == 0) && (count (_pos nearRoads _radius) == 0)) then { 
		//Check incline
		if ((abs(_sNorm select 0) < _maxIncline) && (abs(_sNorm select 1) < _maxIncline)) then {
			_result = true;
		};
	};
	
	_result;
};



for [{_i=0}, {_i<_trenchCount}, {_i=_i+1}] do
{
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;

	_spotOK = [[_randomLoc, 4, 0.06]] call HZ_fnc_checkValidPos;
	
	while {!_spotOK} do {
		_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
		_spotOK = [[_randomLoc, 4, 0.06]] call HZ_fnc_checkValidPos;
		sleep 0.001;
	};

	trenchLocs = trenchLocs + [_randomLoc];
	
	[[_randomLoc,_targetPosition]] call HZ_fnc_setupTrench;
	
};


for [{_i=0}, {_i<_patrolCount}, {_i=_i+1}] do
{
	[[trenchLocs]] call HZ_fnc_setupPatrol;
	
};


for [{_i=0}, {_i<_bushCount}, {_i=_i+1}] do
{
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;

	_spotOK = [[_randomLoc, 4, 0.1]] call HZ_fnc_checkValidPos;
	
	while {!_spotOK} do {
		_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
		_spotOK = [[_randomLoc, 4, 0.06]] call HZ_fnc_checkValidPos;
		sleep 0.001;
	};

	_randomBush = "CUP_Krovi" createvehicle _randomLoc;
	_randomBush setdir (random 360);
	
};

