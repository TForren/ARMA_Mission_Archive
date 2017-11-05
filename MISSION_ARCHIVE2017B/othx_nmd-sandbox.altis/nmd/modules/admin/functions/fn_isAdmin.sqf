/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 09:28:58
*/
 
private [ "_player", "_isAdmin" ];
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;

//--- If checking self
if ( _player == player && { !isMultiplayer || serverCommandAvailable "#kick" } ) exitWith { true };

//--- Server
if ( isServer ) then {

	//--- Check UID against admin array
	_isAdmin = getPlayerUID _player in NMD_ModuleAdmin_admins;

} else {

	//--- If client, check player admin variable
	 _isAdmin = _player getVariable [ "NMD_ModuleAdmin_isAdmin", false ];
	
};

_isAdmin