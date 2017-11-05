if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_params"];


debrisChance = 0.3;

_debris = ["Land_popelnice","Land_Pneu","CUP_metalcrate","CUP_metalcrate_02","Land_CratesPlastic_F","Land_CratesShabby_F","Fort_Crate_wood"];

_towns = _this select 0;

/* Iterate over all the towns
 * Single town format:
 * [town, civilians, vehicles, parked, [roads] ]
 *
*/
{
	_roadPosArray=(_x select 5);

	if (random 1 < debrisChance) then {
		
		_chosenRoad = _roadPosArray call BIS_fnc_selectRandom;
		_chosenDebris = _debris call BIS_fnc_selectRandom;
		
		_spawnedDebris = _chosenDebris createvehicle 
			[(getpos _chosenRoad select 0) + (random 10 - 5) * 2,(getpos _chosenRoad select 1) + (random 10 - 5) * 2, 0];

		if (ambCivDebug) then {
			_txt=format["DebrisMkr%1",_spawnedDebris];
			_debugMkr=createMarker [_txt,getpos _spawnedDebris];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "mil_destroy";
			_debugMkr setMarkerColor "ColorBlack";
		};
	}; //end random IED spawn chance
	

} foreach _towns;

publicVariable "spawnedIEDs";