/*HZ_fnc_activateQRF
 *  activate the local garrison to defend their objective
 *Takes in:
 *  [[garrisonTrig,objective]] call HZ_fnc_setupQRF;
 *Returns:
 *  N/A
*/
[_this select 0] spawn {
private _params = (_this select 0);
private _garrisonTrig = _params select 0;
private _objectives = _params select 1;


_objLoc = getpos (_objectives call BIS_fnc_selectRandom);


{
	_wp = (group _x) addWaypoint [_objLoc , 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	(group _x) setBehaviour "AWARE";
	[_x ,_objLoc] remoteExec ["doMove", 0, true];
} foreach list _garrisonTrig;

Systemchat format ["Garrison moving to: %1",_objLoc];
};
