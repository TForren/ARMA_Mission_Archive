waitUntil{!isNil "bis_fnc_init"};
_unit=_this select 0;
if(side _unit==East)then{
sleep 7.5;
[_unit]call InsH;
sleep 3;
[_unit]call InsU;[_unit]call InsV;[_unit]call InsG;
sleep 1;
[_unit]call InsW;
sleep 1;
[_unit]call InsAI;
sleep 1;
if(round(random 2)==1)then{_unit addPrimaryWeaponItem "acc_flashlight";};
_unit hideObjectGlobal false;_unit setBehaviour "SAFE";
_nearH=_unit nearObjects["House_EP1",10];
_Haus=[];
{_Haus=_Haus+[_x];}forEach _nearH;
_Hauss=count _Haus;
if(_Hauss>0)then{if(round(random 3)==1)then{_unit playAction "SitDown";};};};

if(side _unit==Independent)then{
sleep 7.5;
removeAllAssignedItems _unit;removeHeadgear _unit;_unit addHeadgear "H_HelmetO_ocamo";
sleep 3;
removeUniform _unit;_unit forceAddUniform "U_O_CombatUniform_ocamo";
sleep 1;
[_unit]call InsAI;
sleep 1;
_unit linkItem "ItemRadio";_unit addPrimaryWeaponItem "acc_flashlight";_unit hideObjectGlobal false;_unit setBehaviour "SAFE";};

if(side _unit==Civilian)then{
_unit setSkill 0;//_unit setVariable["NOAI",1,false];
sleep 1;
removeAllAssignedItems _unit;removeGoggles _unit;
[_unit]call InsH;[_unit]call InsF;
sleep 3;
[_unit]call InsU;[_unit]call InsG;
sleep 1;
[_unit]call CivV;
sleep 8;
_unit enableSimulationGlobal true;
sleep 3;
_unit enableAI "TeamSwitch";
sleep 1;
_unit enableAI "ANIM";
sleep 5;
_unit enableAI "FSM";
sleep 5;
_unit enableAI "MOVE";null=[_unit]execVM "eos\fn\ask.sqf";
sleep 1.5;
_unit enableAI "PATH";
sleep 1.5;
_unit enableAI "SUPPRESSION";
sleep 1.5;
_unit enableAI "TARGET";_unit enableAI "AUTOTARGET";
sleep 1.5;
_unit enableAI "AUTOCOMBAT";
sleep 1.5;
_unit hideObjectGlobal false;_unit setBehaviour "SAFE";_unit setAnimSpeedCoef 0.85;
//civDie=_unit addEventHandler["Killed",{if(side(_this select 1)==West)then{(_this select 0)format["%1 killed a civilian!",name(_this select 1)]remoteExec["globalChat",0]};}];//(_this select 0)globalChat format["%1 killed a civilian!",name(_this select 1)];
_nearH=_unit nearObjects["House_EP1",10];
_Haus=[];{_Haus=_Haus+[_x];}forEach _nearH;_Hauss=count _Haus;
if(_Hauss>0)then{_unit playAction "SitDown";};};