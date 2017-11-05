HZ_fnc_wreckRoads = compile preprocessfilelinenumbers "HZ\HZ_fnc_wreckRoads.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

HZ_fnc_getClosest = {
	_shortest = 9999;
	_closestDude = "";
	{
		if ( side _x == west && ((tank distance _x) < _shortest)) then {
			_shortest = (tank distance _x);
			_closestDude = _x;
		};
	} foreach allunits;
	_closestDude;
};


[] spawn {
	sleep 2;
	if (side player == east) then {
		[player, [2,1]] call plank_api_fnc_forceAddFortifications;
	};
};

if (isServer) then {
	
	
	/* WRECKS ON THE ROADS */
	DEBUG = false;
	wrecks = [];

	if (DEBUG) then {
		i = 0;
		{
			_markerstr = createMarker [format ["mark%1",i],getpos _x];
			_markerstr setMarkerShape "ICON";
			_markerstr setMarkerType "hd_dot";
			i=i+1;
		} foreach wrecks;
	};

	[[wreckArea,50,30,true,true]] call HZ_fnc_wreckRoads;

		
	
	/* FLY BY AIRCRAFT */
	[] spawn {
		_aircraft = ["RHS_A10","RHS_MELB_H6M","RHS_UH60M_ESSS2","RHS_CH_47F","RHS_AH64D_wd"];
		_starts = [astart,bstart,cstart];
		_ends = [aend,bend,cend];
		while {true} do {
			_chosenAircraft = _aircraft call BIS_fnc_selectRandom;
			_chosenStart = _starts call BIS_fnc_selectRandom;
			_chosenEnd = _ends call BIS_fnc_selectRandom;
			ambFlyby1 = [_chosenStart modelToWorld [5,-5,0], _chosenEnd modelToWorld [5,-5,0], 280, "LIMITED", _chosenAircraft, WEST] call BIS_fnc_ambientFlyBy;
			ambFlyby2 = [_chosenStart modelToWorld [-55,55,0], _chosenEnd modelToWorld [-55,55,0], 280, "LIMITED", _chosenAircraft, WEST] call BIS_fnc_ambientFlyBy;

			sleep 200 + random 100;
		};
	};
	
	/* EXPLOSIONS AROUND THE AREA */
	[] spawn {
		_possibleExplosions = ["Bomb_03_F","Bomb_04_F","R_60mm_HE","R_80mm_HE","HelicopterExploSmall","Bo_Mk82"];
		_center = [6295.74,10240.9,0];
		while {true} do {
			_randX = (320 - (random 640));
			_randY = (320 - (random 640));
			_chosenExplosion = _possibleExplosions call BIS_fnc_selectRandom;
			_boom = _chosenExplosion createVehicle [(_center select 0) + _randX, (_center select 1) + _randY, 0];
			sleep 5 + random 40;
		};
	};
	
	/* ENEMY CONSTANT SPAWN OH JEEZ */
	[] spawn {
		spawnPoses = [[5650.03,10353.6,0],[5854.7,10174,0]];
		enemyCount = 0;
		while {true} do {
			enemyCount = {alive _x && side _x == independent} count allunits;
			if (enemyCount < 20) then {

				chosenSpawn = spawnPoses call BIS_fnc_selectRandom;
				_tempGroup = createGroup independent;
				_classnames = ["LOP_UA_Infantry_AT_Asst","LOP_UA_Infantry_Corpsman","LOP_UA_Infantry_GL","LOP_UA_Infantry_AT","LOP_UA_Infantry_Engineer","LOP_UA_Infantry_Rifleman_2","LOP_UA_Infantry_Rifleman","LOP_UA_Infantry_Rifleman_3","LOP_UA_Infantry_Marksman","LOP_UA_Infantry_MG_Asst","LOP_UA_Infantry_SL","LOP_UA_Infantry_TL","LOP_UA_Infantry_MG","LOP_UA_Officer"];
				for "_i" from 0 to 6 do
				{
					_finalSpawn = [chosenSpawn, 1, 20, 0, 0, 0.7, 0, [], [[], chosenSpawn]] call BIS_fnc_findSafePos;
					_chosenClass = _classnames call BIS_fnc_selectRandom;
					_newDuder = _tempGroup createUnit [_chosenClass, _finalSpawn, [], 0, "FORM"];
					_newDuder setpos _finalSpawn;
					_newDuder call FNC_TrackUnit;
					sleep 2;
				}; //for all units
				_tempGroup spawn {
					while {alive (leader _this)} do {
						sleep 60;
						//_avgLoc = getpos ([] call HZ_fnc_getClosest); 
						_avgLoc = getpos tank;
						_newHuntLoc = [(_avgLoc select 0) + (random 20 - 10),(_avgLoc select 1) + (random 20 - 10),0];
						_this addWaypoint [_newHuntLoc,0];
						[_this,0] setWaypointType "SAD";
						[_this,0] setWaypointCombatMode "RED";
						{_x domove _newHuntLoc} foreach units _this;
						sleep 60;
					};
				}; //end group hunting spawn
			}; //end if under 20
			sleep 10;
		}; //infinite loop
	}; //big spawn
}; //only server