if(isDedicated)exitWith{};
call compile preprocessFileLineNumbers "map.sqf";
_vDist=paramsArray select 6;_noGrass=paramsArray select 7;_shadows=paramsArray select 8;_audio=paramsArray select 9;
setViewDistance _vDist;setObjectViewDistance _vDist;setTerrainGrid _noGrass;setShadowDistance _shadows;
if(_audio==1)then{enableEnvironment true;}else{enableEnvironment false;};
enableSentences false;player disableConversation true;player setVariable["BIS_noCoreConversations",true];player setSpeaker "NoVoice";player enableMimics false;
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust[0.9,1,0,[0.1,0.1,0.1,-0.1],[1,1,0.8,0.528],[1,0.2,0,0]];
"colorCorrections" ppEffectCommit 0;
execVM "info.sqf";
if(!isClass(configFile>>"cfgPatches">>"ace_common"))then{
TCB_AIS_PATH="common\client\ais_injury\";[player]call compile preProcessFile(TCB_AIS_PATH+"init_ais.sqf");execVM "common\client\ais_injury\func\fn_ppFX.sqf";
sleep 7;
[true,[true,true,true,true],[0,true,true],[[1000],true,true]]execVM "common\client\vip_lit\vip_lit_init.sqf";ctrlActivate((findDisplay 12)displayCtrl 107);
execVM "common\server\BWS\bulletWindClient.sqf";
[]execVM "common\client\holster.sqf";[]execVM "common\client\noAmmoAT.sqf";sleep 3;};
if(isClass(configFile>>"CfgPatches">>"task_force_radio"))then{
[(call TFAR_fnc_ActiveSWRadio),7]call TFAR_fnc_setSwVolume;};
if(!isClass(configFile>>"CfgPatches">>"acre_main"))then{
#include "common\client\VON_PLUS_GUI\rFN.sqf";call radioInit;};
ctrlActivate((findDisplay 12)displayCtrl 107);
sleep 3;
if(vehicleVarName player in CASarray)then{[MaxD,Alock,num]execVM "common\client\CAS\addAction.sqf";};