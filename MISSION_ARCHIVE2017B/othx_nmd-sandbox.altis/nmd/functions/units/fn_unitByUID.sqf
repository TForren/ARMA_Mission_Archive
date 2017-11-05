/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 10:49:18
*/
 
private [ "_uid", "_player", "_players" ];
_uid = [ _this, 0, "", [""] ] call BIS_fnc_param;
_player = objNull;
_players = call NMD_fnc_listPlayers;

{

	if ( getPlayerUID _x == _uid ) exitWith {
	
		_player = _x;
	
	};

} foreach _players;

_player