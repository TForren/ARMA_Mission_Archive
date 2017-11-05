//SUCC -- Shitty Unelegant Cross-group Communications
//v. 0

if (!isServer) exitWith{};
SUCC_init = false;

//Customize settings below this line
//-------------------
SUCC_autoInitSides = [opfor]; //if a side is in this list, automatically start the script for all its groups

//define faction relations
SUCC_westEnemies = [opfor, independent];
SUCC_eastEnemies = [blufor, independent];
SUCC_independentEnemies = [blufor, opfor];

SUCC_helpDistance = 700; //distance in metres that groups will help from
SUCC_maxHelpers = 3; //the maximum amount of groups we want to be able to answer a single call
//------------------
//only edit below this line if you're brave



//these should be something like [group, urgency, position of contact, active, amount of groups assigned]
//actually this is now a nested array with three sub-arrays, 0 is west, 1 is east, 2 is independent
//thanks SQF for being A HORRIBLE FUCKING LANGUAGE JESUS H CHRIST 
//seriously this piece of shit really just makes it impossible to write good code, jesus fuck
SUCC_helpRequests = [[], [], []];

SUCC_getSideID = {
	//see above
	_tar = _this select 0;
	_side = side _tar;
	_return = 0; //default to blufor because fuck this language I hate it
	if (_side == blufor) then {
		_return = 0;
	};
	if (_side == opfor) then {
		_return = 1;
	};
	if (_side == independent) then {
		_return = 2;
	};
	_return
};

SUCC_getEnemies = {
	_side = _this select 0;
	_enemies = sideUnknown;
	if (_side == blufor) then {
		_enemies = SUCC_westEnemies;
	};
	if (_side == opfor) then {
		_enemies = SUCC_eastEnemies;
	};
	if (_side == independent) then {
		_enemies = SUCC_independentEnemies;
	};
	_enemies
};

SUCC_addShot = {
	_unit = _this select 0;
	_shots = (_unit getVariable "SUCC_shotsfired") +1;
	_unit setVariable ["SUCC_shotsfired", _shots];
};

SUCC_callHelp = {
	//[group, urgency, positionASL] call SUCC_callHelp;
	_group = _this select 0;
	_urgency = _this select 1;
	_pos = _this select 2;
	_sideID = [_group] call SUCC_getSideID;
	
	//check if we have a help request going
	_found = false;
	{
		if (_x select 0 == _group) then {
			_found = _forEachIndex;
		};
	} forEach (SUCC_helpRequests select _sideID);
	
	//if we found a help request update it, else create a new one
	if (!(_found isEqualTo false)) then {
		((SUCC_helpRequests select _sideID) select _found) set [1,_urgency];
		((SUCC_helpRequests select _sideID) select _found) set [2,_pos];
		((SUCC_helpRequests select _sideID) select _found) set [3,true];
	}
	else {
		(SUCC_helpRequests select _sideID) pushBack [_group, _urgency, _pos, true, 0];
	};
	
};

SUCC_cancelHelp = {
	_group = _this select 0;
	_sideID = [_group] call SUCC_getSideID;
	
	//check if we have a help request going
	_found = false;
	{
		if (_x select 0 == _group) then {
			_found = _forEachIndex;
		};
	} forEach (SUCC_helpRequests select _sideID);
	
	if (!(_found isEqualTo false)) then {
		((SUCC_helpRequests select _sideID) select _found) set [3,false];
	};
	
};

SUCC_findHelpRequest = {
	//[group] call SUCC_findHelpRequest
	//finds a help request the group can answer
	_group = _this select 0;
	_groupPos = getposasl leader _group;
	_sideID = [_group] call SUCC_getSideID;
	_closestDist = nil;
	_closestCall = [];
	_return = [];
	
	{
		if (_x select 3) then { //only answer active requests
			_dist = _groupPos distance2d (_x select 2);
			if (_dist <= SUCC_helpDistance) then {
				_urgency = (_x select 1) / 100;
				_helpCount = SUCC_maxHelpers - (_x select 4);
				if (_helpCount < 0) then { _helpCount = 0 };
				_modifiedDistance = (SUCC_helpDistance * _urgency) * (_helpCount / SUCC_maxHelpers);
				
				if (_dist <= _modifiedDistance) then {
					if (isNil "_closestDist") then {
						_closestDist = _dist;
						_closestCall = _x;
					}
					else {
						if (_dist < _closestDist) then {
							_closestDist = _dist;
							_closestCall = _x;
						};
					};
				};
			};
		};
	} forEach (SUCC_helpRequests select _sideID);
	
	if (count _closestCall > 0) then {
		_return = _closestCall;
	};
	_return
};

SUCC_garbageCollect = [] spawn {
	//remove inactive help requests from the table every 60 seconds
	while {true} do {
		{
			_actives = [];
			{
				if (_x select 3) then {
					_actives pushBack _x;
				};
			} forEach _x;
			SUCC_helpRequests set [_forEachIndex, _actives]; //can't use _x here because SQF sucks
		} forEach SUCC_helpRequests;
		sleep 60;
	};
};

SUCC_autoInit = [] spawn {
	{
		_leader = leader _x;
		if ((!isPlayer _leader) && ((side _leader) in SUCC_autoInitSides)) then {
			[_leader] execVM "SUCC.sqf";
		};
	} forEach allGroups;
};


SUCC_init = true;