//25 mikes til extract

Targets = [[tower1, tower1_real], [tower2, tower2_real], [solar_tower, solar_tower_real]];

FNC_FireAtBuilding = {

	private ["_target", "_tries", "_veh"];

	_target = Targets call BIS_fnc_selectRandom;
	_tries = 0;

	while {!alive (_target select 1) && _tries < 15} do {
		_target = Targets call BIS_fnc_selectRandom;
		_tries = _tries + 1;
	};

	_target = _target select 0;
	_veh = _this;

	gunner _veh lookAt _target;

	sleep(2.5);

	gunner _veh fireAtTarget [_target, "cannon_120mm_long"];

};

FNC_AddCount = {

	["AAF", 3, ((["AAF", 3] call FNC_GetTeamVariable) + _this)] call FNC_SetTeamVariable;
	["AAF", 4, ((["AAF", 4] call FNC_GetTeamVariable) + _this)] call FNC_SetTeamVariable;

};

[] spawn {

	sleep(420);

	mortar1 doArtilleryFire [markerPos "mortar1", "8Rnd_82mm_Mo_shells", 1];
	sleep(5);
	mortar1 doArtilleryFire [markerPos "mortar4", "8Rnd_82mm_Mo_shells", 2];
	sleep(5);
	mortar1 doArtilleryFire [markerPos "mortar2", "8Rnd_82mm_Mo_shells", 2];

	mortar2 doArtilleryFire [markerPos "mortar5", "8Rnd_82mm_Mo_shells", 2];
	sleep(5);
	mortar3 doArtilleryFire [markerPos "mortar3", "8Rnd_82mm_Mo_shells", 3];
	sleep(5);
	mortar3 doArtilleryFire [markerPos "mortar1", "8Rnd_82mm_Mo_shells", 2];

	Ind_Group1 = [getMarkerPos "inf_spawn2", independent, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")] call BIS_fnc_spawnGroup;
	Ind_Group2 = [getMarkerPos "inf_spawn3", independent, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad_Weapons")] call BIS_fnc_spawnGroup;
	Ind_Group3 = [getMarkerPos "inf_spawn1", independent, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad_Weapons")] call BIS_fnc_spawnGroup;

	(count units Ind_Group1) call FNC_AddCount;
	(count units Ind_Group2) call FNC_AddCount;
	(count units Ind_Group3) call FNC_AddCount;

	Ind_Group1 allowFleeing 0;
	Ind_Group2 allowFleeing 0;
	Ind_Group3 allowFleeing 0;

	private "_wp";

	_wp = Ind_Group1 addWaypoint [getMarkerPos "inf_wp2", 25];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointCombatMode "GREEN";
	_wp setWaypointbehaviour "AWARE";

	_wp = Ind_Group1 addWaypoint [getMarkerPos "inf_wpCenter", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointCombatMode "RED";

	_wp = Ind_Group2 addWaypoint [getMarkerPos "inf_wpCenter", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	_wp = Ind_Group3 addWaypoint [getMarkerPos "inf_wpCenter", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	sleep(160);

	APC = ([getMarkerPos "armor_spawn3", 230, "I_APC_Wheeled_03_cannon_F", independent] call BIS_fnc_spawnVehicle) select 0;
	APC allowFleeing 0;
	APC call FNC_TrackVehicle;

	_wp = (group driver APC) addWaypoint [getMarkerPos "armor_wp3", 5];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	sleep(300);

	Tank1 = ([getMarkerPos "armor_spawn1", 150, "I_MBT_03_cannon_F", independent] call BIS_fnc_spawnVehicle) select 0;
	Tank1 removeMagazinesTurret ["28Rnd_120mm_APFSDS_shells_Tracer_Yellow", [0]];
	Tank1 removeMagazinesTurret ["14Rnd_120mm_HE_shells_Tracer_Yellow", [0]];
	Tank1 addMagazineTurret ["14Rnd_120mm_HE_shells_Tracer_Yellow", [0]];

	(group driver Tank1) allowFleeing 0;
	Tank1 call FNC_TrackVehicle;

	_wp = (group driver Tank1) addWaypoint [getMarkerPos "armor_fire1", 5];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointStatements ["true", "if (isServer) then {[] spawn { Tank1 setFuel 0; sleep(3.5); while {!isNull (gunner Tank1) && alive (gunner Tank1) && (alive tower1_real || alive tower2_real || alive solar_tower_real)} do {Tank1 call FNC_FireAtBuilding; sleep 30;}; Tank1 setFuel 1};};"];

	_wp = (group driver Tank1) addWaypoint [getMarkerPos "inf_wpCenter", 100];
	_wp setWaypointType "MOVE";
	_wp setWaypointbehaviour "AWARE";

	sleep(100);

	Mrap1 = ([getMarkerPos "inf_spawn2", 100, "I_MRAP_03_hmg_F", independent] call BIS_fnc_spawnVehicle) select 0;
	Mrap1 allowFleeing 0;
	Mrap1 call FNC_TrackVehicle;

	_wp = (group driver Mrap1) addWaypoint [getMarkerPos "mrap_wp2", 15];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	sleep(120);

	Ind_Group4 = [getMarkerPos "armor_spawn1", independent, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad_Weapons")] call BIS_fnc_spawnGroup;
	Ind_Group4 allowFleeing 0;

	(count units Ind_Group4) call FNC_AddCount;

	_wp = Ind_Group4 addWaypoint [getMarkerPos "inf_wpCenter", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "LINE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointbehaviour "AWARE";

	sleep(160);

	APC = ([getMarkerPos "armor_spawn4", 230, "I_APC_Wheeled_03_cannon_F", independent] call BIS_fnc_spawnVehicle) select 0;
	APC allowFleeing 0;
	APC call FNC_TrackVehicle;

	_wp = (group driver APC) addWaypoint [getMarkerPos "armor_wp4", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	sleep(120);

	Tank2 = ([getMarkerPos "armor_spawn2", 150, "I_MBT_03_cannon_F", independent] call BIS_fnc_spawnVehicle) select 0;
	Tank2 removeMagazinesTurret ["28Rnd_120mm_APFSDS_shells_Tracer_Yellow", [0]];
	Tank2 removeMagazinesTurret ["14Rnd_120mm_HE_shells_Tracer_Yellow", [0]];
	Tank2 addMagazineTurret ["14Rnd_120mm_HE_shells_Tracer_Yellow", [0]];

	(group driver Tank2) allowFleeing 0;
	Tank2 call FNC_TrackVehicle;

	_wp = (group driver Tank2) addWaypoint [getMarkerPos "armor_fire2", 5];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointStatements ["true", "if (isServer) then {[] spawn { Tank2 setFuel 0; sleep(3.5); while {!isNull (gunner Tank2) && alive (gunner Tank2) && (alive tower1_real || alive tower2_real || alive solar_tower_real)} do {Tank2 call FNC_FireAtBuilding; sleep 30;}; Tank2 setFuel 1};};"];

	_wp = (group driver Tank2) addWaypoint [getMarkerPos "inf_wpCenter", 100];
	_wp setWaypointType "MOVE";
	_wp setWaypointbehaviour "AWARE";

	sleep(160);

	Ind_Group5 = [getMarkerPos "inf_spawn1", independent, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfTeam")] call BIS_fnc_spawnGroup;
	Ind_Group5 allowFleeing 0;

	(count units Ind_Group5) call FNC_AddCount;

	_wp = Ind_Group5 addWaypoint [getMarkerPos "inf_wpCenter", 50];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "LINE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointbehaviour "AWARE";

	Mrap2 = ([getMarkerPos "armor_spawn3", 230, "I_MRAP_03_hmg_F", independent] call BIS_fnc_spawnVehicle) select 0;
	Mrap2 allowFleeing 0;
	Mrap2 call FNC_TrackVehicle;

	_wp = (group driver Mrap2) addWaypoint [getMarkerPos "armor_wp3", 15];
	_wp setWaypointType "MOVE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	["ETA5", "playSound"] call BIS_fnc_MP;

	sleep(240);

	["ETA1", "playSound"] call BIS_fnc_MP;
	["LeadTrack01_F_Heli", "playMusic"] call BIS_fnc_MP;

	heliA setPosASL [getMarkerPos "teleA" select 0, getMarkerPos "teleA" select 1, 15];
	heli1 setPosASL [getMarkerPos "tele1" select 0, getMarkerPos "tele1" select 1, 15];
	heli2 setPosASL [getMarkerPos "tele2" select 0, getMarkerPos "tele2" select 1, 15];

	_wp = (group driver heli1) addWaypoint [getPos pad1, 0];
	_wp setWaypointType "SCRIPTED";
	_wp setWaypointScript getText (configFile >> "CfgWaypoints" >> "A3" >> "Land" >> "file");
	_wp setWaypointbehaviour "CARELESS";
	_wp setWaypointCombatMode "BLUE";

	_wp = (group driver heli2) addWaypoint [getPos pad2, 0];
	_wp setWaypointType "SCRIPTED";
	_wp setWaypointScript getText (configFile >> "CfgWaypoints" >> "A3" >> "Land" >> "file");
	_wp setWaypointbehaviour "CARELESS";
	_wp setWaypointCombatMode "BLUE";

	_wp = (group driver heliA) addWaypoint [getMarkerPos "inf_wpCenter", 100];
	_wp setWaypointType "SAD";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointbehaviour "AWARE";

	while {true} do {
		private ["_total", "_inHeli"];

		_total = {(_x call FNC_Alive)} count playableUnits;
		_inHeli = {((_x in heli1) or (_x in heli2)) && _x call FNC_Alive} count playableUnits;

		if (_inHeli >= _total) exitWith {};

		sleep(5);
	};

	["DUSTOFF", "playSound"] call BIS_fnc_MP;

	_wp = (group driver heli1) addWaypoint [getMarkerPos "incoming", 100];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";

	sleep(5);

	_wp = (group driver heli2) addWaypoint [getMarkerPos "incoming", 100];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";

	sleep(30);

	["Extract", true] call FNC_EndMission;

};