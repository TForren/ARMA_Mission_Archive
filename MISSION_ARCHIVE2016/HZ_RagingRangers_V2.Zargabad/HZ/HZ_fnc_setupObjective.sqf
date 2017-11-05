/*
By Hoizen
HZ_fnc_spawnObjective
positions the house and objective in the house randomly.

====REQUIRED EDEN STUFF====
objective: some inside-friendly object
objectiveBuilding: some building with interiors
[objTrig1,objTrig2,...]: all triggers to be used as the area to determine possible location
===========================
*/

/*
checkValidPos
determines if it is a valid placement for the objective
checks for terrain objects, roads, and inclines
INPUT: [[x,y,z], radius, maxIncline ]
OUTPUT: boolean if valid
*/
HZ_fnc_checkValidPos = {
	_params = _this select 0;
	_pos = _params select 0;
	_radius = _params select 1;
	_maxIncline  = _params select 2;
	_result = false;

	//Collect Data
	_nearbyTerrainObjects = nearestTerrainObjects [_pos, [], _radius];
	_nearbyRoads = _pos nearRoads _radius;
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

_maxIncline = 0.06;
_objective = objective;
_building = objectiveBuilding;
_trig = [objTrig1, objTrig2, objTrig3, objTrig4, objTrig5] call BIS_fnc_selectRandom;

_buildingDim = [[_building]] call HZ_fnc_getDimensions; //[w,l,h]
_buildingMarker = createMarker ["buildingMarker", [0,0,0]];
"buildingMarker" setMarkercolor "ColorGrey";
"buildingMarker" setMarkerShape "RECTANGLE";
"buildingMarker" setMarkerBrush "SolidFull";
"buildingMarker" setMarkerSize [(_buildingDim select 0)/2, (_buildingDim select 1)/2];
_objectiveMarker = createMarker ["objectiveMarker", [0,0,0]];
"objectiveMarker" setMarkerShape "ICON";
"objectiveMarker" setMarkerType "mil_destroy";
"objectiveMarker" setMarkerColor "colorYellow";
"objectiveMarker" setMarkerText "P0745-51M";
_buildingRadius = ([(_buildingDim select 0),(_buildingDim select 1)] call BIS_fnc_greatestNum) / 1.2;
_refPoint = "Sign_Sphere25cm_F" createvehicle [0,0,0];

//Find a good spot for objective
_spotOK = false;
_tries = 0;
while {!_spotOK && (_tries < 400)} do {
	
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
	
	_spotOK = [[_randomLoc, _buildingRadius, _maxIncline]] call HZ_fnc_checkValidPos;
	
	if (_spotOK) then {
		_refPoint setpos _randomLoc;
	};
	_tries = _tries + 1;
	hint format["tries: %1",_tries];
	//sleep 0.01;
};

if (_tries == 400) exitWith {hintc "TRIGGER SUCKS. TOO MANY OBJECTS, TOO SMALL AREA, OR TOO BIG OF OBJECTIVE. GET REKT"};

//We made it this far so move objective building to found good spot
_building setpos (getpos _refPoint);
"buildingMarker" setMarkerPos (getpos _refPoint);
"objectiveMarker" setMarkerPos (getpos _refPoint);
_newDir = (random 360);

//try to match nearest building's direction to look nice. else keep random
if (!isNull nearestObject [player, "house"]) then {
	_newDir = getDir (nearestBuilding _building);
};

_building setDir _newDir;
_building setpos [getpos _building select 0, getpos _building select 1, (getpos _building select 2) -0.5];
_building setvectorup [0,0,1];
"buildingMarker" setMarkerDir _newDir;

//get positions in building
_buildingPoses = [[_building]] call HZ_fnc_getBuildingPositions; //[[x,y,z],[x,y,z], ...]
_buildingPosCount = count _buildingPoses;
_randomPosIndex = (random _buildingPosCount);
if (_randomPosIndex < (_buildingPosCount/10)) then {
	_randomPosIndex = (_buildingPosCount/10);
	if (_randomPosIndex > _buildingPosCount) then {
		_randomPosIndex = _buildingPosCount;
	};
};
_objectivePos = _buildingPoses select _randomPosIndex;
_objective setpos [(_objectivePos) select 0, (_objectivePos) select 1, ((_objectivePos) select 2) + 0.1];

deletevehicle _refPoint;