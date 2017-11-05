/*HZ_fnc_SetupBattery
 *  Creates an artillery battery nest
 *Takes in:
 *  [[position,targetPosition]] call HZ_fnc_SetupBattery;
 *Returns:
 *  N/A
*/
[_this select 0] spawn {

private _params = (_this select 0);
private _position = _params select 0;
private _targetPosition = _params select 1;

_loadouts = ["O_MG","O_RIF","O_AT","O_MARK"];
_spawnedObjects = [];

_objects = [
// CLASSNAME, relativePos, added rotation
["Land_fort_artillery_nest_EP1", [0,5,-1.5], 0],
["ClutterCutter_EP1", [0,0,0], 0],
["Land_CamoNet_NATO_EP1", [4.9,0,-2], 90],
["Land_CamoNet_NATO_EP1", [-4.9,0,-2], -90]//,
//["AmmoCrates_NoInteractive_Medium", [-3.8,0,-1.0], 130],
//["AmmoCrates_NoInteractive_Medium", [3.7,1,-1.1], 40]
];


_gun = "rhs_D30_msv" createvehicle _position; //base object. everything around this
_dirToTarget = [_gun, _targetPosition] call BIS_fnc_relativeDirTo;  
_gun setdir (getdir _gun + _dirToTarget);
_spawnedObjects = _spawnedObjects + [_gun];
guns = guns + [_gun];
publicVariable "guns";
_i = 1;
{
	_classname = (_x select 0);
	_relPos = (_x select 1);
	_relDir = (_x select 2);
	_curObject = _classname createVehicle (_gun ModelToWorld _relPos);
	_curObject setpos (_gun ModelToWorld _relPos);
	_curObject setdir (getDir _gun + _relDir);
	//stop nest from breaking when gun fires
	if (_classname == "Land_CamoNet_NATO_EP1") then {nets = nets + [_curObject];_curObject allowdamage false}; 
} foreach _objects;


_gunGroup = createGroup civilian;
_trenchGroup = createGroup east;

	_spawnPos = (_gun modelToWorld [10,5,-1]);
	
	_newDuder1 = _gunGroup createUnit ["O_Soldier_F", _spawnPos, [], 0, "FORM"];
	_newDuder1 setpos _spawnPos;
	_newDuder1 moveInGunner _gun;
	_newDuder1 setBehaviour "careless";
	_newDuder1 setVariable ["asr_ai_exclude", true];
	
	_newDuder2 = _trenchGroup createUnit ["O_Soldier_F", _spawnPos, [], 0, "FORM"];
	_newDuder3 = _trenchGroup createUnit ["O_Soldier_F", _spawnPos, [], 0, "FORM"];
	{[_x, "O_RIF"] call FNC_GearScript;} foreach [_newDuder1,_newDuder2,_newDuder3];

[_gun, _targetPosition] spawn {
	_gun = _this select 0;
	_targetPosition = _this select 1;
	
	while {alive _gun} do {
		//_gun doArtilleryFire [_targetPosition, "rhs_mag_3of56_10", 4];
		hint "firing";
		_gun doWatch _targetPosition;
		[_gun, [_targetPosition, "rhs_mag_3of56_10", 4]] remoteExec ["commandArtilleryFire", 0, true];
		sleep 20 + (random 1.5);
		_gun doWatch _targetPosition;
		_gun setVehicleAmmo 1;
	};
};
}; //end spawn block

{ 
	_curGun = _x;
	{
		_curGun disableCollisionWith _x;
	} foreach nets;
} foreach guns;