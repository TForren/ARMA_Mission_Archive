/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-24 14:39:57
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-28 03:32:39
*/

private "_vehicle";
_vehicle = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_cfg = configFile >> "CfgVehicles" >> typeOf _vehicle;

//--- Remove any remaining magazines
{ _vehicle removeMagazineGlobal _x } forEach magazines _vehicle;

//--- Add magazines from parent config
{

	_vehicle addMagazineGlobal _x;

} forEach ( getArray ( _cfg >> "magazines" ) );

//--- Get vehicle turrets
for "_i" from 0 to ( count ( _cfg >> "Turrets" ) -1 ) do {

	private "_turret";
	_turret = ( _cfg >> "Turrets" ) select _i;

	//--- Add turret magazines
	{

		_vehicle addMagazineGlobal _x;

	} forEach ( getArray ( _turret >> "magazines" ) );

};

true