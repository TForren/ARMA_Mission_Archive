if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_cnt", "_housePosArray", "_houses", "_houseCount", "_buffer","_sizeX","_sizeY","_name","_pos","_mSize","_rad","_civilians","_vehicles","_parked","_actCond"];

_rad=50;// Radius increase increment for finding minimum spawn points

_buffer=2;// Additional spawn points


_finalTownArray = [];

{
	_name = text _x;
	_sizeX = getNumber (configFile >> "CfgWorlds" >> worldName >> "Names" >> (text _x) >> "radiusA");
	_sizeY = getNumber (configFile >> "CfgWorlds" >> worldName >> "Names" >> (text _x) >> "radiusB");
	_pos= getpos _x;
	
// Scan for houses around the town area
	if (_sizeX < 50) then {_sizeX=300;};
	if (_sizeY < 50) then {_sizeY=300;};
	if (_sizeY>_sizeX) then {_mSize=_sizeY}else{_mSize=_sizeX};// Get the largest size
	
	
//create house array cutting out anything that has no positions (walls, powerlines, etc)

	_houses = [];
	{
		if ( format ["%1", _x buildingpos 0] != "[0,0,0]" ) then { //has at least 1 position
			_houses = _houses + [_x];
		}
		else {};
	} foreach nearestObjects [_pos, ["house"], _mSize];
	
	_houseCount = count _houses;// Count number of houses in town
	
	
// Create marker over town
	if (ambCivDebug) then {
	_markerID = format ["mkrID%1",_name];
		_foo = createmarker [_markerID, _pos];
		_foo setMarkerSize [_sizeX, _sizeY];
		_foo setMarkerShape "ELLIPSE";
		_foo setMarkerBrush "SOLID";
		_foo setMarkerColor "ColorGreen";
		_foo setMarkerText _name;
		_foo setmarkerAlpha 0.5;

	};


	

// Customise population by number of houses
	_randomisation=3;
	
	if (_houseCount <= 10) then {
		_civilians=3+ round(random _randomisation);// Civilians spawned
		_vehicles=0;// Moving Vehicles Spawned
		_parked=1;// Parked Vehicles Spawned
	};		
	
 	if (_houseCount <= 30 and _houseCount > _randomisation) then {
		_civilians=6+ round(random _randomisation);// Civilians spawned
		_vehicles=1;// Moving Vehicles Spawned
		_parked=1;// Parked Vehicles Spawned
	};
			
 	if (_houseCount <= 70 and _houseCount > 30) then {
		_civilians=8+ round(random _randomisation);// Civilians spawned
		_vehicles=1;// Moving Vehicles Spawned
		_parked=3;// Parked Vehicles Spawned
	};
			
 	if (_houseCount <= 140 and _houseCount > 70) then {
		_civilians=10+ round(random _randomisation);// Civilians spawned
		_vehicles=2;// Moving Vehicles Spawned
		_parked=2;// Parked Vehicles Spawned
	};
	
 	if (_houseCount > 140) then {
		_civilians=12+ round(random _randomisation);// Civilians spawned
		_vehicles=5;// Moving Vehicles Spawned
		_parked=3;// Parked Vehicles Spawned
	};
	
// Get positions until we have enough for the population
	_roadlist = _pos nearRoads _mSize;
	_minPositions= ( _civilians + _vehicles + _parked + _buffer);
	while {count _roadlist < _minPositions} do {
		_rad = _rad + _rad;
		_roadlist = _pos nearRoads (_mSize + _rad);
		//sleep 0.1;
		uiSleep 0.05;
	};
		
	// Sort a position for each civilian
	_roadPosArray = [];
	_roadPosArray resize _minPositions;
	_roadlist=_roadlist call BIS_fnc_arrayShuffle;

	for "_n" from 0 to _minPositions do {
		_roadPosArray set [_n, _roadlist select _n];
	};

	//_popVar=format["population%1",_foo];
	_finalTownArray = _finalTownArray + [[_x, _houses, _civilians,_vehicles,_parked,_roadPosArray]];
	
} foreach (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital","NameCity","NameVillage","CityCenter"], 25000]);

townPrepComplete = true;
publicVariable "townPrepComplete";

_finalTownArray;