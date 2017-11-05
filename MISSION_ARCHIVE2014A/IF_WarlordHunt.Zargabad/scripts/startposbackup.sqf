
if(isServer) then {
_initialLeaderPos = getPos hvt;
_Number = floor(random 5);
_marker = Switch (_Number) do {
	case 0: {"Start0"};
	case 1: {"Start1"};
	case 2: {"Start2"};
	case 3: {"Start3"};
	case 4: {"Start4"};
};
_pos = getmarkerpos _marker;
hvt setpos _pos;

/* ====Shit I don't need for this mission====
_StartMarker = createMarker ["Start",_pos];
_StartMarker setMarkerType "Start";
_StartMarker setMarkerColor "ColorBlue";
pvStartPosition = [_StartMarker, _marker];
publicVariable "pvStartPosition";
_scenery = nearestObjects[_initialLeaderPos, ["ALL"], 200]; // alternative: array, which holds all scenery objects
{
_diffx = ((getpos _x) select 0) - (_initialLeaderPos select 0);
_diffy = ((getpos _x) select 1) - (_initialLeaderPos select 1);
_diffz = ((getpos _x) select 2) - (_initialLeaderPos select 2);
_x setPos [(_pos select 0) + _diffx, (_pos select 1) + _diffy, (_pos select 2) + _diffz];
} forEach _scenery;
*/
} else {
waitUntil { !isNil "pvStartPosition" };
(pvStartPosition select 0) setMarkerType "Start";
(pvStartPosition select 0) setMarkerColor "ColorBlue";
};
