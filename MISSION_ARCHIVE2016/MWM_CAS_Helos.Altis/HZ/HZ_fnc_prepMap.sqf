if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_cnt", "_housePosArray", "_houses", "_houseCount", "_buffer","_sizeX","_sizeY","_name","_pos","_mSize","_rad","_civilians","_vehicles","_parked","_actCond"];



_mapSize = getNumber (configFile >> "CfgWorlds" >> worldName >> "MapSize");
_radius = _mapSize / 2;
_townArray = (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital","NameCity","NameVillage","CityCenter"], _radius]);
_posArray = [];

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
/*
	_houses = [];
	{
		if ( format ["%1", _x buildingpos 0] != "[0,0,0]" ) then { //has at least 1 position
			_houses = _houses + [_x];
		}
		else {};
	} foreach nearestObjects [_pos, ["house"], _mSize];
	
	_houseCount = count _houses;// Count number of houses in town
*/
	
// Create marker over town
	if (false) then {
	_markerID = format ["mkrID%1",_name];
		_foo = createmarker [_markerID, _pos];
		_foo setMarkerSize [_sizeX, _sizeY];
		_foo setMarkerShape "ELLIPSE";
		_foo setMarkerBrush "SOLID";
		_foo setMarkerColor "ColorGreen";
		_foo setMarkerText _name;
		_foo setmarkerAlpha 0.5;

	};

} foreach _townArray;


for [{_i=0}, {_i<300}, {_i=_i+1}] do
{
_finalPos =  [[14696.7,16733.6,0], 0, _radius, 10, 0, 0.6, 0,[[[13564.4,17613.3,0],[15860.7,15421.4,0]]]] call BIS_fnc_findSafePos;
_posArray = _posArray + [_finalPos];
_txt=format["possibleLocation%1",_i];
/*
_debugMkr=createMarker [_txt,_finalPos];
_debugMkr setMarkerShape "ICON";
_debugMkr setMarkerType "mil_box";
_debugMkr setMarkerColor "ColorBlue";
*/
};


mapPrepComplete = true;
publicVariable "mapPrepComplete";

[_townArray,_posArray];