
//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

//ai
HZ_fnc_huntSide = compile preprocessfilelinenumbers "HZ\ai\HZ_fnc_huntSide.sqf";


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

if (isServer) then {
	
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