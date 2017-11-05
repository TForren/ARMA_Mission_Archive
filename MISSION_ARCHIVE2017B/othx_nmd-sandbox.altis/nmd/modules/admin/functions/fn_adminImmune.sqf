/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-17 15:05:58
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-28 13:17:50
*/

private [ "_player", "_immune" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_immune = [ _this, 1, true, [true] ] call BIS_fnc_param;

//--- Enable/disable unit simulation
[ [ _player, !_immune ], "NMD_fnc_allowDamage", _player ] call BIS_fnc_MP;

//--- Set global unit variable
_player setVariable [ "NMD_ModuleAdmin_immune", _immune, true ];

true