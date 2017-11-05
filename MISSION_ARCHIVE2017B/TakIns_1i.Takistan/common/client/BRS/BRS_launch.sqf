BRS_RP=compile preprocessFile "common\client\BRS\fn\respawnPoints.sqf";findSpawn=compile preprocessFile "common\client\BRS\fn\setSpawn.sqf";squadRespawn=compile preprocessFile "common\client\BRS\fn\respawnPlayer.sqf";getSpawnText=compile preprocessFile "common\client\BRS\fn\BRS_txt.sqf";BRS_keyspressed=compile preprocessFile "common\client\BRS\fn\spawnKeys.sqf";
private["_customRP","_spawnSide","_allowSquadSpawn","_limitEnemy","_evType","_BRSarray","_addAction"];
waitUntil{!isNull player};
BRS_hideRadius=5;
if(isNil "hideplayer")then{
HINT "UNABLE TO LOAD BRS: Make sure you have an object named ""hideplayer"" on the map";}else{
//IF IS ADDACTION
if(count _this >= 3)then{
_isAction=(_this select 3);
if(typeName _isAction=="ARRAY")then{
_addAction=true;
_BRSarray=(_this select 3);}else{
_addAction=false;
_BRSarray=_this;};}else{
_addAction=false;
_BRSarray=_this;};
IF(count _BRSarray==0)then{_customRP=[];}else{
	if(count(_BRSarray select 0)==0)then{_customRP=[];}else{
	_customRP=(_BRSarray select 0);};};

_spawnSide=if(count _BRSarray > 1)then{_BRSarray select 1}else{};
_allowSquadSpawn=if(count _BRSarray > 2)then{_BRSarray select 2}else{true};
_limitEnemy=if(count _BRSarray > 3)then{_BRSarray select 3}else{0};

_debug=if(count _BRSarray > 4)then{_BRSarray select 4}else{FALSE};
if(_debug)then{_evType="fired";}else{_evType="killed";};

//IF NO SIDE SET THEN SET DEFAULT PARAMETERS
if(ISNIL("_spawnSide"))then{
_spawnSide=CIVILIAN;
//ADDACTION
	if(_addAction)then{
	player setVariable["AAcustomRP",_customRP];
	player setVariable["AASpawnSide",_spawnSide];
	player setVariable["AAallowSquadSpawn",_allowSquadSpawn];
	player setVariable["AAlimitEnemy",_limitEnemy];
	null=[false,true]execVM "common\client\BRS\BRS_init.sqf";}else{
	player setVariable["EVcustomRP",_customRP];
	player setVariable["EVSpawnSide",_spawnSide];
	player setVariable["EVallowSquadSpawn",_allowSquadSpawn];
	player setVariable["EVlimitEnemy",_limitEnemy];

//SCRIPT. IF BRS PREVIOUSLY SET, REMOVE IT AND APPLY NEW BRS
		if(!isNil "brs_EVHandle")then{
		player removeEventHandler[_evType,brs_EVHandle];};
brs_EVHandle=player addEventHandler[_evType,"null=[false,false]execVM ""common\client\BRS\BRS_init.sqf"""];};}else{
//IF SIDE IS SPECIFIED AND PLAYER IS THAT SIDE							
if(_spawnSide==side player)then{
//IS ADDACTION
if(_addAction)then{
player setVariable["AAcustomRP",_customRP];
player setVariable["AASpawnSide",_spawnSide];
player setVariable["AAallowSquadSpawn",_allowSquadSpawn];
player setVariable["AAlimitEnemy",_limitEnemy];
null=[false,true]execVM "common\client\BRS\BRS_init.sqf";}else{
//APPLY PARAMETERS
player setVariable["EVcustomRP",_customRP];
player setVariable["EVSpawnSide",_spawnSide];
player setVariable["EVallowSquadSpawn",_allowSquadSpawn];
player setVariable["EVlimitEnemy",_limitEnemy];

//SCRIPT. IF BRS PREVIOUSLY SET, REMOVE IT AND APPLY NEW BRS
if(!isNil "brs_EVHandle")then{
player removeEventHandler[_evType,brs_EVHandle];};
brs_EVHandle=player addEventHandler[_evType,"null=[false,false]execVM ""common\client\BRS\BRS_init.sqf"""];};
		};
	};
};