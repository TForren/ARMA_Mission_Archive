//[groupLeader, keepCount] call HZ_fnc_makeAsGarrison;

_leader = _this select 0;
_keepCount = _this select 1;

_dudes = units (group _leader);

{
	dostop _x;
	_x disableAI "MOVE";
	_x setSkill ["spotTime",0.99];
	_x setSkill ["aimShake",0.99];
	_x setSkill ["aimAccuracy",0.2];
	
} foreach _dudes;

_leader spawn {
	_group = (group _this);
	_bluNear = false;
	while {!_bluNear} do {
		_nearbyUnits = nearestObjects [(getpos (leader _group)), ["man"], 10];
		{
			if (side _x == west) then {_bluNear = true};
		} foreach _nearbyUnits;
		
		if (_bluNear) then {
			{_x enableAI "MOVE"} foreach units _group;
		};
		sleep 10;
	};
	
};

HZ_fnc_randomDudes = {
	_dudes = _this select 0;
	_keepCount = _this select 1;
	_keepArray = [];

	if (count _dudes < _keepCount) exitWith {systemchat format["bad garrison keep number %1",(leader (_dudes select 0))]};
	
	for "_i" from 1 to _keepCount do
	{
		_keep = _dudes call BIS_fnc_selectRandom;
		_dudes = _dudes - [_keep];
		_keepArray = _keepArray + [_keep];
	};

	{
		deleteVehicle _x;
	} foreach (_dudes - _keepArray);
};


[_dudes, _keepCount] call HZ_fnc_randomDudes;

