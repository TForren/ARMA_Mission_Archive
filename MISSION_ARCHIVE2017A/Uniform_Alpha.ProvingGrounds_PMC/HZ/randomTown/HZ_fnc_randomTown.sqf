_this spawn {
//_blockSize = 32.27;
_blockSize = 35;
_roadWidth = 0.7;
_townTrig = _this;
_trigPosX = (getpos _townTrig select 0);
_trigPosY = (getpos _townTrig select 1);
_trigAreaX = (triggerArea _townTrig) select 0;
_trigAreaY = (triggerArea _townTrig) select 1;
_trigDir = (triggerArea _townTrig) select 2;
_blockCountX = floor ((_trigAreaX*2) / _blockSize);
_blockCountY = floor ((_trigAreaY*2) / _blockSize);
_grid = [];
_dirKeepers = [];

for "_i" from 0 to _blockCountX do
{
	_column = [];
	for "_i" from 0 to _blockCountY do
	{
		_column = _column + [0];
	};
	_grid = _grid + [_column];
	
};
//[wall,gridPos,grid]
//returns [1,1,1,1] walls to spawn
_fnc_evalWall = {
	_wallNum = _this select 0;
	_gridPos = _this select 1;
	_gridX = _gridPos select 0;
	_gridY = _gridPos select 1;
	_grid = _this select 2;
	_result = 0;
			// U D L R
			// 0 1 2 3
	switch (_wallNum) do {
		//Up
		case 0: {
			//Up-most case
			if (_gridY == 0) then {
				_result = 1;
			} else {
				//Not up-most
				_up = ((_grid select _gridX) select (_gridY - 1));
				if (_up == 0) then {_result = 1};
			};
		};//end up
		//Down
		case 1: {
			_down = ((_grid select _gridX) select (_gridY + 1));
			if (isNil "_down") then {_down = 0};
			if (_down == 0) then {_result = 1};	
		};//end down
		//Left
		case 2: {
			//left-most case
			if (_gridX == 0) then {
				_result = 1;
			} else {
				//Not down-most
				_left = (_grid select (_gridX - 1)) select _gridY;
				if (_left == 0) then {_result = 1};
			};			
		};//end left
		//right
		case 3: {
			_right = (_grid select (_gridX + 1)) select _gridY;	
			if (isNil "_right") then {_right = 0};
			if (_right == 0) then {_result = 1};				
		};//end right
	}; //end switch
	_result;
};

//[_worldPos,_gridPos,_limit]
//returns how many blocks to skip (only 1 if normal1x1, 2 if block, or how ever long the line is)
_fnc_spawnBlock = {
	_worldPos = _this select 0;
	_gridPos = _this select 1;
	_grid = _this select 2;
	_dir = _this select 3;
	_limit = _this select 4;
	_randomTypeSelection = floor (random 2);
	//_randomTypeSelection = 0; //tmp
	_result = [objNull,0];
	switch (_randomTypeSelection) do {

		//Normal 1x1
		case 0: {
			_up = [0,_gridPos,_grid] call _fnc_evalWall;
			_down = [1,_gridPos,_grid] call _fnc_evalWall;
			_left = [2,_gridPos,_grid] call _fnc_evalWall;
			_right = [3,_gridPos,_grid] call _fnc_evalWall;
			_wallStatus = [_up,_down,_left,_right];
			//systemchat format ["_wallStatus %1",_wallStatus];
			_result = [[_worldPos,_blockSize,_wallStatus,_dir] call HZ_fnc_spawnNormal_1x1, 0];
			(_grid select (_gridPos select 0)) set [(_gridPos select 1), 1]; //set grid space as taken
		};
		//1x1 Debris block
		case 1: {
			_randomDebris = floor(random 5) + 5;
			_result = [[_worldPos,_blockSize,_randomDebris,_dir] call HZ_fnc_spawnDebrisBlock_1x1, 0];
			(_grid select (_gridPos select 0)) set [(_gridPos select 1), 1]; //set grid space as taken
		};
		//Line 1xh
		case 2: {
			[[0,0,0],_blockSize,[1,1,1,1]] call HZ_fnc_spawnNormal_1x1;
		};
		//Block 2x2
		case 3: {
			[[0,0,0],_blockSize,[1,1,1,1]] call HZ_fnc_spawnNormal_1x1;
		};

	}; //end switch
	_result;
}; //end function_spawnBlock

//Get first pos from the top left corner of the trigger. next building pos are relative to this
_townOrigin = createvehicle ["Sign_Arrow_Direction_Yellow_F",[_trigPosX,_trigPosY,0], [],0,"CAN_COLLIDE"];
_townOrigin setDir _trigDir;
_dirKeepers = _dirKeepers + [_townOrigin];
_worldPos = _townOrigin modelToWorld [-_trigAreaX,_trigAreaY,0];

_originalY = (_trigPosY + _trigAreaY) - (_blockSize/2);

_columnCounter = 1;

_spawnResult = [objNull,0];

//Iterate over grid X
for "_i" from 0 to _blockCountX do
{
	systemchat format ["_columnCounter %1",_columnCounter];
	//skip "roads"
	if (_columnCounter % 3 == 0) then {
		systemchat "caught road!";
		_i = _i + 2;
		_worldPos = (_spawnResult select 0) modelToWorld [_blockSize * (1 + _roadWidth),_blockSize * _blockCountY,0];
		_columnCounter = _columnCounter + 1;
	} else {
		//check if > 0 to allow first iteration to be in the first column
		if (_i > 0) then {
			_worldPos = (_spawnResult select 0) modelToWorld [_blockSize,_blockSize * _blockCountY,0];
		};
	};

	//Iterate down grid Y
	for "_j" from 0 to _blockCountY do
	{
		_curGridPos = [_i,_j];
		
		_spawnResult = [_worldPos,_curGridPos,_grid,_trigDir,(_blockCountY - _j)] call _fnc_spawnBlock;
		_worldPos = (_spawnResult select 0) modelToWorld [0,-_blockSize,0];
		//skip value
		_j = _j + (_spawnResult select 1);
		//sleep 0.3; //tmp
	};
	
	_columnCounter = _columnCounter + 1;
};



{deletevehicle _x} foreach _dirKeepers;
}; //end spawn

//"Land_Wall_IndCnc_4_F" [5,0.133165]
//deletevehicle wall2;wall2 = "Land_Wall_IndCnc_4_F" createvehicle (getpos wall);wall2 setdir (getdir wall);wall2 setpos (wall modelToWorld[5,0,-0.6])

//32.28