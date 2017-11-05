_chosenGroup = _this select 0;

[_chosenGroup] spawn {
_chosenGroup = _this select 0;
	
spawnOrder = _chosenGroup call HZ_fnc_groupInfo;

//[cost,infantry,vehs,vehicleCargo];

cost = spawnOrder select 0;
infantry = spawnOrder select 1;
vehs = spawnOrder select 2;
vehicleCargo = spawnOrder select 3;
uses = spawnOrder select 4;
commanderFaction = (side ZeusCommander);
_spawned = [];

if (reqPoints < cost) then {
	[[ZeusCommander,format["Not enough points! Have %1 need %2",reqPoints,cost]]] remoteExec ["HZ_fnc_radioMessage", 0];
}
else {
	_usesLeft = commandModule getVariable _chosenGroup;
	if (_usesLeft <= 0) then {
		[[ZeusCommander,"Maximum Number Reached."]] remoteExec ["HZ_fnc_radioMessage", 0];
	} else {
	_group = createGroup commanderFaction;
	_group setFormation "DIAMOND";
	//infantry
	for [{_i=0}, {_i<(count infantry)}, {_i=_i+1}] do
	{	
		_spawnPos = ([getpos spawnCenter, 2, 100, 1, 0, 1, 0] call BIS_fnc_findSafePos);
		_newDuder = _group createUnit [infantry select _i, _spawnPos, [], 0, "FORM"];
		if (_i == 0) then {
			_newDuder setRank "LIEUTENANT";
		};
		_spawned = _spawned + [_newDuder];
	};
	
	//vehs
	for [{_i=0}, {_i<(count vehs)}, {_i=_i+1}] do
	{
		_spawnPos = ([getpos spawnCenter, 5, 600, 8, 0, 0.15, 0] call BIS_fnc_findSafePos);
		_veh = (vehs select _i) createVehicle _spawnPos;
		_spawned = _spawned + [_veh];
		createVehicleCrew _veh;
		(crew _veh) joinSilent _group;
		{
			_newDuder = _group createUnit [_x, _spawnPos, [], 0, "FORM"];
			_newDuder moveinCargo _veh;
		} foreach vehicleCargo;
	};//end for vehs

	{
		if ( (_x distance (leader _x) > 10) && (vehicle _x == _x)) then {
			_movePos = ([getpos (leader _x), 2, 50, 8, 0, 1, 0] call BIS_fnc_findSafePos);
			_x setpos _movePos;
		};
	} foreach _spawned;
	commandModule addCuratorEditableObjects [_spawned,true];
	if (_chosenGroup in specials) then {
		[_chosenGroup,_spawned] call HZ_fnc_handleSpecials;
	};
	commandModule setVariable [_chosenGroup, (commandModule getVariable _chosenGroup) - 1];
	reqPoints = reqPoints - cost;
	publicVariable "reqPoints";
	[[ZeusCommander, format["%1 requisition points remaining.",reqPoints]]] remoteExec ["HZ_fnc_radioMessage", 0];
	"pointMarker" setMarkerText format ["Points: %1",reqPoints];
	};//end max count check
	

	};
}; //end spawn
