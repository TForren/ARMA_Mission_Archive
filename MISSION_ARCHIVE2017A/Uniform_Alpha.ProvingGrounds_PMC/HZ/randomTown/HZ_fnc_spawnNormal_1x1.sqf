//[position,size,wallInfo,_dir] call HZ_fnc_spawnNormal_1x1
//[[0,0,0],_blockSize,[_up,_down,_left,_right],70]
// position: where to spawn the building
// size: how big is the block (int)
// wallInfo: Array of type of wall and length [classname,length];
// walls: booleans whether to include wall sides

_spawnPos = _this select 0;
_blockSize = _this select 1;
_wallInfo = _this select 2;
_dir = _this select 3;
 
_normalHouses = ["Land_HouseBlock_A1_ruins","Land_HouseBlock_A1_1_ruins","Land_HouseBlock_A2_ruins","Land_HouseBlock_A2_1_ruins","Land_HouseBlock_A3_ruins","Land_HouseBlock_B1_ruins","Land_HouseBlock_B2_ruins","Land_HouseBlock_B3_ruins","Land_HouseBlock_B4_ruins","Land_HouseBlock_B5_ruins","Land_HouseBlock_B6_ruins","Land_HouseBlock_C1_ruins","Land_HouseBlock_C4_ruins","Land_HouseBlock_C5_ruins","Land_HouseBlock_D2_ruins","Land_HouseBlock_D1_ruins","Land_HouseBlock_C3_ruins","Land_HouseBlock_C2_ruins"];
_chosenHouse = _normalHouses call BIS_fnc_selectRandom;

_dirKeeper = "Sign_Arrow_Direction_F" createvehicle _spawnPos;
_dirKeepers = _dirKeepers + [_dirKeeper];
_dirKeeper setDir _dir;
_dirKeeper setpos _spawnPos;
systemChat format ["_dir %1",_dir];
systemChat format ["arrowDir %1",getDir _dirKeeper];

_building = _chosenHouse createVehicle _spawnPos;
_building setDir _dir;
_building setpos [_spawnPos select 0,_spawnPos select 1, 0];

//random building rotation
if (random 1 > 0.5) then {
	_building setdir ((getDir _building) + 90);
};
buildings = buildings + [_building];
_building setvectorUp [0,0,1];

//=======WALLLLLLLLLLLS=======
//[_walls,length,origin,chance,noise]
_fnc_spawnWallSide = {
	_walls = _this select 0; //array
	_wallLength = _this select 1;
	_origin = _this select 2; //dirKeeper Object
	_chance = _this select 3;
	
	_wallInterval = (_blockSize / _wallLength);
	_wallCount = ceil (_wallInterval);
	_spawnPos = _origin modelToWorld [(_blockSize / 2) - (_wallLength/2),(_blockSize / 2), 0];
	for "_i" from 0 to _wallCount do
	{
		if (random 1 < _chance) then {
			_wallType = _walls select 0;
			if (random 1 > 0.9) then {
				_wallType = _walls select 1;
			};
			_wall = _wallType createvehicle _spawnPos;
			_wall setDir (getDir _origin);
			_wall setpos [_spawnPos select 0,_spawnPos select 1,0];
			_spawnPos = _wall modelToWorld [-_wallLength,0,0];
			//sleep 0.1; //tmp
		};
		
	};
};

_walls = ["Land_Wall_IndCnc_4_F","Land_Wall_IndCnc_4_D_F"];
_wallLength = 7.1;

//Up
if (_wallInfo select 0 == 1) then {
	//_dir = getDir _dirKeeper;
	[_walls,_wallLength,_dirKeeper,0.5] call _fnc_spawnWallSide;
};

//Down
if (_wallInfo select 1 == 1) then {
	_originalDir = (getDir _dirkeeper);
	_dirKeeper setDir ((getdir _dirKeeper) + 180);
	[_walls,_wallLength,_dirKeeper,0.5] call _fnc_spawnWallSide;
	_dirKeeper setDir _originalDir;
};

//Left
if (_wallInfo select 2 == 1) then {
	_originalDir = (getDir _dirkeeper);
	_dirKeeper setDir ((getdir _dirKeeper) - 90);
	[_walls,_wallLength,_dirKeeper,0.5] call _fnc_spawnWallSide;
	_dirKeeper setDir _originalDir;
};

//Right
if (_wallInfo select 3 == 1) then {
	_originalDir = (getDir _dirkeeper);
	_dirKeeper setDir ((getdir _dirKeeper) + 90);
	[_walls,_wallLength,_dirKeeper,0.5] call _fnc_spawnWallSide;
	_dirKeeper setDir _originalDir;
};

//============DEBRRRISSS=================
[_dirKeeper,(_blockSize/2),(_blockSize/2),6] call HZ_fnc_spawnDebris;

//return
_dirKeeper;