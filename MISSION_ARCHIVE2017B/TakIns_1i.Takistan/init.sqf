enableSaving[false,false];
if(isClass(configFile>>"CfgPatches">>"TPW_MODS"))then{endMission "END2";};
//execVM"ban.sqf";
#include "core\modules\cacheScript\fn\fn.sqf"
#include "core\modules\cacheScript\fn\cacheFn.sqf"
#include "core\modules\cacheScript\fn\KRON_Str.sqf"
#include "eos\fn\fn.sqf"
#ifndef execNow
#define execNow call compile preprocessFileLineNumbers
#endif
execNow "core\init.sqf";
ia_say=compileFinal "_this select 0 say3D(_this select 1);";
null=[]execVM "common\client\CAS\initCAS.sqf";
[]spawn{call compile preprocessFileLineNumbers "common\server\EPD\Ied_Init.sqf";};
vIED1=[(getMarkerPos "NW"),2000,13,true,false,WEST]execVM "common\server\vIED.sqf";
vIED2=[(getMarkerPos "NE"),2000,13,true,false,WEST]execVM "common\server\vIED.sqf";
vIED3=[(getMarkerPos "SW"),2000,13,true,false,WEST]execVM "common\server\vIED.sqf";
vIED4=[(getMarkerPos "SE"),2000,13,true,false,WEST]execVM "common\server\vIED.sqf";
null=[]execVM "eos\OpenMe.sqf";null=[]execVM "cos\cosInit.sqf";
null=[]execVM "common\server\veh.sqf";
execVM "common\server\safeZ.sqf";
execVM "common\server\ctp\ctp.sqf";
null=[[AIRBASE],WEST,true,75]execVM "common\client\BRS\BRS_launch.sqf";
[]execVM "common\server\gc.sqf";
if((!isClass(configFile>>"CfgPatches">>"task_force_radio"))&&{(!isClass(configFile>>"CfgPatches">>"acre_main"))})then{
_null=[]execVM "common\client\VON_PLUS_GUI\init.sqf";};
[west,["vaTsk"],["Enter the American warehouse and access the Virtual Arsenal via the weapon racks to customize your loadout.","Gear Up!","GearMkr"],GearBox,false,4,false,"Rifle",true]call BIS_fnc_taskCreate;
[]execVM "common\server\Obj\init.sqf";
if(!isClass(configFile>>"cfgPatches">>"ace_common"))then{
null=[]execVM "common\client\repair.sqf";null=[]execVM "common\client\fastRope.sqf";
[]execVM "common\client\strobe\strobe.sqf";
if(!isServer && isNull player)then{isJIP=true;}else{isJIP=false;};
if(!isDedicated)then{waitUntil{!isNull player && isPlayer player};};};
if(!isDedicated && hasInterface)then{
waitUntil{time>1};
execNow "intro.sqf";
};