/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-15 18:26:37
* @Last Modified by:   Will
* @Last Modified time: 2014-09-25 09:21:02
*/

private [ "_unit", "_inventory" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;

if ( _unit == objNull ) exitwith { [ "No unit object" ] call BIS_fnc_error };

_inventory = [

	assignedItems _unit,
	headgear _unit,
	goggles _unit,
	
	[ primaryWeapon _unit, primaryWeaponItems _unit, primaryWeaponMagazine _unit ],
	[ secondaryWeapon _unit, secondaryWeaponItems _unit, secondaryWeaponMagazine _unit ],
	[ handgunWeapon _unit, handgunItems _unit, handgunMagazine _unit ],
	
	[ uniform _unit, uniformItems _unit ],
	[ vest _unit, vestItems _unit ],
	[ backpack _unit, backpackItems _unit ]
	
];

_inventory