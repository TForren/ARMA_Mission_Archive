/*HZ_fnc_MSVHouse
 *  This script will fill a house with MSV. will grab what ever building is the closest the trigger center
 *Takes in:
 *  [trigger] 
 *Returns:
 *  N/A
*/
if (!isServer) exitWith{};
	
[_this select 0] spawn {
	
private _params = (_this select 0);
private _trig = _params select 0;
private _enemyCount = _params select 1;
private _cnt = 0;
private _posarray = [];


private _house = nearestObject [position _trig, "building"];
//Squad Leader first, everyone else index >0
_garrionUnitArray = ["rhs_msv_emr_sergeant", "rhs_msv_emr_machinegunner","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_efreitor","rhs_msv_emr_LAT","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_rifleman"];

//Create position array
//as long as building position _cnt not equal to "[0,0,0]" keep looping
while {format ["%1", _house buildingpos _cnt] != "[0,0,0]" } do {
	_pos = _house buildingpos _cnt;		//select building position _cnt
	_posarray = _posarray + [_pos];		//add the position to the list
	_cnt = _cnt + 1;					//increment counter
	//sleep 0.01;
};

if (_cnt == 0) exitWith {hint format ["Invalid building at %1 found a %2", str(_trig),str(_house)]};


_firstRound = true; //force squad leader pos to spawn first
_garrisonGroup = createGroup east;
_usedPos = [];
for [{_i=0}, {_i<_enemyCount}, {_i=_i+1}] do
{
	_chosenUnit = "";
	if !(_firstRound) then {
		_chosenUnit = _garrionUnitArray call BIS_fnc_SelectRandom;
	} else {
		_chosenUnit = _garrionUnitArray select 0;
	};

	_garrisonPos = _posarray call BIS_fnc_selectRandom;
	while {_garrisonPos in _usedPos} do {
		_garrisonPos = _posarray call BIS_fnc_selectRandom;
	};
	_usedPos = _usedPos + [_garrisonPos];
	
	_newDuder = _garrisonGroup createUnit [_chosenUnit, _garrisonPos, [], 0, "FORM"];
	_newDUder setpos _garrisonPos;
	//Every newDuder has his own checklevel spawn running.
	_newDuder setSkill 0.4;
	_newDuder setRank "Sergeant";
	_newDuder setSkill ["spotDistance", 0.9];
	doStop _newDuder;
	_newDuder setdir (_house getRelDir _newDuder) + (getdir _house);
};


}; //end spawn