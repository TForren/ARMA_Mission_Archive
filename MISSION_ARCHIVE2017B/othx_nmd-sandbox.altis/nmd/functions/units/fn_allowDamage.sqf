/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-28 13:11:31
*/
 
private[ "_unit", "_allow" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_allow = [ _this, 1, true, [true] ] call BIS_fnc_param;

_unit allowDamage _allow;

true