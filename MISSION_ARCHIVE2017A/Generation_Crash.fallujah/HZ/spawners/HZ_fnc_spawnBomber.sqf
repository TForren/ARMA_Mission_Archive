_spawnpos = [spawnPos, 1, 50, 2, 0, 20, 0] call BIS_fnc_findSafePos;
_tempGroup = createGroup independent;
_tempGroup setGroupId ["Suicide Bomber"];
_newDuder = _tempGroup createUnit ["LOP_ISTS_Infantry_Rifleman", _spawnpos, [], 0, "FORM"];
_newDuder setpos _spawnpos;
_newDuder call FNC_TrackUnit;
_newDuder setBehaviour "CARELESS";
_newDuder setCaptive true;
[_newDuder,"bomber"] call FNC_GearScript;
commandModule addCuratorEditableObjects [[_newDuder],true ];

detonate = {
	_possibleExplosions = ["R_80mm_HE"];
	_chosenExplosion = _possibleExplosions call BIS_fnc_selectRandom;
	[_this, ("preExplosion"),50] call CBA_fnc_globalSay3d;
	sleep ((random 3) + 2);
	_boom = _chosenExplosion createvehicle (getpos _this);
	_this setdamage 1;
};//end detonate

_newDuder spawn {
	while {alive _this} do {
		_nearEnemy = false;
		//Check if any enemy is nearby
		{
			if (side _x == west) then {
				_nearEnemy = true;
				_trigUnit = _x;
			}
		} forEach nearestObjects [_this, ["man","car","tank"], 10];

		if (_nearEnemy) exitWith {
			_this call detonate;
		};
		
		sleep 3;
	};
};

