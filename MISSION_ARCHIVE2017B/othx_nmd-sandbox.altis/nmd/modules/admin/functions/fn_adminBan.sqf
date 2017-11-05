/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-26 18:29:47
*/
 
//--- Check if kick is available
if ( !serverCommandAvailable "#exec ban" || !isMultiplayer ) exitWith { false };

private "_player";
_player = [ _this, 0, objNull, [objNull,0] ] call BIS_fnc_param;

//--- Exit if object is not player
if ( isNull _player || { isPlayer _player } ) exitWith { false };

//--- Execute kick command
serverCommand format [ "#exec ban '%1'", getPlayerUID _player ];

true