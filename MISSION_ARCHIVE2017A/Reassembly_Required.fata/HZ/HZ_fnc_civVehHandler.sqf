_towns = _this select 0;

{
	_town=(_x select 0);
	_roadPosArray=(_x select 5);
	
	if (random 1 < vehSpawnChance) then {
		_fooGroup = createGroup civilian;
		
		_chosenRoadSegment = _roadPosArray call BIS_fnc_selectRandom;
		_chosenCar = civCarPool call BIS_fnc_selectRandom;
		_chosenPos = (getpos _chosenRoadSegment);
		_newCar = _chosenCar createVehicle _chosenPos;
		_newCar setVehicleLock "LOCKEDPLAYER";
		
		_newDuder = _fooGroup createUnit ["LOP_Tak_Civ_Man_06", _chosenPos,[], 0, "FORM"];
		_newDuder call FNC_TrackUnit;
		[_newDuder] call HZ_fnc_civGear;
		_newDuder moveinDriver _newCar;
		
		_fooGroup setBehaviour "SAFE";
		
		if (random 1 < vehRadioChance) then {
			
			[_newCar] spawn {
				_newCar = _this select 0;
				while {true} do {
					_chosenSong = radioSongs call BIS_fnc_selectRandom;
					[_newCar, _chosenSong,100] call CBA_fnc_globalSay3d;
					sleep 20;
				};
			};
			
		};
		
		[[_newDuder,_fooGroup,_towns]] spawn {
			_newDuder = (_this select 0) select 0;
			_fooGroup = (_this select 0) select 1;
			_towns = (_this select 0) select 2;
			while {alive _newDuder} do {
				_chosenTown = _towns call BIS_fnc_selectRandom;
				_chosenRoad = (_chosenTown select 5) call BIS_fnc_selectRandom;
				
				_wp = _fooGroup addWaypoint [(getpos _chosenRoad), 0];
				
				sleep 60;
				
				//waitUntil {(_newDuder distance (getWPPos[_fooGroup,0])) < 20};
			}; //end while
		};//end spawn block
	};//end random chance
	
} foreach _towns;