if (!isServer) exitWith{};

totalBunkers = 3 + (random 3);
publicVariable "totalBunkers";

_possibleBunkers = [bunkerTrig1,bunkerTrig2,bunkerTrig3,bunkerTrig4,bunkerTrig5,bunkerTrig6,bunkerTrig7,bunkerTrig8,bunkerTrig9,bunkerTrig10,bunkerTrig11,bunkerTrig12,bunkerTrig13,bunkerTrig14,bunkerTrig15,bunkerTrig16,bunkerTrig17,bunkerTrig18,bunkerTrig19,bunkerTrig20,bunkerTrig21,bunkerTrig22,bunkerTrig23,bunkerTrig24];

_chosenBunkers = [];

for [{_i=0}, {_i<totalBunkers}, {_i=_i+1}] do
{
	_chosenBunker = _possibleBunkers call BIS_fnc_selectRandom;
	while {_chosenBunker in _chosenBunkers} do {
		_chosenBunker = _possibleBunkers call BIS_fnc_selectRandom;
	};
	_chosenBunkers = _chosenBunkers + [_chosenBunker];

};

{
	_unitSize = 4 + (random 3);
	[[_x,_unitSize]] call HZ_fnc_MSVHouse;
	
} foreach _chosenBunkers;

{
	if !(_x in _chosenBunkers) then {
		_areaX = (triggerArea _x) select 0;  
		_areaY = (triggerArea _x) select 1;
		_nearestObjects = nearestObjects [_x, [],[_areaX,_areaY] call BIS_fnc_greatestNum];
		{deletevehicle _x} foreach _nearestObjects;
	};
} foreach _possibleBunkers;




_patrolTeamUnits = ["rhs_msv_emr_sergeant", "rhs_msv_emr_machinegunner","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_efreitor","rhs_msv_emr_LAT","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_rifleman"];

_totalPatrols = 1 + (random 2);

for [{_i=0}, {_i<_totalPatrols}, {_i=_i+1}] do
{
	
	[[_chosenBunkers]] call HZ_fnc_setupPatrol;
	
};
