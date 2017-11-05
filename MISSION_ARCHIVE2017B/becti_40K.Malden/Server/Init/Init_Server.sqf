//todo: Kerberos Tracker -> perma track main infos with clients UID (teamkills, kills, hq killed (ff/no ff)).

//--- Create a resistance center
createCenter resistance;
resistance setFriend [west, 0];
resistance setFriend [east, 0];

CTI_SE_FNC_AddScore = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AddScore.sqf";
CTI_SE_FNC_AI_PurchaseSquad = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AI_PurchaseSquad.sqf";
CTI_SE_FNC_AttemptDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptDelegation.sqf";
CTI_SE_FNC_BuildStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildStructure.sqf";
CTI_SE_FNC_BuildDefense = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildDefense.sqf";
CTI_SE_FNC_CalcAlignPosDir = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CalcAlignPosDir.sqf";
CTI_SE_FNC_CreateWorker = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CreateWorker.sqf";
CTI_SE_FNC_HandleAIPurchase = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleAIPurchase.sqf";
CTI_SE_FNC_HandleEmptyVehicle = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
CTI_SE_FNC_HandleHQDeployment = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleHQDeployment.sqf";
CTI_SE_FNC_HandleStaticDefenses = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleStaticDefenses.sqf";
CTI_SE_FNC_HandleStructureConstruction = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleStructureConstruction.sqf";
CTI_SE_FNC_InitializeGroup = compileFinal preprocessFileLineNumbers "Server\Functions\Server_InitializeGroup.sqf";
CTI_SE_FNC_InitializeStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_InitializeStructure.sqf";
CTI_SE_FNC_ManageTownDefenses = Compile preprocessFileLineNumbers "Server\Functions\Server_ManageTownDefenses.sqf";
CTI_SE_FNC_NoobLogger = compileFinal preprocessFileLineNumbers "Server\Functions\Server_NoobLogger.sqf";
CTI_SE_FNC_NoobLoggerEnd = compileFinal preprocessFileLineNumbers "Server\Functions\Server_NoobLoggerEnd.sqf";
CTI_SE_FNC_ObservateEnvironment = compileFinal preprocessFileLineNumbers "Server\Functions\Server_ObservateEnvironment.sqf";
CTI_SE_FNC_OperateTownDefensesUnits = Compile preprocessFileLineNumbers "Server\Functions\Server_OperateTownDefensesUnits.sqf";
CTI_SE_FNC_OnBuildingDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingDestroyed.sqf";
CTI_SE_FNC_OnBuildingHandleDamage = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHandleDamage.sqf";
CTI_SE_FNC_OnBuildingHandleVirtualDamage = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHandleVirtualDamage.sqf";
CTI_SE_FNC_OnBuildingHit = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHit.sqf";
CTI_SE_FNC_OnClientPurchase = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchase.sqf";
CTI_SE_FNC_OnClientPurchaseCancelled = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseCancelled.sqf";
CTI_SE_FNC_OnClientPurchaseComplete = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseComplete.sqf";
CTI_SE_FNC_OnDefenseDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnDefenseDestroyed.sqf";
CTI_SE_FNC_OnHQDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnHQDestroyed.sqf";
CTI_SE_FNC_OnTownCaptured = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownCaptured.sqf";
CTI_SE_FNC_RepairHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_RepairHQ.sqf";
CTI_SE_FNC_RequestCommanderVote = compileFinal preprocessFileLineNumbers "Server\Functions\Server_RequestCommanderVote.sqf";
CTI_SE_FNC_SpawnTownDefense = Compile preprocessFileLineNumbers "Server\Functions\Server_SpawnTownDefense.sqf";
CTI_SE_FNC_SpawnTownOccupation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownOccupation.sqf";
CTI_SE_FNC_SpawnTownResistance = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownResistance.sqf";
CTI_SE_FNC_StartFactoryQueue = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartFactoryQueue.sqf";
CTI_SE_FNC_StartUpgrade = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartUpgrade.sqf";
CTI_SE_FNC_TrashObject = compileFinal preprocessFileLineNumbers "Server\Functions\Server_TrashObject.sqf";
CTI_SE_FNC_VoteForCommander = compileFinal preprocessFileLineNumbers "Server\Functions\Server_VoteForCommander.sqf";

call compile preprocessFileLineNumbers "Server\Init\Init_PublicVariables.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_RepairTruck.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateAI.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateCommander.sqf";
call compile preprocessFileLineNumbers "Server\Functions\Server_TownMortars.sqf";

execVM "Server\Init\Init_Prison.sqf";

//--- Get the starting locations.
_startup_locations = [];
for '_i' from 0 to 30 do {
	_location = getMarkerPos format ["cti-spawn%1", _i];
	if (_location select 0 == 0 && _location select 1 == 0) exitWith {};
	_startup_locations pushBack _location;
};

//--- Select whether the spawn restriction is enabled or not.
if ((missionNamespace getVariable "CTI_BASE_START_TOWN") > 0) then {
	waitUntil {!isNil 'CTI_InitTowns'};
	_adjusted_positions = [];
	{
		_town = _x;
		{ 
			_range = _x distance _town;
			if (_range <= 2500 && !(_x in _adjusted_positions)) then {
				_adjusted_positions = _adjusted_positions + [_x];
			};
		} forEach _startup_locations;

	} forEach CTI_Towns;
	if (count _adjusted_positions >= 2) then {_startup_locations = _adjusted_positions};
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Init\Init_Server.sqf", Format ["Spawn locations were refined [%1].", count _startup_locations]] Call CTI_CO_FNC_Log};
};

//--- Place both sides.
_range = missionNamespace getVariable "CTI_BASE_STARTUP_PLACEMENT";

_westLocation = getMarkerPos "cti-spawn0";
_eastLocation = getMarkerPos "cti-spawn0";

_attempts = 0;
_total = count _startup_locations;

while {_eastLocation distance _westLocation < _range && _attempts <= 500} do {
	_eastLocation = _startup_locations select floor(random _total);
	_westLocation = _startup_locations select floor(random _total);
	_attempts = _attempts + 1;
};

if (_attempts >= 500) then {
	_westLocation = getMarkerPos "cti-spawn0";//N
	_eastLocation = getMarkerPos "cti-spawn1";//S
};

{
	_side = _x select 0;
	_logic = _x select 1;
	_startPos = _x select 2;
	_sideID = _side call CTI_CO_FNC_GetSideID;
	
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _startPos, 0, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
	_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
	if (CTI_BASE_NOOBPROTECTION == 1) then {
		_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; //--- You want that on public
	};
	
	//--- Generic per-logic variables
	_logic setVariable ["cti_hq", _hq, true];
	_logic setVariable ["cti_hq_deployed", false, true];
	_logic setVariable ["cti_hq_repair_count", 1, true];
	_logic setVariable ["cti_structures_wip", [], true];
	_logic setVariable ["cti_structures", [], true];
	_logic setVariable ["cti_structures_areas", [], true];
	_logic setVariable ["cti_structures_lasthit", -600];
	_logic setVariable ["cti_start_pos", _startPos, true];
	_logic setVariable ["cti_worker_queue", false, true];
	_logic setVariable ["cti_workers", [], true];
	_logic setVariable ["cti_commander", grpNull, true];
	_logic setVariable ["cti_ai_commander", false];
	_logic setVariable ["cti_commander_funds", missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1_COMMANDER", _side], true];
	_logic setVariable ["cti_pool_award", missionNamespace getVariable format ["CTI_ECONOMY_POOL_AWARD_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_pool_resources", missionNamespace getVariable format ["CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_salvagers", [], true];
	_logic setVariable ["cti_spotted_units", []];
	_logic setVariable ["cti_spotted_structures", []];
	_logic setVariable ["cti_votetime", missionNamespace getVariable "CTI_GAMEPLAY_VOTE_TIME", true];

	//--- Parameters specific.
	if ((missionNamespace getVariable "CTI_ECONOMY_CURRENCY_SYSTEM") == 0) then {_logic setVariable ["cti_supply", missionNamespace getVariable Format ["CTI_ECONOMY_STARTUP_SUPPLY_%1", _side], true]};
	
	_upgrades = [];
	for '_i' from 1 to count(missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) do { _upgrades pushBack 0 };
	_logic setVariable ["cti_upgrades", _upgrades, true];
	_logic setVariable ["cti_upgrade", -1, true];
	
	//--- Create the defensive teams if needed
	if (CTI_BASE_DEFENSES_AUTO_LIMIT > 0) then {
		_defense_team = createGroup _side;
		_defense_team setGroupID ["Defense Team"];
		_defense_team setVariable ["cti_gc_noremove", true];
		_logic setVariable ["cti_defensive_team", _defense_team];
	};
	
	//--- Create the AI commander team
	_commander_team = createGroup _side;
	_commander_team setGroupID ["Commander Team"];
	_commander_team setVariable ["cti_gc_noremove", true];
	_logic setVariable ["cti_commander_team", _commander_team];
	
	//--- Add FOB if needed
	if (CTI_BASE_FOB_MAX > 0) then {_logic setVariable ["cti_fobs", [], true]};
	
	//--- Startup vehicles
	/*{
		_model = _x select 0;
		_equipment = _x select 1;
		_var = missionNameSpace getVariable _model;
		_script = _var select CTI_UNIT_SCRIPTS;
		
		_vehicle = [_model, _startPos, 0, _side, false, true, true] call CTI_CO_FNC_CreateVehicle;
		[_vehicle, getPos _hq, 45, 60, true, false, true] call CTI_CO_FNC_PlaceNear;
		[_vehicle] spawn CTI_SE_FNC_HandleEmptyVehicle;
		if (count _equipment > 0) then {[_vehicle, _equipment] call CTI_CO_FNC_EquipVehicleCargoSpace};
		if (_script != "" && alive _vehicle) then {
			[_vehicle, _side, _script, ""] spawn CTI_CO_FNC_InitializeCustomVehicle;
		};
	} forEach (missionNamespace getVariable format["CTI_%1_Vehicles_Startup", _side]);
	*/
	//--- Handle the Team
	_teams = [];
	_totalTeams = count synchronizedObjects _logic;
	_processed = 0;
	switch (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED") do {
		case 1: {_totalTeams = round(_totalTeams * 0.25)};
		case 2: {_totalTeams = round(_totalTeams * 0.5)};
		case 3: {_totalTeams = round(_totalTeams * 0.75)};
		default {};
	};

	{
		if !(isNil '_x') then {
			if (_x isKindOf "Man") then {
				_group = group _x;
				_teams pushback _group;
				[_group, _side] call CTI_SE_FNC_InitializeGroup;
				
				_group setVariable ["cti_vote", -1, true];
				
				[leader _group, missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", _side]] call CTI_CO_FNC_EquipUnit;
				
				if (!isPlayer leader _group && _processed < _totalTeams) then {
					_processed = _processed + 1;
					if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" > 0) then { //--- Wait for the player to be "ready"
						_group setVariable ["cti_ai_active", true, true];
						(leader _group) setPos ([_startPos, 8, 30] call CTI_CO_FNC_GetRandomPosition);
						leader _group addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
						if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") == 0) then {leader _group enableFatigue false}; //--- Disable the unit's fatigue
						
						[_group, _side, _logic] spawn {
							_group = _this select 0;
							_side = _this select 1;
							_logic = _this select 2;
							
							if (isMultiplayer) then { sleep 20 };
							
							//--- AI Teams
							sleep (random 5); //--- Differ each threads.
							if (isNil {_group getVariable "cti_aifsm_handled"}) then {
								[_group, _side] execFSM "Server\FSM\update_ai.fsm";
							};
						};
					};
				};
			};
		};
	} forEach (synchronizedObjects _logic);
	
	_logic setVariable ["cti_teams", _teams, true];
	
} forEach [[west, CTI_WEST, _westLocation], [east, CTI_EAST, _eastLocation]];

CTI_Init_Server = true;

//--- Town starting mode.
if ((missionNamespace getVariable "CTI_TOWNS_STARTING_MODE") > 0 || (missionNamespace getVariable "CTI_TOWNS_PATROLS") > 0) then {[] Call Compile preprocessFile "Server\Init\Init_Locations.sqf"} else {CTI_Init_TownMode = true};

//--- Towns init thread
0 spawn {
	waitUntil {!isNil 'CTI_InitTowns'};
	
	execFSM "Server\FSM\update_garbage_collector.fsm";
	execFSM "Server\FSM\update_resources.fsm";
	execFSM "Server\FSM\update_victory.fsm";
	
	//--- Static defenses groups in main towns.
	{
		missionNamespace setVariable [Format ["CTI_%1_DefenseTeam", _x], createGroup _x];
		(missionNamespace getVariable Format ["CTI_%1_DefenseTeam", _x]) setVariable ["cti_gc_noremove", true];
	} forEach [west,east,resistance];

};

//--- Set time and Date.
[] Spawn {
	waitUntil {time > 0}; //--- Await for the mission to start / JIP.
	_hour = missionNamespace getVariable "CTI_ENVIRONMENT_STARTING_HOUR";
	_month = missionNamespace getVariable "CTI_ENVIRONMENT_STARTING_MONTH";
	_daytime = [6,7,8,9,10,11,12,13,14,15,16,17];
	_nighttime = [18,19,20,21,22,23,0,1,2,3,4,5];
	
	if (_hour > 23) then {
		switch (_hour) do {
			case 24: {_hour = _daytime select (floor (random count _daytime))}; //--- Daytime
			case 25: {_hour = _nighttime select (floor (random count _nighttime))}; //--- Nighttime
			case 26: {_hour = floor (random 23)}; //--- Random
		};
	};
	
	if (_month == 13) then {_month = floor (random 11)+1};
	
	setDate [(date select 0),_month,(date select 2),_hour,(date select 4)]; //--- Apply the date and time.
};

if (CTI_ENVIRONMENT_WEATHER_FAST > 0) then { execFSM "Server\FSM\weather_fast.fsm" };

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Init\Init_Server.sqf", Format ["Server initialization ended at [%1]", time]] Call CTI_CO_FNC_Log};

//--- Waiting until that the game is launched.
waitUntil {time > 0};

{_x Spawn CTI_SE_FNC_VoteForCommander} forEach [west, east];
