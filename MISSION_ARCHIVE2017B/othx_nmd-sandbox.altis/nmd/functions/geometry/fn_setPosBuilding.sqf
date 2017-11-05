/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 11:17:43
*/
 
private [ "_unit", "_index", "_building" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_index = [ _this, 1, 0, [0] ] call BIS_fnc_param;
_building = nearestBuilding _unit;

if ( ( _building buildingPos _index ) distance [ 0, 0, 0 ] > 0 ) then {

	_unit setPos ( _building buildingPos _index );

};

true