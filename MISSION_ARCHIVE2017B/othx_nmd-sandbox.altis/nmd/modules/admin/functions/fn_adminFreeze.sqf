/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-17 14:38:54
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-17 15:06:49
*/

if ( !isServer ) exitWith {

	[ _this, _fnc_scriptname, false ] call BIS_fnc_MP;
	true

};

private [ "_player", "_freeze" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_freeze = [ _this, 1, true, [true] ] call BIS_fnc_param;

//--- Enable/disable unit simulation
_player enableSimulationGlobal !_freeze;

//--- Set global unit variable
_player setVariable [ "NMD_ModuleAdmin_frozen", _freeze, true ];

true