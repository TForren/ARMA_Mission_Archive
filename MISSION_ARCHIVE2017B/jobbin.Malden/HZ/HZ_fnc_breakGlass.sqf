_building = (nearestBuilding _this);

hitIndex = getAllHitPointsDamage _building;
hitpoints = hitIndex select 0;
_i = 0;
{
	_split = _x splitString "_";
	if ("glass" == (_split select 0)) then {
		_building setHitIndex [_i, 1,true];
	};
	_i = _i + 1;
} foreach hitpoints;