HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgSideLoc.sqf";

if !(isServer) exitWith {};

blop = [] spawn {
	
	aircraft = ["uns_UH1D_m60", "UNS_AH1G_FFAR","uns_ch47_m60_army","uns_ch34_USMC_M60"];
	while {true} do {
		_chosenCraft = aircraft call BIS_fnc_selectRandom;
		_chosenDir = (random 360);
		flyOverCenter setdir _chosenDir;
		flyOverSpawn setpos (flyOverCenter modelToWorld [0,4185.47,0]);
		flyOverEnd setpos (flyOverCenter modelToWorld [0,-4185.47,0]);	
	
		switch (_chosenCraft) do {
			case "uns_UH1D_m60": {
				ambFlyby1 = [
					flyOverSpawn modelToWorld [0,0,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby2 = [
					flyOverSpawn modelToWorld [0,-100,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby3 = [
					flyOverSpawn modelToWorld [0,-200,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby4 = [
					flyOverSpawn modelToWorld [0,-300,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
			};	
			case "uns_ch47_m60_army": {
				ambFlyby1 = [
					flyOverSpawn modelToWorld [0,0,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby2 = [
					flyOverSpawn modelToWorld [0,-140,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby3 = [
					flyOverSpawn modelToWorld [0,-240,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby4 = [
					flyOverSpawn modelToWorld [0,-340,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
			};	
			case "UNS_AH1G_FFAR": {
				ambFlyby1 = [
					flyOverSpawn modelToWorld [0,0,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby2 = [
					flyOverSpawn modelToWorld [-100,-100,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
			};	
			case "uns_ch34_USMC_M60": {
				ambFlyby1 = [
					flyOverSpawn modelToWorld [0,0,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
				ambFlyby2 = [
					flyOverSpawn modelToWorld [0,-100,0], 
					flyOverEnd modelToWorld [0,0,0], 100, 
					"NORMAL", _chosenCraft, WEST
				] call BIS_fnc_ambientFlyBy;
			};	
			default {};
		};
		sleep 200 + random 60;
	};
};
/*
{
	_group = _x;
	_leader = (leader _group);
	_group setBehaviour "STEALTH";
	_group setCombatMode "GREEN";
	{
		_x setUnitPos "DOWN";
		_x setVariable ["acex_headless_blacklist", true];
		dostop _x;
	} foreach units _x;
	
} foreach [aham1,aham2,aham3,aham4];

*/

//excludeGroups = [bham3];

//activate the given group by running doFollow on leader and setting them to engage
//group call HZ_fnc_activateGroup;
HZ_fnc_activateGroup = {
	_group = _this;
	_leader = (leader _group);
	_group setBehaviour "AWARE";
	_group setCombatMode "RED";
	_group setFormation "LINE";
	
	{
		_x setUnitPos "UP";
		//if !(_group in excludeGroups) then {_x doFollow _leader};
		_x enableAI "ALL";
		_x setVariable ["acex_headless_blacklist",false];
	} foreach units _group;
	
	//if (_group in excludeGroups + [bham6,bham7,bham8,bham9]) exitwith {};
	while {alive _leader} do {
		_loc = [[west,false,[]]] call HZ_fnc_avgSideLoc;
		//_loc = [2562.31,5273.34,0];
		_wp = _group addWaypoint [_loc, 0];
		[_group, 0] setWaypointSpeed "FULL";
		[_group, 0] setWaypointType  "SAD";
		sleep 20;
	};
};


