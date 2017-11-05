
private ["_start", "_model", "_end", "_length", "_distance", "_dirX", "_dirY", "_count", "_width", "_rotate", "_degrees", "_boundingBox", "_object", "_minZ", "_realEnd", "_x", "_y", "_z", "_marker"];

_customCount = 0;
 _start = _this select 0;
//_start = lastPos;
// _end = _this select 1;
_end = _this select 1;

_model = _this select 2;

_object = createVehicle [_model, [0,0,-1000], [], 0, "CAN_COLLIDE"];

_boundingBox = boundingBoxReal _object;

deleteVehicle _object;

_length = abs(((_boundingBox select 1) select 0) - ((_boundingBox select 0) select 0)) - 0.025;
_width = abs(((_boundingBox select 1) select 1) - ((_boundingBox select 0) select 1));

_offset = (_length / 2);

_distance = _start distance2D _end;

_dirX = ((_end select 0) - (_start select 0)) / _distance;
_dirY = ((_end select 1) - (_start select 1)) / _distance;

_rotate = [[_dirX, _dirY, 0], 90] call BIS_fnc_rotateVector2D;

_count = floor((_distance - _offset) / _length);

_degrees = (_rotate select 0) atan2 (_rotate select 1);

// _minZ = getTerrainHeightASL [(_start select 0), (_start select 1)];

// for "_i" from 0 to _count do {
	
	// private["_x", "_y", "_z"];
	
	// _x = (_start select 0) + _dirX * (_i * _length + _offset);
	// _y = (_start select 1) + _dirY * (_i * _length + _offset);
	
	// _z = getTerrainHeightASL [_x, _y];
	
	// if (_z < _minZ) then {
		// _minZ = _z;
	// }
// };

for "_i" from 0 to _count do {
	
	private["_x", "_y", "_z", "_pos", "_object"];
	
	_x = (_start select 0) + _dirX * (_i * _length + _offset);
	_y = (_start select 1) + _dirY * (_i * _length + _offset);
	
	_z = getTerrainHeightASL [_x, _y];
	
	_pos = [_x, _y, _z];
	
	_object = createVehicle [_model, _pos, [], 0, "CAN_COLLIDE"];
	_object setDir _degrees;
	_object setPosASL _pos;
};

_x = (_start select 0) + _dirX * (_count * _length + _offset * 2);
_y = (_start select 1) + _dirY * (_count * _length + _offset * 2);

_z = getTerrainHeightASL [_x, _y];

_realEnd = [_x, _y, _z];

_distance = _start distance2D _realEnd;

_dirX = ((_realEnd select 0) - (_start select 0)) / _distance;
_dirY = ((_realEnd select 1) - (_start select 1)) / _distance;

_x = (_start select 0) + _dirX * (_distance / 2);
_y = (_start select 1) + _dirY * (_distance / 2);

_marker = createMarker ["Marker" + str customCount, [_x, _y]];
_marker setMarkerColor "ColorGrey";
_marker setMarkerShape "RECTANGLE";
_marker setMarkerSize [_distance / 2, _width];
_marker setMarkerDir _degrees;
_marker setMarkerAlpha 1;

customCount = customCount + 1;

lastPos = _realEnd;
