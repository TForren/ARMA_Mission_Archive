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
	
	_cache = "DWT_Empty_USBasicWeapons" createVehicle _chosenPos;
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
		_chosenCar = ["CUP_C_Golf4_random_Civ", "CUP_C_Datsun_4seat", "CUP_C_Skoda_Blue_CIV", "CUP_C_Skoda_White_CIV", "CUP_O_UAZ_MG_TKA", "CUP_O_LR_MG_TKA"] call BIS_fnc_selectRandom;
		_car1 = _chosenCar createVehicle ([getpos _cache, 4, 100, 8, 0, 0.25, 0] call BIS_fnc_findSafePos);	
		_car1 setdir randDir;
	};
};

publicVariable "caches";