/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-11 20:30:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-12 05:47:52
*/

private [ "_dir", "_return" ];
_dir = [ _this, 0, 0, [0] ] call BIS_fnc_param;

_return = 0;
if ( _dir < 180 ) then { _return = _dir + 180 };
if ( _dir > 180 ) then { _return = _dir - 180 };

_return