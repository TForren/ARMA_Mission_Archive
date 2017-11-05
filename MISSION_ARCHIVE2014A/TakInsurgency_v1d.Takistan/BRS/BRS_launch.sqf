	BRS_RP_fnc = compile preprocessFile "BRS\functions\respawn_points.sqf";
	findSpawn_fnc = compile preprocessFile "BRS\functions\set_spawn.sqf";
	squadRespawn_fnc = compile preprocessFile "BRS\functions\respawn_player.sqf";
	getSpawnText_fnc = compile preprocessFile "BRS\functions\BRS_text_fnc.sqf";
	BRS_keyspressed = compile preprocessFile "BRS\functions\spawn_keys.sqf";
	
private ["_customRP","_spawnSide","_allowSquadSpawn","_limitEnemy","_evType","_BRSarray","_addAction"];
waitUntil {!isNull player};
	BRS_hideRadius=5;
		if (isnil "hideplayer") 
			then {
			HINT "UNABLE TO LOAD BRS: Make sure you have an object named ""hideplayer"" on the map";		
			}else{

// IF IS ADDACTION

if (count _this >= 3) then {
		_isAction = (_this select 3);
if (typeName _isAction == "ARRAY") then {
										_addAction=true;
											_BRSarray=(_this select 3);
												}else{
												_addAction=false;
												_BRSarray=_this;
												};
										}else{_addAction=false;
												_BRSarray=_this;
												};		
			IF (count _BRSarray == 0) then {_customRP=[];
			
						}else{
				if (count (_BRSarray select 0) == 0) 
					then {_customRP=[];
						}else{
						_customRP=(_BRSarray select 0);};
						};		
			_spawnSide=if (count _BRSarray > 1) then {_BRSarray select 1} else {};
			_allowSquadSpawn=if (count _BRSarray > 2) then {_BRSarray select 2} else {true};
			_limitEnemy = if (count _BRSarray > 3) then {_BRSarray select 3} else {0};
			
			_debug = if (count _BRSarray > 4) then {_BRSarray select 4} else {FALSE};
				if (_debug) then {_evType="fired";}else{_evType="killed";};	


				
// IF NO SIDE SET THEN SET DEFAULT PARAMETERS
	if (ISNIL ("_spawnSide")) 
			then {
				_spawnSide=CIVILIAN;
				
// ADDACTION			
	if (_addAction) 
		then {
		
		player SETVARIABLE ["AAcustomRP",_customRP];
		player SETVARIABLE ["AASpawnSide",_spawnSide];
		player SETVARIABLE ["AAallowSquadSpawn",_allowSquadSpawn];
		player SETVARIABLE ["AAlimitEnemy",_limitEnemy];
			null= [false,true] execVM "BRS\BRS_init.sqf";
		
			} else {
				player SETVARIABLE ["EVcustomRP",_customRP];
				player SETVARIABLE ["EVSpawnSide",_spawnSide];
				player SETVARIABLE ["EVallowSquadSpawn",_allowSquadSpawn];
				player SETVARIABLE ["EVlimitEnemy",_limitEnemy];
		
// SCRIPT. IF BRS PREVIOUSLY SET, REMOVE IT AND APPLY NEW BRS
		if (!isnil "brs_EVHandle")  
			then {
				player removeEventHandler [_evType, brs_EVHandle];
					};
					brs_EVHandle = player addEventHandler [_evType,"null= [false,false] execVM ""BRS\BRS_init.sqf"""];			
					};

					
// IF SIDE IS SPECIFIED
}else{

// IF SIDE IS SPECIFIED AND PLAYER IS THAT SIDE							
	if (_spawnSide == side player)
			then{

// IS ADDACTION		
if (_addAction) 
	then {
		player SETVARIABLE ["AAcustomRP",_customRP];
		player SETVARIABLE ["AASpawnSide",_spawnSide];
		player SETVARIABLE ["AAallowSquadSpawn",_allowSquadSpawn];
		player SETVARIABLE ["AAlimitEnemy",_limitEnemy];
			null= [false,true] execVM "BRS\BRS_init.sqf";
		} else {
			// APPLY PARAMETERS
			player SETVARIABLE ["EVcustomRP",_customRP];
			player SETVARIABLE ["EVSpawnSide",_spawnSide];
			player SETVARIABLE ["EVallowSquadSpawn",_allowSquadSpawn];
			player SETVARIABLE ["EVlimitEnemy",_limitEnemy];

// SCRIPT. IF BRS PREVIOUSLY SET, REMOVE IT AND APPLY NEW BRS
		if (!isnil "brs_EVHandle") 
				then {
				player removeEventHandler [_evType, brs_EVHandle];
					};
					brs_EVHandle = player addEventHandler [_evType,"null= [false,false] execVM ""BRS\BRS_init.sqf"""];
			};
		};
	};
};	
