/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 10:49:46
*/
 
private [ "_name", "_player", "_players" ];
_name = [ _this, 0, "", [""] ] call BIS_fnc_param;
_player = objNull;
_players = call NMD_fnc_listPlayers;

{

	if ( name _x == _name ) exitWith {
	
		_player = _x;
	
	};

} foreach _players;

_player