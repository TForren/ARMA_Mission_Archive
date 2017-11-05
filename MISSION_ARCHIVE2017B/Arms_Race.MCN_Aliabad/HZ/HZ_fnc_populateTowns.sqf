if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_params"];

_towns = _this select 0;
//_possibleCivs = [];

/* Iterate over all the towns
 * Single town format:
 * [town, civilians, vehicles, parked, [roads] ]
 *
*/
{
	_town=(_x select 0);
	_houses=(_x select 1);
	_civCount =(_x select 2);
	_vehCount =(_x select 3);
	_parkedVehCount =(_x select 4);
	_roadPosArray=(_x select 5);

	if (ambCivDebug) then {
		{ //Marking roads
			if (!isNil "_x") then {
				_txt=format["roadMkr%1",_x];
				_debugMkr=createMarker [_txt,getpos _x];
				_debugMkr setMarkerShape "ICON";
				//_debugMkr setMarkerType "hd_dot";
				_debugMkr setMarkerType "mil_dot";
			};
		} foreach _roadPosArray;	
	};
	{ //Iterate over all houses in the current town
	
		//House stuff
		if (ambCivDebug) then {
			if (!isNil "_x") then {
				_txt=format["houseMkr%1",_x];
				_debugMkr=createMarker [_txt,getpos _x];
				_debugMkr setMarkerShape "ICON";
				_debugMkr setMarkerType "mil_box";
				_debugMkr setMarkerColor "ColorBlue";
			};
		};
		
		/* holy fuck this shit is slow, probably never use
		//positions array
		_cnt = 0;
		_posarray = [];
		while {format ["%1", _x buildingpos _cnt] != "[0,0,0]" } do {
			_pos = _x buildingpos _cnt;		//select building position _cnt
			_posarray = _posarray + [_pos];		//add the position to the list
			_cnt = _cnt + 1;					//increment counter
			sleep 0.01;
		};
		*/
		_chosenPos = _x buildingpos round(random 2);
				
		//Separate from the # of civilians determined by HZ_fnc_prepTowns
		if (random 1 < civSpawnChance) then {
			_fooGroup = createGroup civilian;
			_newDuder = _fooGroup createUnit ["C_man_1", _chosenPos, [], 0, "FORM"];
			_newDuder disableAI "FSM";
			_newDuder setpos _chosenPos;
			[_newDuder] call HZ_fnc_civGear;
			//_newDuder setdir (_x getRelDir _newDuder) + (getdir _x); // They just.. look back no matter what..
			if (ambCivDebug) then {
			_txt=format["civMkr%1",_chosenPos];
			_debugMkr=createMarker [_txt,_chosenPos];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "mil_dot";
			_debugMkr setMarkerColor "ColorGreen";
			};
		};

	} foreach _houses;	
	
	_roadPosArray = _roadPosArray call BIS_fnc_arrayShuffle;
				
	for "_i" from 0 to _parkedVehCount do {
		if (random 1 < parkedVehSpawnChance) then { //randomize spawns
			_chosenCar = civCarPool call BIS_fnc_selectRandom;
			_roadSegment = (_roadPosArray select _i);
			_dir = getdir _roadSegment;
			_newCar = _chosenCar createVehicle (getpos _roadSegment);
			_newCar setdamage (random 0.6);
			_newCar setFuel (random 0.7);
			_newCar setVehicleLock "LOCKEDPLAYER";
			_relativePos = "Sign_Sphere25cm_F" createvehicle (getpos _roadSegment);
			_relativePos setpos (getpos _roadSegment);
			_relativePos setdir _dir;
			//if (random 1 > 0.5) then {_newCar setDir _dir;} else {_newCar setDir (_dir + 180);};
			_newCar attachto [_relativePos, [2.51,0,2]];
			detach _newCar;
			deletevehicle _relativePos;
		};
	};

	_townGroup = createGroup civilian;
	if (random 1 < pedestrianSpawnChance) then {
	_chosenPos = [(position _town select 0) + (random 20 -10),(position _town select 1) + (random 20 -10), 0];
		_newDuder = _townGroup createUnit ["C_man_1", _chosenPos,[], 0, "FORM"];
		_newDuder disableAI "FSM";
		[_newDuder] call HZ_fnc_civGear;
		if (ambCivDebug) then {
			_txt=format["pedestrianMkr%1",_chosenPos];
			_debugMkr=createMarker [_txt,_chosenPos];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "mil_dot";
			_debugMkr setMarkerColor "ColorOrange";
		};
	}; //end random chance
	_wp = _townGroup addWaypoint [[(position _town select 0) + (random 20 -10),
										(position _town select 1) + (random 20 -10), 0], 0];
	_wp setWaypointType "DISMISS";

} foreach _towns;
