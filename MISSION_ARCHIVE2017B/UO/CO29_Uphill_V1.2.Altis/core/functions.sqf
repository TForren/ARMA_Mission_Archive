FNC_GetTeamVariable = {

	private ["_team", "_index", "_return", "_found", "_tempText"];

	_team = _this select 0;
	_index = _this select 1;

	_return = 0;
	_found = false;

	{

		if ((_x select 0) == _team) exitWith {

			_return = (_x select _index);
			_found = true;

		};

	} forEach FW_Teams;

	if (!_found) then {

		_tempText = format ["Critical:<br></br>Team ""%1"" does not exist.", _team];
		_tempText call FNC_DebugMessage;

	};

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

FW_EndStats = "";

//FNC_EndMission(END_TYPE, WIN) will end the mission (see settings.sqf for advanced options)
//Sends the team stats, time limit, endType and executes "BIS_fnc_endMission" on all players machines
FNC_EndMission = {

	private ["_temp", "_time", "_team", "_casualties", "_assets", "_disabled", "_destroyed"];

	if (FW_EndStats == "") then {

		_time = ceil(time / 60);

		if (_time >= FW_TimeLimit) then {_time = FW_TimeLimit;};

		if (FW_TimeLimit == 0) then {

			FW_EndStats = format ["<t font='PuristaBold' size='1'>Mission duration: %1 minutes.</t><br/><br/>", _time];

		} else {

			FW_EndStats = format ["<t font='PuristaBold' size='1'>Mission duration: %1 out of %2 minutes.</t><br/><br/>", _time, FW_TimeLimit];

		};

		for "_i" from 0 to count FW_Teams -1 do {
			_team = FW_Teams select _i;
			_casualties = _team select 0 call FNC_CasualtyCount;

			FW_EndStats = FW_EndStats + format ["<t font='PuristaBold' size='1.6'>%1:</t><br/>Casualties: %2/%3", _team select 0, _casualties, _team select 3];

			_assets = (_team select 0) call FNC_GetDamagedAssets;
			_disabled = _assets select 0;
			_destroyed = _assets select 1;

			if (count _disabled > 0) then {
				FW_EndStats = FW_EndStats + "<br/><br/><t font='PuristaBold' size='1.2'>Disabled Assets:</t><br/>";

				for "_k" from 0 to count _disabled -1 do {
					FW_EndStats = FW_EndStats + format ["- %1", _disabled select _k];

					if (_k < count _disabled -1) then {
						FW_EndStats = FW_EndStats + "<br/>";
					};
				};
			};

			if (count _destroyed > 0) then {
				FW_EndStats = FW_EndStats + "<br/><br/><t font='PuristaBold' size='1.2'>Destroyed Assets:</t><br/>";

				for "_k" from 0 to count _destroyed -1 do {
					FW_EndStats = FW_EndStats + format ["- %1", _destroyed select _k];

					if (_k < count _destroyed -1) then {
						FW_EndStats = FW_EndStats + "<br/>";
					};
				};
			};

			if (_i < count FW_Teams -1) then {
				FW_EndStats = FW_EndStats + "<br/><br/><br/>";
			};
		};

		publicVariable "FW_EndStats";

	};

	FW_MissionEnded = true;

	if (typeName (_this select 0) == "STRING") exitWith {

		[[_this select 0, _this select 1], "BIS_fnc_endMission"] call BIS_fnc_MP;
		//[_this select 0, _this select 1] call BIS_fnc_endMission;

	};

	if (typeName (_this select 0) == "ARRAY") exitWith {

		{

			[[_x select 1, _x select 2], "BIS_fnc_endMission", _x select 0] call BIS_fnc_MP;

		} forEach _this;

		//_temp = _this select 0;

		//[_temp select 1, _temp select 2] call BIS_fnc_endMission;

	};

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

//FNC_SpectateCheck() displays the appropriate message when the player dies
FNC_SpectateCheck = {

	if (FW_RespawnTickets > 0) then {

		titleText ["You are dead.\nRespawning...", "BLACK", 0.2];

	} else {

		titleText ["You are dead.\nEntering spectator mode...", "BLACK", 0.2];

	};
};

//FNC_SpectatePrep() checks and handles if the player should respawn or begin spectating
FNC_SpectatePrep = {

	private ["_respawnName", "_respawnPoint", "_text", "_loadout"];

	if (FW_RespawnTickets > 0) then {

		_respawnName = toLower(format ["fw_%1_respawn", side player]);
		_respawnPoint = missionNamespace getVariable [_respawnName, objNull];

		_loadout = (player getVariable ["FW_Loadout", ""]);

		if (_loadout != "") then {

			[player, _loadout] call FNC_GearScript;

		};

		if (!isNull(_respawnPoint)) then {

			player setPos getPosATL _respawnPoint;

		};

		FW_RespawnTickets = FW_RespawnTickets - 1;

		_text = "respawns left";

		if (FW_RespawnTickets == 1) then {

			_text = "respawn left";

		};

		titleText ["You are dead.\nRespawning...", "BLACK IN", 0.2];

		cutText [format ['%1 %2', FW_RespawnTickets, _text], 'PLAIN DOWN'];

		player setVariable ["FW_Body", player, true];

	} else {

		player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead

		player setCaptive true;
		player allowdamage false;

		removeHeadgear player;
		removeGoggles player;
		removeVest player;
		removeBackpack player;
		removeUniform player;
		removeAllWeapons player;
		removeAllAssignedItems player;

		player addWeapon "itemMap";

		player setPos [0, 0, 0];
		[player] join grpNull;

		hideObjectGlobal player;

		if (!(player getVariable ["FW_Spectating", false])) then {

			player setVariable ["FW_Spectating", true, true];

			[true] call acre_api_fnc_setSpectator;
			"" execVM "core\spectate.sqf";


		} else {

			titleText ["You are dead.\nEntering spectator mode...", "BLACK IN", 0.2];

		};
	};
};
