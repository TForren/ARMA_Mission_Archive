fn_Skill={_grp=_this select 0;_leader=leader _grp;_leader setSkill random 1;
{_x setSkill["aimingAccuracy",0.1];_x setSkill["aimingShake",0.1];_x setSkill["aimingSpeed",0.1];
_x setSkill["spotDistance",0.1];_x setSkill["spotTime",0.1];_x setSkill["courage",0.7];_x setSkill["commanding",1];}forEach units _grp;};
rw1=["Box_NATO_Ammo_F","Box_NATO_Equip_F","B_Slingload_01_Fuel_F","B_Slingload_01_Repair_F","B_Slingload_01_Medevac_F","B_Slingload_01_Cargo_F","B_Slingload_01_Ammo_F","B_LSV_01_armed_F"];
fn_ST={
_amount=_this select 0;
for "_i" from 0 to _amount do{
_posSt=[_position,10,200,1,0,60*(pi/180),0,[]]call BIS_fnc_findSafePos;
_st=createVehicle["O_HMG_01_high_F",_posSt,[],0,"CAN_COLLIDE"];_st disableTIEquipment true;_st disableNVGEquipment true;_st lock 3;
_stGrp=createGroup EAST;
_stMan=_stGrp createUnit["O_Survivor_F",position _st,[],0,"CAN_COLLIDE"];
_stMan enableSimulationGlobal false;_stMan hideObjectGlobal true;_stMan disableAI "ANIM";_stMan disableAI "FSM";_stMan disableAI "MOVE";_stMan disableAI "CHECKVISIBLE";_stMan disableAI "SUPPRESSION";_stMan disableAI "AIMINGERROR";_stMan disableAI "TARGET";_stMan disableAI "AUTOTARGET";_stMan disableAI "AUTOCOMBAT";_stMan setSpeaker "NoVoice";_stMan setBehaviour "CARELESS";_stMan disableConversation true;
_stMan unlinkItem "NVGoggles_OPFOR";_stMan enableMimics false;
sleep 1;
[_stMan]execVM "eos\fn\randOP4.sqf";
_stMan assignAsGunner _st;[_stMan]orderGetIn true;_stMan moveInTurret[_st,[0]];};
};
if(isNil{missionNamespace getVariable "sideMissionUp"})then{
switch(round(random 3))do{
case 0:{null=[]execVM "common\server\Obj\killTow.sqf";};
case 1:{null=[]execVM "common\server\Obj\killVeh.sqf";};
case 2:{null=[]execVM "common\server\Obj\killMan.sqf";};
case 3:{null=[]execVM "common\server\Obj\capIED.sqf";};
};};