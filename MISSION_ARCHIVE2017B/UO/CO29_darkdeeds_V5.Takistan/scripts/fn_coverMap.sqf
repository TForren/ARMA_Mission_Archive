scriptName "modules_ACR\Functions\GUI\fn_coverMap.sqf";
/*
	File: fn_coverMap.sqf
	Author: Karel Moricky

	Description:
	Covers unused part of the map

	Parameter(s):
	_this: OBJECT - Area Trigger

	Returns:
	Nothing


	_wat = [getMarkerPos "aom",[1250,2550],false] execVM "scripts\fn_coverMap.sqf";
*/
_pos = _this select 0;
_posX = _pos select 0;
_posY = _pos select 1;
_size = _this select 1;
_sizeX = _size select 0;
_sizeY = _size select 1;
_zoneProtection = _this select 2;
_dir = 0;
_sizeOut = 100000;
_sizeBorder = (_sizeX max _sizeY) / 50;

if (isnil "bis_warningDis") then {bis_warningDis = 100};
if (isnil "bis_minefield") then {bis_minefield = {}};
if (isnil "bis_minefield_explode") then {bis_minefield_explode = {}};

_colorForest = "colorkhaki";
_colorDesert = "coloryellow";
_colors = if (worldname in ["Takistan","Zargabad","Mountains_ACR","Shapur_BAF","Ardistan","fallujah"]) then {
	["colorblack","colorblack","colorblack","colorwhite","coloryellow",/**/"colorblack"/**/,"colorblue",_colorDesert];
} else {
	["colorblack","colorblack",_colorForest,"colorgreen",_colorForest,/**/"colorblack"/**/,_colorForest,_colorForest];
};

for "_i" from 0 to 270 step 90 do {
	_sizeMarker = [_sizeX,_sizeOut] select ((_i / 90) % 2);
	_dirTemp = _dir + _i;
	_markerPos = [
		_posX + (sin _dirTemp * (_sizeX + _sizeOut)),
		_posY + (cos _dirTemp * (_sizeY + _sizeOut))
	];
	for "_m" from 0 to (count _colors - 1) do {
		_marker = createMarkerLocal [format ["zone_%1_%2",_i,_m],_markerPos];
		_marker setMarkerSizeLocal [_sizeMarker,_sizeOut];
		_marker setMarkerDirLocal _dirTemp;
		_marker setMarkerShapeLocal "rectangle";
		_marker setMarkerBrushLocal "solid";
		_marker setMarkerColorLocal (_colors select _m);
		if (_m == 5) then {
			_marker setMarkerBrushLocal "grid";
			_marker setMarkerSizeLocal [_sizeMarker,_sizeOut];
		};
	};

	//--- White borders
	_sizeMarker = [_sizeX,_sizeY + _sizeBorder * 2] select ((_i / 90) % 2);
	//_sizeBorderTemp = if (_i == 90) then {_sizeBorder * 2} else {_sizeBorder};
	_sizeBorderTemp = _sizeBorder;
	_markerPos = [
		_posX + (sin _dirTemp * (_sizeX + _sizeBorderTemp)),
		_posY + (cos _dirTemp * (_sizeY + _sizeBorderTemp))
	];
	for "_m" from 0 to 7 do {
		_marker = createMarkerLocal [format ["zoneBorder_%1_%2",_i,_m],_markerPos];
		_marker setMarkerSizeLocal [_sizeMarker,_sizeBorderTemp];
		_marker setMarkerDirLocal _dirTemp;
		_marker setMarkerShapeLocal "rectangle";
		_marker setMarkerBrushLocal "solid";
		_marker setMarkerColorLocal "colorwhite";
	};
};

//--- Black frame Inner
_marker = createMarkerLocal ["zoneBorderInner",_pos];
_marker setMarkerSizeLocal [_sizeX,_sizeY];
_marker setMarkerDirLocal 0;
_marker setMarkerShapeLocal "rectangle";
_marker setMarkerBrushLocal "border";
_marker setMarkerColorLocal "colorblack";

//--- Black frame Outer
_marker = createMarkerLocal ["zoneBorderOuter",_pos];
_marker setMarkerSizeLocal [_sizeX + _sizeBorder * 2,_sizeY + _sizeBorder * 2];
_marker setMarkerDirLocal 0;
_marker setMarkerShapeLocal "rectangle";
_marker setMarkerBrushLocal "border";
_marker setMarkerColorLocal "colorblack";