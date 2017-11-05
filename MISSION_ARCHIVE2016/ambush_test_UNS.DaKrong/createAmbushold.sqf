//[this, enemycount]
_home = getpos (_this select 0); //get location of trigger
_homeX = (_home select 0);
_homeY = (_home select 1);
_area = triggerArea (_this select 0); //get area of trigger
_areaX = (_area select 0);
_areaY = (_area select 1);
_unitCount = (_this select 1); //number of enemies to spawn for ambush
_ambushGroup = createGroup east;

_spawnedUnits = [];

_PossibleUnits = ['uns_nva10b', 'uns_rf_vc9a', 'uns_mf_vc9a', 'uns_nva12b', 'uns_nva12c', 'uns_nva12d', 'uns_nva10a'];

for "_i" from 1 to _unitCount do {
	_chosenUnit = _PossibleUnits call BIS_fnc_SelectRandom;
	_tempGroup = createGroup east;
	_randX = random [1, (_areaX / 2), _areaX];
	_randY = random [1, (_areaY / 2), _areaY];
	
	//_newDuder = _chosenUnit createUnit [[_areaX - _randX ,_areaY - _randY, 0], _tempGroup];
	
	_newDuder = _tempGroup createUnit [_chosenUnit, [_homeX - _randX ,_homeY - _randY, 0], [], 0, "FORM"];

	_spawnedUnits = _spawnedUnits + _newDuder;
	
	_newDuder setUnitPos "DOWN";
	_newDuder disableAI "TARGET";
	_newDuder disableAI "AUTOTARGET";
	
};

_debugstr = parseText format ["<t align='center' size='2.0'>Ambush Debug</t><br/>
		home: %1<br/>
		area: %2<br/>
		areaXY: %3 %4<br/>
		enemyCount: %5<br/>
		ambushGroup: %6<br/>
		spawned: %7<br/>
		",_home,_area,_areaX,_areaY,_unitCount,_ambushGroup,_spawnedUnits];
		
hint _debugstr;