//[house,5,2] call HZ_fnc_GarrisonHouse;
// houze, count, randomadd

_house = _this select 0;
_posArray = _this select 1;
_count = _this select 2;
_randAdd = _this select 3;

if !(isNull _house) then {
	[_house,_posArray,_count,_randAdd] spawn {
		_chosenHouse = _this select 0;
		_posArray = _this select 1; 
		_unitCount = _this select 2; 
		_randAdd = _this select 3;
		
		_loadouts = ["I_SL","I_FTL","I_MG","I_RPG","I_RPGA","I_RAT","I_RIF","I_MED","I_MARK"];
		//_faces = ["AfricanHead_03","AfricanHead_02","TanoanHead_A3_02","TanoanHead_A3_03","TanoanHead_A3_04","TanoanHead_A3_05","TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_08"];
		
		_tempGroup = createGroup independent;
		for "_i" from 0 to (_unitCount + floor(random _randAdd)) do
		{
			if (count _posArray == 0) exitWith {};
			_chosenPos = _posArray call BIS_fnc_selectRandom;
			_posArray = _posArray - [_chosenPos];
			
			_chosenLoadout = _loadouts call BIS_fnc_selectRandom;
			//_chosenFace = _faces call BIS_fnc_selectRandom;
			//_chosenDuder = _classnames call BIS_fnc_selectRandom;
			
			_newDuder = _tempGroup createUnit ["LOP_ISTS_Infantry_Rifleman", _chosenpos, [], 0, "FORM"];
			[_newDuder,_chosenLoadout] call FNC_GearScript;
			_newDuder setpos _chosenPos;
			if (random 1 > 0.20) then {
					dostop _newDuder;
			};
			_newDuder call FNC_TrackUnit;
			//_newDuder setFace _chosenFace;
			_newDuder setFormDir (_chosenHouse getRelDir _newDuder) + (getdir _chosenHouse);
			_newDuder setdir (_chosenHouse getRelDir _newDuder) + (getdir _chosenHouse);
			
			garrisonUnits = garrisonUnits + [_newDuder];
		};
		
		
	};

};