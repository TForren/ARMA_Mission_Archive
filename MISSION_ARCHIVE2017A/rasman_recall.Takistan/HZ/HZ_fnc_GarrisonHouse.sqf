//[house,5,2] call HZ_fnc_GarrisonHouse;
// houze, count, randomadd

_house = _this select 0;
_count = _this select 1;
_randAdd = _this select 2;

if !(isNull _house) then {
	[_house,_count,_randAdd] spawn {
		_chosenHouse = _this select 0;
		_unitCount = _this select 1; 
		_randAdd = _this select 2;
		_cnt = 0;
		_posarray = [];
		while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
			_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
			_posarray = _posarray + [_pos];		//add the position to the list
			_cnt = _cnt + 1;					//increment counter
			sleep 0.01;
		};
		
		_loadouts = ["O_FTL","O_MG","O_RAT","O_RIF","O_MARK"];
		_guardAnims = ["STAND","KNEEL","WATCH","WATCH1","WATCH2"];
		
		for "_i" from 0 to (_unitCount + floor(random _randAdd)) do
		{
			if (count _posarray == 0) exitWith {};
			_chosenPos = _posarray call BIS_fnc_selectRandom;
			_posarray = _posarray - [_chosenPos];
			_tempGroup = createGroup east;
			_chosenLoadout = _loadouts call BIS_fnc_selectRandom;
			_newDuder = _tempGroup createUnit ["LOP_AM_OPF_Infantry_Rifleman", _chosenpos, [], 0, "FORM"];
			[_newDuder,_chosenLoadout] call FNC_GearScript;
			_newDuder setpos _chosenPos;
			_newDuder call FNC_TrackUnit;
			_newDuder setFormDir (_chosenHouse getRelDir _newDuder) + (getdir _chosenHouse);
			_newDuder setdir (_chosenHouse getRelDir _newDuder) + (getdir _chosenHouse);
			
			if ((random 1) <= 0.65) then {
				_chosenAnim = _guardAnims call BIS_fnc_selectRandom;
				//add a bit of delay to vary it up
				[_newDuder,_chosenAnim] spawn {
					sleep random 1;
					[_this select 0,_this select 1,"FULL",{behaviour _this == "COMBAT"}] remoteExec ["BIS_fnc_ambientAnimCombat", 2, true];
				};
			};
			garrisonUnits = garrisonUnits + [_newDuder];
		};
		
		
	};

};