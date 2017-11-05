SMunits=[];
sideMissionUp=true;
publicVariable "sideMissionUp";
sleep 3;
_position=[[6218,6282,1],random 1000,3500,1,0,60*(pi/180),0,[]]call BIS_fnc_findSafePos;
sideObj=createVehicle["Land_Vysilac_FM",_position,[],0,"CAN_COLLIDE"];
publicVariable "sideObj";
clearMagazineCargoGlobal sideObj;
SMunits=SMunits+[sideObj];
sideObj setDir random 360;
sideObj addEventHandler["handleDamage",{if((_this select 4)=="SatchelCharge_Remote_Mag")then{sideObj setDamage 1}else{sideObj setDamage 0};}];

_random=(round(random 2)+1);
for "_i" from 0 to _random do{
_nposition=[_position,random 50,300,1,0,60*(pi/180),0,[]]call BIS_fnc_findSafePos;
_spawnGroup=[_nposition,EAST,(configFile>>"CfgGroups">>"East">>"OPF_F">>"Infantry">>"OIA_InfTeam")]call BIS_fnc_spawnGroup;
[_spawnGroup,getPos sideObj,100+random 300]call BIS_fnc_taskPatrol;
SMunits=SMunits+(units _spawnGroup);
[_spawnGroup]call fn_Skill;
sleep 1;};

[round(random 2)+1]call fn_ST;
_nposition=[_position,random 10,50,1,0,60*(pi/180),0,[]]call BIS_fnc_findSafePos;
_spawnGroup=[_nposition,EAST,(configFile>>"CfgGroups">>"East">>"OPF_F">>"Infantry">>"OIA_InfTeam")]call BIS_fnc_spawnGroup;
[_spawnGroup,getPos sideObj]call BIS_fnc_taskDefend;
[_spawnGroup]call fn_Skill;
SMunits=SMunits+(units _spawnGroup);
{_x enableSimulationGlobal false;_x hideObjectGlobal true;_x disableAI "ANIM";_x disableAI "FSM";_x disableAI "MOVE";_x disableAI "CHECKVISIBLE";_x disableAI "SUPPRESSION";_x disableAI "AIMINGERROR";_x disableAI "TARGET";_x disableAI "AUTOTARGET";_x disableAI "AUTOCOMBAT";_x setSpeaker "NoVoice";_x setBehaviour "CARELESS";_x disableConversation true;_x unlinkItem "NVGoggles_OPFOR";removeUniform _x;removeHeadgear _x;removeVest _x;removeBackpack _x;removeAllWeapons _x;_x enableMimics false;_x addEventHandler["HandleDamage",{_damage=(_this select 2)*1.7;_damage}];}forEach SMUnits-[sideObj];
sleep 1;
{[_x]execVM "eos\fn\randOP4.sqf";}forEach SMunits-[sideObj];
"sideMarker" setMarkerPos(position sideObj);
"sideMarker" setMarkerText "";
"sideMarker" setMarkerColor "ColorWhite";
"sideMarker" setMarkerAlpha 0;
"sideMarker" setMarkerType "loc_Transmitter";
[west,["t0"],["Intel reports the Taliban have setup their own communications tower and are operating around it.  Destroying the tower with an EXPLOSIVE SATCHEL will disturb their operations in Takistan.","Destroy Tower","sideMarker"],getMarkerPos "sideMarker",true,1,true,"Destroy",true]call BIS_fnc_taskCreate;

waitUntil{!alive sideObj};
"sideMarker" setMarkerPos[0,0,0];
"sideMarker" setMarkerText "";
"sideMarker" setMarkerAlpha 0;
["t0","SUCCEEDED",true]spawn BIS_fnc_taskSetState;
_rw=rw1 call BIS_fnc_selectRandom;
_newRW=createVehicle[_rw,getMarkerPos "rwMkr",[],8,"CAN_COLLIDE"];_newRW setDir 331;
sleep 300;
["t0",west]call BIS_fnc_deleteTask;
{deleteVehicle _x}forEach SMunits;
sleep 1;
SMunits=[];
sleep 4;
sideMissionUp=false;
publicVariable "sideMissionUp";
switch(floor(random 2))do{
case 0:{[]execVM "common\server\Obj\killMan.sqf";};
case 1:{[]execVM "common\server\Obj\killVeh.sqf";};
case 2:{[]execVM "common\server\Obj\capIED.sqf";};
};