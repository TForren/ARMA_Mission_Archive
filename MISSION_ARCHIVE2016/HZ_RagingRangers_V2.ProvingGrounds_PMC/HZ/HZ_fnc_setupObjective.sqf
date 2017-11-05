/*
By Hoizen
HZ_fnc_spawnObjective
positions the house and objective in the house randomly.

====REQUIRED EDEN STUFF====
[objb1,objb2,...]: some inside-friendly buildings
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

//_possibleBuildings = [objb1,objb2,objb3,objb4,objb5,objb6,objb7,objb8,objb9,objb10,objb11,objb12];
_possibleBuildings = ['Land_block8_c', 'Land_GeneralStore_01a_PMC', 'Land_Vysilac_budova', 'Land_a_stationhouse', 'Land_A_BuildingWIP', 'Land_Hotel', 'Land_House_C_10_EP1', 'Land_A_Office01_EP1', 'Land_House_C_4_EP1', 'Land_A_Villa_dam_EP1', 'Land_A_Mosque_big_hq_EP1', 'Land_block7_b', 'Land_block8_b'];
_trig = [objTrig1, objTrig2] call BIS_fnc_selectRandom;

_maxIncline = 0.06;
_objective = objective;
objectiveBuilding = _possibleBuildings call BIS_fnc_selectRandom createvehicle [0,0,0];
publicVariable "objectiveBuilding";

_buildingDim = [[objectiveBuilding]] call HZ_fnc_getDimensions; //[w,l,h]
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
objectiveBuilding setpos (getpos _refPoint);
"buildingMarker" setMarkerPos (getpos _refPoint);
"objectiveMarker" setMarkerPos (getpos _refPoint);
_newDir = (random 360);

//try to match nearest building's direction to look nice. else keep random
if (!isNull nearestObject [player, "house"]) then {
	_newDir = getDir (nearestBuilding objectiveBuilding);
};

objectiveBuilding setDir _newDir;
//objectiveBuilding setpos [getpos objectiveBuilding select 0, getpos objectiveBuilding select 1, (getpos objectiveBuilding select 2) -0.5];
objectiveBuilding setvectorup [0,0,1];
"buildingMarker" setMarkerDir _newDir;

//get positions in building
_buildingPoses = [[objectiveBuilding]] call HZ_fnc_getBuildingPositions; //[[x,y,z],[x,y,z], ...]
_buildingPosCount = count _buildingPoses;
_randomPosIndex = (random _buildingPosCount);
if (_randomPosIndex < (_buildingPosCount/10)) then {
	_randomPosIndex = (_buildingPosCount/10);
	if (_randomPosIndex > _buildingPosCount) then {
		_randomPosIndex = _buildingPosCount;
	};
};
_buildingPos = _buildingPoses select _randomPosIndex;
_objective setpos [(_buildingPos) select 0, (_buildingPos) select 1, ((_buildingPos) select 2) + 0.1];

deletevehicle _refPoint;