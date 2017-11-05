//SUCC -- Shitty Unelegant Cross-group Communications
//v. 0

if (!isServer) exitWith{};
if (isNil "SUCC_init") then {SUCC_init = false};
waitUntil {SUCC_init};
//sleep a random amount so not all loops run at the same time
sleep ((floor random 5) + 1);

_unit = _this select 0;
_group = group _unit;
_members = units _group;
_numMembers = count _members;
_deaths = 0;
_helping = false;
_helpingRequest = [];

//abort if the unit doesn't want this--no means NO!
_disabled = false;
{
	if (_x getVariable ["NOSUCC",false]) then {
		_disabled = true;
	};
} forEach _members;
if (_disabled) exitWith{};


//need an event handler to keep track of firefights
{
_x setVariable ["SUCC_shotsfired", 0];
_index = _x addEventHandler ["Fired", {_this select 0 setVariable ["SUCC_shotsfired",(_this select 0 getVariable "SUCC_shotsfired") + 1]}];
//_index = _x addEventHandler ["FiredMan", {[_this select 0] call SUCC_addShot}];
_x setVariable ["SUCC_firedhandler", _index];
} forEach _members;


//main loop
//todo: clean up this mess
_loop = true;
_behaviour = behaviour _unit;
_runTime = 0;
_combatTime = -1;
_lastContactTime = -1;
_lastTime = time;
_startTime = time;
while {_loop} do {
	_time = time;
	_runTime = _time - _startTime;
	_leader = leader _group;
	
	//keep track of shots
	_newShots = 0;
	{
		_newShots = _newShots + (_x getVariable "SUCC_shotsfired");
		_x setVariable ["SUCC_shotsfired", 0];
	} forEach _members;
	
	//keep track of deaths
	_newDeaths = 0;
	_deadUnits = [];
	{
		if (!alive _x) then {
			_x removeEventHandler ["Fired", (_x getVariable "SUCC_firedhandler")];
			_newDeaths = _newDeaths + 1;
			_deadUnits pushBack _x;
		};
	} forEach _members;
	_members = _members - _deadUnits; //remove dead dudes from this count
	_deaths = _deaths + _newDeaths;
	
	//keep track of new group members
	_newMembers = (units _group) - _members;
	{
		if (alive _x) then {
			_x setVariable ["SUCC_shotsfired", 0];
			_index = _x addEventHandler ["Fired", {_this select 0 setVariable ["SUCC_shotsfired",(_this select 0 getVariable "SUCC_shotsfired") + 1]}];
			_x setVariable ["SUCC_firedhandler", _index];
			_members pushBack _x; //add new member to our array
		};
	} forEach _newMembers;
	_numMembers = count _members;
	//exit if everyone died
	if ({alive _x} count _members == 0) then {
		_loop = false;
	};
	
	//exit if player is leader
	if (isPlayer leader _group) then {
		_loop = false;
	};
	
	//figure out if we're in an active firefight
	if ((_newShots > 0) || (_newDeaths > 0)) then {
		_lastContactTime = _time;
	};
	
	if (_lastContactTime != -1) then {
		if ((_time - _lastContactTime) < 120) then {
			if (_combatTime == -1) then {
				_combatTime = 0
			}
			else {
				_combatTime = _combatTime + (_time - _lastTime);
			};
		};
		if ((_time - _lastContactTime) >= 120) then {
			_combatTime = -1;
		};
	};
	
	//call in intel/help request
	if (_combatTime >= 0) then {
		_urgency = (_combatTime / 3) + ((_deaths / (_numMembers + 1)) * 50);
		if (_urgency > 100) then { _urgency = 100};
		//actually do the thing here
		_targets = _leader targetsQuery [objNull, sideUnknown, "", [], 0];
		_filteredTargets = [];
		_enemies = [side _group] call SUCC_getEnemies;
		{
			if ((_x select 0 == 1) and (_x select 2 in _enemies)) then {
				_filteredTargets pushBack _x
			};
		} forEach _targets;
		//pick a random matched target to call for help with
		//todo: better logic for this
		if (count _filteredTargets > 0) then {
			_randTarget = selectRandom _filteredTargets;
			_randTargetUnit = _randTarget select 1;
			_knowledge = _leader targetKnowledge _randTargetUnit;
			_targetPos = _knowledge select 6;
			
			//call for help on that target
			[_group, _urgency, _targetPos] call SUCC_callHelp;
		}
		else {
			//cancel any help request we might have if we have no targets
			[_group] call SUCC_cancelHelp;
		};
		
	};
	
	//cancel help request once we're out of combat or if the loop is terminating
	if ((_combatTime == -1) || !_loop) then {
		[_group] call SUCC_cancelHelp;
		_deaths = 0; //reset deaths to zero after things calm down
	};
	
	//stop helping if we have no waypoints, or if we're in combat
	if (_helping && ((count waypoints _group == 0) || (_combatTime >= 0))) then {
		_helping = false;
		_helpers = (_helpingRequest select 4) - 1;
		_helpingRequest set [4, _helpers];
		_helpingRequest = [];
		_members doWatch objNull;
	};
		
	//if we're not in combat (or already helping), check if there's a call for help we can answer
	if (_combatTime == -1 && !_helping) then {
		_helpingRequest = [_group] call SUCC_findHelpRequest;
		if (count _helpingRequest > 0) then {
			_helping = true;
			_helpers = (_helpingRequest select 4) + 1;
			_helpingRequest set [4, _helpers];
			
			//save our original pos to return there later
			_returnPos = getposasl leader _group;
			
			//drop everything we're doing and run to the enemy
			while {(count waypoints _group) > 0} do {
				deleteWaypoint (waypoints _group select 0);
			};
			_pos = _helpingRequest select 2;
			_wp = _group addWaypoint [_pos, 25];
			_wp setWaypointType "SAD";
			_wp setWaypointFormation "WEDGE";
			_wp setWaypointSpeed "NORMAL";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointCombatMode "YELLOW";
			_members doWatch _pos;
			_wp setWaypointStatements ["true", "thisList doWatch objNull"];
			
			//add a waypoint to go back to our original waypoint after the SAD is done
			_wp = _group addWaypoint [_returnPos, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointFormation "STAG COLUMN";
			_wp setWaypointSpeed "LIMITED";
			_wp setWaypointBehaviour "SAFE";
			_wp setWaypointCombatMode "YELLOW";
		};
	};
	
	_lastTime = time;
	
	if (_loop) then {
		if (_combatTime >= 0) then {
			sleep 5;
		}
		else {
			sleep 10;
		};
	};
};

if (!_loop) then {
	//script is stopping so we need to clean up
	if (_helping) then {
		_helping = false;
		_helpers = (_helpingRequest select 4) - 1;
		_helpingRequest set [4, _helpers];
		_helpingRequest = [];
	};
	_members doWatch objNull;
	{
		_x removeEventHandler ["Fired", (_x getVariable "SUCC_firedhandler")];
	} forEach _members;
};