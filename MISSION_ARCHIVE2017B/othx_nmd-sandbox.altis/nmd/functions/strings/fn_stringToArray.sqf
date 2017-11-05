/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-04-24 09:30:47
*/
 
private[ "_string", "_stringArray", "_return" ];

_string = [ _this, 0, "", [""] ] call BIS_fnc_param;
_stringArray = toArray( _string );

_return = [];

for "_i" from 0 to ( count _stringArray )-1 do {

	_return = _return + [ toString( [ _stringArray select _i ] ) ];

};

_return