/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-20 08:18:32
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-20 08:25:08
*/

_player = _this select 0;
_jip = _this select 1;

if !( _player call BIS_fnc_isUnitVirtual ) then {

	NMD_curator addcuratoreditableobjects [ [ _player ], false ];

};