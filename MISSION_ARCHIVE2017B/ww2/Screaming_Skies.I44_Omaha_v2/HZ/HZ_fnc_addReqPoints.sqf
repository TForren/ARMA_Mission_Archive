_reason = _this select 0;
_points = _this select 1;

reqPoints = reqPoints + _points;
publicVariable "reqPoints";
[[ZeusCommander,format["%1. +%2. Total: %3",_reason,_points,reqPoints]]] remoteExec ["HZ_fnc_radioMessage", 0];
"pointMarker" setMarkerText format ["Points: %1",reqPoints];