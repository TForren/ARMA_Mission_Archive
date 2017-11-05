if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_params"];

_towns = _this select 0;
//_possibleCivs = [];

/* Iterate over all the towns
 * Single town format:
 * [town, houses, civilians, vehicles, parked, [roads] ]
 *
*/
_chosenTown = "";
_chosenHouse = "";
for [{_i=0}, {_i<6}, {_i=_i+1}] do
{
	_chosenTown = _towns call BIS_fnc_selectRandom;
	_houses = _chosenTown select 1;
	_chosenHouse = _houses call BIS_fnc_selectRandom;

	_cnt = 0;
	_posarray = [];
	while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
		_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
		_posarray = _posarray + [_pos];		//add the position to the list
		_cnt = _cnt + 1;					//increment counter
		sleep 0.01;
	};
	_chosenPos = _posarray call BIS_fnc_selectRandom;
	
	_cache = "rhs_gear_crate" createVehicle _chosenPos;
	_cache allowdamage false; //stop the immediate cache destruction because arma can't even
	[_cache, "cache"] call FNC_VehicleGearScript;
	[_cache] spawn {
		_cache = _this select 0;
		sleep 5;
		_cache allowdamage true;
	};
	caches = caches + [_cache];
	
	randDir = (random 360);
	for [{_j=0},{_j<3}, {_j=_j+1}] do 
	{
		_chosenCar = ["RDS_Lada_Civ_03","LOP_AM_Landrover_M2","LOP_AM_UAZ_DshKM","LOP_AM_Offroad_M2"] call BIS_fnc_selectRandom;
		
		_car1 = _chosenCar createVehicle ([getpos _cache, 4, 100, 8, 0, 0.25, 0] call BIS_fnc_findSafePos);	
		_car1 setdir randDir;
	};
};

publicVariable "caches";