/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-19 08:46:09
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 09:22:43
*/

private "_player";
_player = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;

if ( _player call NMD_fnc_isAdmin ) then {

	//--- Set player as admin
	[ _player, true ] call NMD_fnc_addAdmin;

};