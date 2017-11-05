//Written by beta
//Ideas from Sandiford
//modified by SacherEEF
//Does not allow a player to leave the AO


private ["_sleep", "_pos", "_aoPos", "_player","_markername"];

sleep 5;  //wait until mission starts

_markername = _this select 0;
_pos = [0,0,0];
_aoPos = [(getMarkerPos _markername) select 0, (getMarkerPos _markername) select 1, 0];
_sleep = 0.25;

while {(alive player)} do
{
	_player = vehicle player;
	
	//if !((typeOf _player) in b_allowedVehicles) then
	//{
		if (!([getPos _player, _markername] call CBA_fnc_inArea)) then
		{
			hintSilent "The AO ends here";
			_pos = [getPos _player, 1, ([_player, _aoPos] call BIS_fnc_dirTo)] call BIS_fnc_relPos;
			_player setPos _pos;
			_sleep = 0.05;
		}
		else
		{
			_sleep = 0.25;
		};
	//};
	
	sleep _sleep;
};
