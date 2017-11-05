/*
By Hoizen
HZ_fnc_getDimensions
returns the Length Width and Height of a given object.
INTPUT: Object
OUTPUT: [W,L,H]
*/
private ["_params","_object","_box"];

_params = (_this select 0);
_object = _params select 0;

_box = boundingboxReal _object;
_corner1 = _box select 0; //[-10.0274,-11.9462,-4.18751]
_corner2 = _box select 1; //[10.0274,11.9462,4.18751]

//_length = (abs(_corner1 select 0) + abs(_corner2 select 0));
//_width = (abs(_corner1 select 1) + abs(_corner2 select 1));
//_height = (abs(_corner1 select 2) + abs(_corner2 select 2));

_width = abs ((_corner2 select 0) - (_corner1 select 0)); //13.488
_length = abs ((_corner2 select 1) - (_corner1 select 1)); //16.0117
_height = abs ((_corner2 select 2) - (_corner1 select 2)); //4.8495


//return value
[_width,_length,_height];