/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 09:31:18
*/

 //--- Execute only on server
if ( !isServer ) exitWith {

	[ _this, _fnc_scriptname, false ] call BIS_fnc_MP;

};
 
private [ "_player" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_uid = getPlayerUID _player;

//--- Remove UID from admin array
NMD_ModuleAdmin_admins = NMD_ModuleAdmin_admins - [ _uid ];

//--- Unset player as admin
[ _player, false ] call NMD_fnc_setAsAdmin;

true