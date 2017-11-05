/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 11:18:59
*/
 
private[ "_unit", "_bool" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_bool = [ _this, 1, true, [true] ] call BIS_fnc_param;

_unit enableSimulation _bool;

true