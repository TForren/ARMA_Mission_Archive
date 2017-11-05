private["_velocityZ"];
waitCAS=true;
_object=_this select 0;
_distance=_this select 1;
_doLock=_this select 2;
_num=_this select 3;
_casType=_this select 4;
_loc=getMarkerPos(_this select 5);
_id=_this select 6;
if(_casType=="NONE")exitWith{hint "Choose another munition instead!"};
player removeAction _id;
_str=format["<t color='#FF1000'>Abort CAS</t>"];
_cancel=player addAction[_str,"common\client\CAS\cancelCAS.sqf",nil,-1,false,true,""];
_lockobj=createAgent["Logic",[(_loc select 0),(_loc select 1),0],[],0 ,"CAN_COLLIDE"];
_lockobj setPos _loc;
_lck=getPosASL _lockobj select 2;
_loc=visiblePosition _lockobj;
_dir=random 360;
_dis=8000;
_ranPos=[(_loc select 0)+_dis*sin _dir,(_loc select 1)+_dis*cos _dir,350];

_grp=createGroup west;
_buzz=createVehicle["B_Plane_CAS_01_F",_ranPos,[],0,"FLY"];clearItemCargoGlobal _buzz;
_buzz setVectorDir[(_loc select 0)-(getPos _buzz select 0),(_loc select 1)-(getPos _buzz select 1),0];
[_buzz]execVM "common\client\CAS\track.sqf";
sleep 0.2;
_dir=getDir _buzz;
_buzz setVelocity[sin(_dir)*200,cos(_dir)*200,0];
_pilot=_grp createUnit["B_Pilot_F",_ranPos,[],0,"FORM"];
_pilot moveInDriver _buzz;
_buzz setCaptive true;_buzz allowDamage false;
_pilot enableMimics false;_pilot disableAI "SUPPRESSION";_pilot disableAI "AIMINGERROR";_pilot disableAI "TEAMSWITCH";_pilot moveInDriver _buzz;
//_pilot flyInheight 500;_buzz flyInheight 500;

(leader _grp)sideChat "HOG 1 copies. Coming in hot.  ETA 30 seconds.";
_grp setBehaviour "STEALTH";
_grp setSpeedMode "FULL";
_grp setCombatMode "BLUE";
(driver _buzz)doMove[_loc select 0,_loc select 1,350];

doCounterMeasure={
_plane=_this select 0;
for "_i" from 1 to 4 do{
_bool=_plane fireAtTarget[_plane,"CMFlareLauncher"];
sleep 0.3;};
sleep 3;
_plane=_this select 0;
for "_i" from 1 to 4 do{
_bool=_plane fireAtTarget[_plane,"CMFlareLauncher"];
sleep 0.3;};};

while{true}do{
if(_buzz distance _lockobj<=580)exitwith{};
if(!alive _buzz)exitwith{};
if(abortCAS)exitWith{};
sleep 0.01;};

if(!alive _buzz)exitwith{casRequest=false;deleteMarker "CAS_TARGET";};
waitCAS=false;
if(abortCAS)exitWith{
_buzz move _ranPos;
(leader _grp)sideChat "HOG 1 copies.  Waving off.";
abortCAS=false;
waitUntil{_buzz distance _object>=2000 || !alive _buzz};
{deleteVehicle vehicle _x;deleteVehicle _x;}forEach units _grp;};

_vehName=vehicleVarName player;
_variables=varHolder getVariable _vehName;
_maxDist=_variables select 0;
_lock=_variables select 1;
_num=_variables select 2;
_num=_num-1;

//settingsCAS=[_maxDist,_lock,_num,_vehName];
//varHolder setVariable[_vehName,settingsCAS,true];
player removeAction _cancel;
//if(alive player && _num>0)then{
//_str=format["<t color='#FF9000'>Request CAS</t>",_num];
//player addAction[_str,"common\client\CAS\casMenu.sqf",[_maxDist,_lock,_num],-1,false,true,""];};
[_buzz]spawn doCounterMeasure;
(leader _grp)sideChat "Pickle.  Bombing run complete.  HOG 1 is waving off.";
if((alive _buzz)&&(_casType=="JDAM"))then{
_drop=createAgent["Logic",[getPos _buzz select 0,getPos _buzz select 1,0],[],0,"CAN_COLLIDE"]; 
_height=225+_lck;
_ASL=getPosASL _drop select 2;
_height=_height-_ASL;
_bomb="Bo_GBU12_LGB" createVehicle[getPos _drop select 0,getPos _drop select 1,_height];
_bomb setDir((_loc select 0)-(getPos _bomb select 0))atan2((_loc select 1)-(getPos _bomb select 1));
_dist=_bomb distance _loc;
if(_dist>=536)then{
_diff=_dist-536;
_diff=_diff*0.150;   
_velocityZ=85-_diff;};
if(_dist<536)then{
_diff=536-_dist;
_diff=_diff*0.150;   
_velocityZ=85+_diff;};
_bDrop=sqrt(((getPosASL _bomb select 2)-_lck)/4.9);
_bVelX=((_loc select 0)-(getPos _bomb select 0))/_bDrop;
_bVelY=((_loc select 1)-(getPos _bomb select 1))/_bDrop;
_bomb setVelocity[_bVelX,_bVelY,(velocity _bomb select 2)-_velocityZ];
deleteVehicle _drop;};
if((alive _buzz)&&(_casType=="CBU"))then{
_drop=createAgent["Logic",[getPos _buzz select 0,getPos _buzz select 1,0],[],0,"CAN_COLLIDE"]; 
_height=225+_lck;
_ASL=getPosASL _drop select 2;
_height=_height-_ASL;
_height=_height+40;
_cbu="Bo_GBU12_LGB" createVehicle[getPos _drop select 0,getPos _drop select 1,_height];
_cbu setDir((_loc select 0)-(getPos _cbu select 0))atan2((_loc select 1)-(getPos _cbu select 1));
_dist=_cbu distance _loc;
if(_dist>536)then{
_diff=_dist-536;
_diff=_diff*0.150;   
_velocityZ=85-_diff;
};
if(_dist<536)then{
_diff=536-_dist;
_diff=_diff*0.150;   
_velocityZ=85+_diff;};
_bDrop=sqrt(((getPosASL _cbu select 2)-_lck)/4.9);
_bVelX=((_loc select 0)-(getPos _cbu select 0))/_bDrop;
_bVelY=((_loc select 1)-(getPos _cbu select 1))/_bDrop;
_cbu setVelocity[_bVelX,_bVelY,(velocity _cbu select 2)-_velocityZ];
waitUntil{getPos _cbu select 2<=40};
_pos=getPos _cbu;
_effect="SmallSecondary" createVehicle _pos;
deleteVehicle _cbu;
for "_i" from 1 to 35 do{
_explo="G_40mm_HEDP" createVehicle _pos;
_explo setVelocity[-35+(random 70),-35+(random 70),-50];
sleep 0.025;};
deleteVehicle _drop;};

if((alive _buzz)&&(_casType=="NONE"))exitWith{};
/*then{
_lockobj=createAgent["Logic",[(_loc select 0),(_loc select 1),0],[],0,"CAN_COLLIDE"];
_lockobj setPos _loc;
_lck=getPosASL _lockobj select 2;
_loc=visiblePosition _lockobj;
guns=_grp createUnit["ModuleCAS_F",[(_loc select 0),(_loc select 1),0],[],0,""];
guns setVariable["vehicle","B_Plane_CAS_01_F",true];
guns setVariable["type",0,true];};*/

_grp=group _buzz;
deleteVehicle _lockobj;
//casRequest=false;
deleteMarker "CAS_TARGET";
waitUntil{_buzz distance _object>=2000 || !alive _buzz};
(leader _grp)sideChat "HOG 1 is RTB for rearm and refuel.  Will be back on station in about 10 mikes.";
deleteVehicle vehicle _pilot;deleteVehicle _buzz;
sleep 600;
casRequest=false;
//_num=_num+1;
[MaxD,Alock,num]execVM "common\client\CAS\addAction.sqf";