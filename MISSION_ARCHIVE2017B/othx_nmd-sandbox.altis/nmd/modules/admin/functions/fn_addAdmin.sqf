/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 09:30:08
*/
 
//--- Execute only on server
if ( !isServer ) exitWith {

	[ _this, _fnc_scriptname, false ] call BIS_fnc_MP;

};

private [ "_player", "_uid" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_uid = getPlayerUID _player;

//--- Check if UID is already in admin array
if ( !( _uid in NMD_ModuleAdmin_admins ) ) then {

	//--- Add UID to admin array
	[ NMD_ModuleAdmin_admins, _uid ] call BIS_fnc_arrayPush;

};

[ _player, true ] call NMD_fnc_setAsAdmin;

true