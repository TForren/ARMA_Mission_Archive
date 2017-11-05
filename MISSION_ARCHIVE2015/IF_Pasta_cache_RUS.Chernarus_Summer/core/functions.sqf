FNC_GetTeamVariable = {
	
	private ["_team", "_index", "_return"];
	
	_team = _this select 0;
	_index = _this select 1;
	
	_return = "";
	
	{
	
		if ((_x select 0) == _team) exitWith {
		
			_return = (_x select _index);
		
		};
	
	} forEach FW_Teams;
	
	_return

};

FNC_CountTeam = {
	
	private ["_team", "_side", "_type", "_count", "_unitArray"];
	
	_team = _this;
	
	_side = [_team, 1] call FNC_GetTeamVariable;
	_type = [_team, 2] call FNC_GetTeamVariable;
	
	_count = 0;
	
	if (_type == "player") then {
	
		_unitArray = playableUnits;
		
	} else {
		
		_unitArray = allUnits;
		
	};
	
	{
		
		if (side _x == _side && _x call FNC_Alive) then {
			
			_count = _count + 1;
			
		};
		
	} forEach _unitArray;
	
	_count
	
};

FNC_StartingCount = {
	
	{	
		
		_team = (_x select 0);
		
		_count = _team call FNC_CountTeam;
		
		[_team, 3, _count] call FNC_SetTeamVariable;
		
	} forEach FW_Teams;
	
};

FNC_CurrentCount = {
	
	{	
		
		_team = (_x select 0);
		
		_count = _team call FNC_CountTeam;
		
		[_team, 4, _count] call FNC_SetTeamVariable;
		
	} forEach FW_Teams;
	
};

FNC_SetTeamVariable = {
	
	private ["_team", "_index", "_value", "_return"];
	
	_team = _this select 0;
	_index = _this select 1;
	_value = _this select 2;
	
	_return = false;
	
	{
	
		if ((_x select 0) == _team) exitWith {
		
			_x set [_index, _value];
			
			_return = true;
		
		};
	
	} forEach FW_Teams;
	
	_return

};

FNC_StackNames = {
	
	private ["_array", "_foundArray", "_newArray", "_string", "_count"];
	
	_array = _this;
	_foundArray = [];
	_newArray = [];
	
	{
		
		if (!(_x in _foundArray)) then {
			
			_string = _x;
			
			_foundArray set [count _foundArray, _string];
			
			_count = 0;
			
			{
				
				if (_string == _x) then {
					
					_count = _count + 1;
					
				};
				
			} forEach _array;

			_newArray set [count _newArray, format ["%1 X %2", _count, _string]];
			
		};
		
	} forEach _array;
	
	_newArray
	
};

FNC_GetDamagedAssets = {
	
	private ["_team", "_disabledAssets", "_destroyedAssets"];
	
	_team = _this;

	_disabledAssets = [];
	_destroyedAssets = [];
	
	{
		
		if (_x getVariable "FW_AssetTeam" == _team) then {
		
			if (alive _x) then {
			
				if (!canMove _x && !canFire _x) then {
					
					_disabledAssets set [count _disabledAssets, _x getVariable "FW_AssetName"];
					
				};
			
			} else {
				
				_destroyedAssets set [count _destroyedAssets, _x getVariable "FW_AssetName"];
				
			};
		};
		
	} forEach vehicles;
	
	_destroyedAssets = _destroyedAssets call FNC_StackNames;
	_disabledAssets = _disabledAssets call FNC_StackNames;
	
	[_disabledAssets, _destroyedAssets]
	
};

//FNC_CreateRespawnMarker will make a respawn marker for _team at coordinate 0, 0, 0
FNC_CreateRespawnMarker = {
	
	private ["_team", "_markerName", "_marker"];
	
	_team = _this;
	
	_markerName = format ["respawn_%1", _team];
	
	_marker = createMarker [_markerName, [0, 0, 0]];
	_marker setMarkerShape "ICON";
	_markerName setMarkerType "EMPTY";
	
};

//FNC_InArea(UNIT, MARKER) checks if the UNIT is within the area of MARKER, supports all shapes
FNC_InArea = {

	private ["_unit", "_marker", "_pos", "_xSize", "_ySize", "_radius", "_result", "_x", "_y", "_temp"];

	_unit = _this select 0;
	_marker = _this select 1;

	_pos = markerPos _marker;

	_xSize = (markerSize _marker) select 0;
	_ySize = (markerSize _marker) select 1;

	_radius = _xSize;

	if (_ySize > _xSize) then {

		_radius = _ySize;
		
	};

	_result = false;

	if ((_unit distance _pos) <= (_radius * 1.5)) then {

		_x = (getPosASL _unit) select 0;
		_y = (getPosASL _unit) select 1;

		_angle = markerDir _marker;

		_x = _x - (_pos select 0);
		_y = _y - (_pos select 1);
			
		if (_angle != 0) then {

			_temp = _x * cos(_angle) - _y * sin(_angle);
			_y = _x * sin(_angle) + _y * cos(_angle);
			_x = _temp;

		};	
		
		if ((markerShape _marker) == "ELLIPSE") then {

			if (_xSize == _ySize) then {
			
				if ((_unit distance _pos) <= _radius) then {
				
					_result = true;	
			
				};
			
			} else {
			
				if (((_x ^ 2) / (_xSize ^ 2) + (_y ^ 2) / (_ySize ^ 2)) <= 1) then {
					
					_result = true;
					
				};

			};

		} else {
		

			if ((abs _x) <= _xSize && (abs _y) <= _ySize) then {
				
				_result = true;
				
			};

		};

	};

	_result

};

FNC_AreaCount = {
	
	private ["_side", "_logic", "_radius", "_count"];
	
	_side = _this select 0;
	_radius = _this select 1;
	_logic = _this select 2;
	
	_count = 0;
	
	{
		if ((side _x == _side) && ((_x distance _logic) < _radius) && (_x call FNC_Alive)) then {
		
			_count = _count +1;
		
		};

	} forEach allUnits;

	_count

};

//FNC_EndMission(SCENARIO) will end the mission
//Sends the team stats, time limit, scenario and executes "FW_EndMission" on all players machines
FNC_EndMission = {
	
	private ["_scenario", "_team"];
	
	_scenario = _this;
	
	FW_MissionEnded = true;
	
	{
	
		_team = (_x select 0);
		
		_assets = _team call FNC_GetDamagedAssets;
		
		[_team, 5, _assets select 0] call FNC_SetTeamVariable;
		[_team, 6, _assets select 1] call FNC_SetTeamVariable;
	
	} forEach FW_Teams;

	["FW_EndMission", [_scenario, FW_TimeLimit, FW_Teams]] call CBA_fnc_globalEvent;

};

//FNC_CasualtyPercentage(TEAM) returns the casualty percentage of TEAM
FNC_CasualtyPercentage = {
	
	private ["_team", "_count", "_start", "_current", "_tempText"];

	_team = _this;
	
	_count = 0;

	_start = [_team, 3] call FNC_GetTeamVariable;
	_current = [_team, 4] call FNC_GetTeamVariable;
	
	if (_start == 0) then {
	
		_tempText = format ["Casualty count:<br></br>Warning no units on team ""%1"".", _team];
		_tempText call FNC_DebugMessage;
		
	} else {
	
		_count = (_start - _current) / (_start * 0.01);
		
	};
	
	_count
	
	
};

//FNC_CasualtyCount(TEAM) returns the casualty count of TEAM
FNC_CasualtyCount = {
	
	private ["_team", "_count", "_start", "_current", "_tempText"];

	_team = _this;
	
	_count = 0;

	_start = [_team, 3] call FNC_GetTeamVariable;
	_current = [_team, 4] call FNC_GetTeamVariable;
	
	if (_start == 0) then {
	
		_tempText = format ["Casualty count:<br></br>Warning no units on team ""%1"".", _team];
		_tempText call FNC_DebugMessage;
		
	} else {
	
		_count = _start - _current;
		
	};
	
	_count
	
};

//FNC_Alive(UNIT) checks if the framework considers the UNIT alive
FNC_Alive = {
	
	private ["_unit"];
	
	_unit = _this;
	
	(alive _unit) && !(_unit getVariable ["FW_Dead", false]) && !(_unit getVariable ["ACE_isUnconscious", false])
	
};

//FNC_HasEmptyPositions(VEHICLE) checks if the VEHICLE has any empty positions
FNC_HasEmptyPositions = {
	
	private ["_vehicle"];
	
	_vehicle = _this;
	
	(_vehicle emptyPositions "Cargo" != 0 || _vehicle emptyPositions "Gunner" != 0 || _vehicle emptyPositions "Commander" != 0 || _vehicle emptyPositions "Driver" != 0)
	
};

//FNC_InVehicle(UNIT) checks if the UNIT is in a vehicle
FNC_InVehicle = {
	
	private ["_unit"];
	
	_unit = _this;
	
	((vehicle _unit) != _unit)
	
};

//FNC_AddTeam(SIDE, TYPE, NAME) adds a team on SIDE with NAME of TYPE to be tracked by the framework
FNC_AddTeam = {
	
	private ["_side", "_name", "_type"];

	_side = _this select 0;
	_name = _this select 1;
	_type = _this select 2;
	
	if (isMultiplayer) then {
	
		FW_Teams set [count FW_Teams, [_name, _side, _type,  0, 0, [], []]];
		
	} else {
	
		FW_Teams set [count FW_Teams, [_name, _side, "ai",  0, 0, [], []]];
		
	};

};