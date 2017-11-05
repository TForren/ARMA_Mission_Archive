/*HZ_fnc_setupPatrols
 *creates a patrol squad from the given units
 *Takes in:
 *[[_factionUnits,pos,radius]]
 *
*/ 
if (!isServer) exitWith {};
	
[_this select 0] spawn {
	
private _params = (_this select 0);
private _factionUnits = _params select 0;
private _spawnPos = _params select 1;
private _patrolRad = _params select 2;
private _regularDuders = (_factionUnits select [3, count _factionUnits]);

_teamCount = 4 + (random 4);
_firstRound = true; //force squad leader pos to spawn first
_patrolGroup = createGroup east;
_usedDuders = [];

for [{_i=0}, {_i<_teamCount}, {_i=_i+1}] do
{
	_chosenUnit = "";
	if !(_firstRound) then {
		_chosenUnit =  _regularDuders call BIS_fnc_selectRandom;
		while {_chosenUnit in _usedDuders} do {
			_chosenUnit = _regularDuders call BIS_fnc_SelectRandom;
		};
		_usedDuders = _usedDuders + [_chosenUnit];
	} else {
		_chosenUnit = _factionUnits select 2; //index 2 is always SQL
		_usedDuders = _usedDuders + [_chosenUnit];
		_firstRound = false;
	};
	
	_spawnPos = [_spawnPos, 0, 50, 1, 0, 0.55, 0] call BIS_fnc_findSafePos;
	_newDuder = _patrolGroup createUnit [_chosenUnit, _spawnPos, [], 0, "FORM"];
	//_newDuder setVariable ["VCOM_NOPATHING_Unit",true];
	//[_newDuder, _loadout] call FNC_GearScript;
	//_newDuder setSkill 0.4;
	//_newDuder setRank "corporal";
	//_newDuder setSkill ["spotDistance", 1];
	//_newDuder setSkill ["aimShake", 1];
	curMissionUnits = curMissionUnits + [_newDuder];
};

[_patrolGroup, _spawnPos, _patrolRad, 7, "MOVE", "SAFE", "GREEN", "LIMITED", "STAG COLUMN", "if (random 1 > 0.5) then {this spawn CBA_fnc_searchNearby}", [3,6,9]] call CBA_fnc_taskPatrol;

};