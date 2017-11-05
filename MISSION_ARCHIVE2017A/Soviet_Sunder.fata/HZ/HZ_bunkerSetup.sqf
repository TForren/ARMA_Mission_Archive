if (!isServer) exitWith{};

totalBunkers = 1;
//totalBunkers = 13 + (random 7);
publicVariable "totalBunkers";

_possibleBunkers = [bunkerTrig,bunkerTrig_1,bunkerTrig_2,bunkerTrig_3,bunkerTrig_4,bunkerTrig_5,bunkerTrig_6,bunkerTrig_7,bunkerTrig_8,bunkerTrig_9,bunkerTrig_10,bunkerTrig_11,bunkerTrig_12,bunkerTrig_13,bunkerTrig_14,bunkerTrig_15,bunkerTrig_16,bunkerTrig_17,bunkerTrig_18,bunkerTrig_19,bunkerTrig_20,bunkerTrig_21,bunkerTrig_22,bunkerTrig_23,bunkerTrig_24,bunkerTrig_25,bunkerTrig_26,bunkerTrig_27,bunkerTrig_28,bunkerTrig_29,bunkerTrig_30,bunkerTrig_31,bunkerTrig_32,bunkerTrig_33,bunkerTrig_34,bunkerTrig_35,bunkerTrig_36,bunkerTrig_37,bunkerTrig_38,bunkerTrig_39,bunkerTrig_40,bunkerTrig_41,bunkerTrig_42,bunkerTrig_43,bunkerTrig_44,bunkerTrig_45,bunkerTrig_46,bunkerTrig_47,bunkerTrig_48];
_chosenBunkers = [];
_loadouts = ["O_MG","O_RIF","O_AT","O_MARK"];

for [{_i=0}, {_i<totalBunkers}, {_i=_i+1}] do
{
	_chosenBunker = _possibleBunkers call BIS_fnc_selectRandom;
	while {_chosenBunker in _chosenBunkers} do {
		_chosenBunker = _possibleBunkers call BIS_fnc_selectRandom;
	};
	_chosenBunkers = _chosenBunkers + [_chosenBunker];

};

{
	_areaX = (triggerArea _x) select 0;  
	_areaY = (triggerArea _x) select 1;
	_nearestObjects = nearestObjects [_x, [],[_areaX,_areaY] call BIS_fnc_greatestNum];
	{
		if (_x isKindOf "man") then {
			[_x, _loadouts call BIS_fnc_selectRandom] call FNC_GearScript;
		};
	} foreach _nearestObjects;
	
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
	
	//[[_chosenBunkers]] call HZ_fnc_setupPatrol;
	
};
