/*HZ_fnc_setupPatrols
 *creates a patrol squad that goes between all the bunkers
 *Takes in:
 *[[chosenBunkers]]
 *
*/ 
if (!isServer) exitWith{};
	
[_this select 0] spawn {
	
private _params = (_this select 0);
private _chosenBunkers = _params select 0;

//_patrolTeamUnits = ["rhs_msv_emr_sergeant", "rhs_msv_emr_machinegunner","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_efreitor","rhs_msv_emr_LAT","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_rifleman","rhs_msv_emr_engineer"];

_loadouts = ["O_MG","O_RIF","O_RAT","O_AT","O_AAT","O_MARK"];

_spawnBunker = _chosenBunkers call BIS_fnc_selectRandom;

_teamCount = 2 + (random 2);
_firstRound = true; //force squad leader pos to spawn first
_patrolGroup = createGroup east;
//_usedDuders = [];
_usedLoadouts = [];

for [{_i=0}, {_i<_teamCount}, {_i=_i+1}] do
{
	_chosenUnit = "CUP_O_TK_Soldier";
	_loadout = "";
	if !(_firstRound) then {
		_loadout = _loadouts call BIS_fnc_selectRandom;
	//while {_chosenUnit in _usedDuders} do {
		//	_chosenUnit = _patrolTeamUnits call BIS_fnc_SelectRandom;
		//};
		if (_loadout in _usedLoadouts) then {
			_loadout = _loadouts call BIS_fnc_selectRandom;
		};
		//_usedDuders = _usedDuders + [_chosenUnit];
		_usedLoadouts = _usedLoadouts + [_loadout];
	} else {
		//_chosenUnit = _patrolTeamUnits select 0;
		//_usedDuders = _usedDuders + [_chosenUnit];
		_loadout = "O_SL";
		_firstRound = false;
	};

	_spawnPos = _spawnBunker;
	
	_newDuder = _patrolGroup createUnit [_chosenUnit, _spawnPos, [], 0, "FORM"];
	_newDuder setpos (_newDuder modelToWorld [20,-20,0]);
	//_newDuder setVariable ["VCOM_NOPATHING_Unit",true];
	[_newDuder, _loadout] call FNC_GearScript;
	_newDuder setSkill 0.4;
	_newDuder setRank "corporal";
	_newDuder setSkill ["spotDistance", 1];
	_newDuder setSkill ["aimShake", 1];
	TrenchUnits = TrenchUnits + [_newDuder];
};

[_chosenBunkers, _patrolGroup] spawn {
	_chosenBunkers = (_this select 0) + [[12211.2,22996.2,0]]; //add tonos bay to patrol options
	_patrolGroup = _this select 1;
	_patrolGroup setBehaviour "SAFE";
	_patrolGroup setFormation "FILE";
	
	while {behaviour leader _patrolGroup == "SAFE"} do {
		_wpLoc = ( _chosenBunkers call BIS_fnc_selectRandom);
		_wp = _patrolGroup addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "LIMITED";
		
		waitUntil{sleep 5;leader _patrolGroup distance _wpLoc < 10};
	};
	
	while {true} do {
		_wpLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		_wp = _patrolGroup addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "NORMAL";
		
		waitUntil{sleep 5;leader _patrolGroup distance _wpLoc < 10};		
	};
};


};