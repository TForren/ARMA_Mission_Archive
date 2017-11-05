private["_currentPoint","_display","_EVcustomRP","_addaction","_allowsquadSpawn"];
_recover=(_this select 0);
_addaction=(_this select 1);
player setvariable["BRSAddAction",_addaction];
//IF FIRST TIME CALL
if(!_recover)then{
BRS_nvgON=false;
BRS_mapClose=true;
BRS_cam_offset=0;

//GET AVAILABLE RESPAWN POSITIONS	
BRS_squad=group player;	
BRS_spawnPoints=[];
BRS_backUp=[];

if(!_addaction)then{
_EVcustomRP=player getVariable "EVcustomRP";
_allowsquadSpawn=player getVariable "EVallowSquadSpawn";}else{
_EVcustomRP=player getVariable "AAcustomRP";
_allowsquadSpawn=player getVariable "AAallowSquadSpawn";};

IF(isNil "_EVcustomRP")then{_EVcustomRP=[];};
if(_allowsquadSpawn)then{
	{if(_x != player)then{
	BRS_spawnPoints set[count BRS_spawnPoints,_x];
	BRS_backUp set[count BRS_backUp,_x];};}forEach(units BRS_squad);
};

{if(_x != player)then{
BRS_spawnPoints set[count BRS_spawnPoints,_x];	
BRS_backUp set[count BRS_backUp,_x];};}forEach _EVcustomRP;

//CHECK IF ANY SPAWN POINT AVAILABLE
if(count BRS_spawnPoints==0)then{
exitBRS=TRUE;}else{
BRS_selectSpawn=0;
BRS_currentSpawn=(BRS_spawnPoints select BRS_selectSpawn);		
0=[]call BRS_RP;};}else{exitBRS=TRUE;sleep 0.2;};

waitUntil{alive player};
disableSerialization;
if(count BRS_spawnPoints==0)then{
hint "No BRS spawn points available";}else{
CreateDialog "BRS_dialog";
// create BRS_cam 
if(isNil "BRS_cam")then{
BRS_cam="camera" camCreate[0,0,0];};
BRS_cam cameraEffect["internal","back"] ;						
BRS_cam attachTo[(vehicle BRS_currentSpawn),[BRS_cam_offset,-5.5,0],"neck"];
BRS_cam camCommit 0;	
showCinemaBorder true;

_display=uiNamespace getVariable "BRS_RespawnDialog";

//PREPARE DIALOG
if(ctrlVisible 42500 and BRS_mapClose)then{
null=[true]execVM "common\client\BRS\BRS_map\map_close.sqf";};

//RESET NV BUTTON
if(ctrlVisible 30051 and !BRS_nvgON)then{
(_display displayCtrl 30052)ctrlShow false;};

cutText["","BLACK IN",0];
player allowDamage false;player setCaptive true;player setPos getPos hidePlayer;player hideObjectGlobal true;
_handle=(_display)displaySetEventHandler["KeyDown","_this call BRS_keyspressed"];
sleep 0.1;
_currentPoint=[0]call getSpawnText;
(_display displayCtrl 51500)ctrlSetText _currentPoint;

//SET NEXT SPAWN POINT
_currentPoint=[1]call getSpawnText;
(_display displayCtrl 71500)ctrlSetStructuredText _currentPoint;

//SET PREVIOUS SPAWN POINT
_currentPoint=[2]call getSpawnText;					
(_display displayCtrl 61500)ctrlSetStructuredText _currentPoint;

_currentPoint=PARSETEXT "B.R.S <br/>By BangaBob<br/> v0.2";
(_display displayCtrl 57805)ctrlSetStructuredText _currentPoint;

//RUN LOOP WHILE PLAYER IN BRS
exitBRS=false;	
while{!exitBRS}do{
sleep 0.5;
0=[]call BRS_RP;};};