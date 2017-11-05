/*HZ_fnc_spawnPatrolVehicle
 *creates a patrol squad from the given units
 *Takes in:
 *[[_factionUnits,_factionVehiclesArmed,pos,radius,isArmor]]
 *
*/ 
if (!isServer) exitWith {};
[_this select 0] spawn {
private _params = (_this select 0);
private _factionUnits = _params select 0;
private _factionVehiclesArmed = _params select 1;
private _spawnPos = _params select 2;
private _patrolRad = _params select 3;
private _isArmor = _params select 4;
private _regularDuders = (_factionUnits select [3, count _factionUnits]);

_vehGroup = createGroup east;

_spawnPos = [_spawnPos, 0, 50, 5, 0, 0.25, 0] call BIS_fnc_findSafePos;
_chosenVehicle = _factionVehiclesArmed call BIS_fnc_selectRandom; 
_newVeh = _chosenVehicle createvehicle _spawnPos;
curMissionUnits = curMissionUnits + [_newVeh];

if (_isArmor) then { //armor use crew
	_crew = _factionUnits select 1; //index 1 is always crew

	for "_i" from 0 to 2 do {
		_newDuder = _vehGroup createUnit [_crew, _spawnPos, [], 0, "FORM"];
		curMissionUnits = curMissionUnits + [_newDuder];
		switch (_i) do {
			case 0: {_newDuder moveinCommander _newVeh};
			case 1: {_newDuder moveingunner _newVeh};
			case 2: {_newDuder moveindriver _newVeh};
			default {_newDuder moveincargo _newVeh};
		};
	}; //end for
} else { //soft armor. don't use crew
	_crew = _regularDuders call BIS_fnc_selectRandom;
		
	for "_i" from 0 to 1 do {
		_newDuder = _vehGroup createUnit [_crew, _spawnPos, [], 0, "FORM"];
		curMissionUnits = curMissionUnits + [_newDuder];
		switch (_i) do {
			case 0: {_newDuder moveingunner _newVeh};
			case 1: {_newDuder moveindriver _newVeh};
			default {_newDuder moveincargo _newVeh};
		};
	}; //end for
};

[_vehGroup, _spawnPos, _patrolRad, 7, "MOVE", "SAFE", "GREEN", "LIMITED", "STAG COLUMN", "", [3,60,120]] call CBA_fnc_taskPatrol;

};