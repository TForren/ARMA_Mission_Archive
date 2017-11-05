/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-22 09:50:38
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-28 13:17:54
*/

private [ "_player", "_neutral" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_neutral = [ _this, 1, true, [true] ] call BIS_fnc_param;

//--- Enable/disable unit simulation
[ [ _player, _neutral ], "NMD_fnc_setCaptive", _player ] call BIS_fnc_MP;

//--- Set global unit variable
_player setVariable [ "NMD_ModuleAdmin_neutral", _neutral, true ];

true