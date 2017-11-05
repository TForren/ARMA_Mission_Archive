/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 11:15:55
*/

private "_players";
_players = [];

{

	if ( isPlayer _x ) then
	{
	
		[ _players, _x ] call BIS_fnc_arrayPush;
		
	};
	
} foreach ( allUnits + allDead );

_players