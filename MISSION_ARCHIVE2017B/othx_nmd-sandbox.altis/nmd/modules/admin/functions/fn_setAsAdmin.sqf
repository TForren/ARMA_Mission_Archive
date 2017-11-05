/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 09:28:15
*/
 
private [ "_player", "_value" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_isAdmin = [ _this, 1, false, [true] ] call BIS_fnc_param;

//--- Set player admin variable
_player setVariable [ "NMD_ModuleAdmin_isAdmin", _isAdmin, true ];

true