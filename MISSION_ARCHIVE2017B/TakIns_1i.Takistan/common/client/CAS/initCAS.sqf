MaxD=700;//Max distance allowed between JTAC and target
Alock=true;//True=Only JTAC calls CAS
num=99;
disableBomb=["NONE"];
restrictedZones=[noCAS];//Triggers which define disallowed CAS zones
CASarray=["P4"];
"serverDamage" addPublicVariableEventHandler{
_arr=_this select 1;
pos1=_arr select 0;
expire1=_arr select 1;
[pos1,expire1]spawn{
_pos=_this select 0;
_expire=_this select 1;
_obj=createAgent["Logic",[_pos select 0,_pos select 1,0],[],0,"CAN_COLLIDE"];

while{_expire>=time}do{
{if(_x distance _obj<=50)then{_x setDammage 1+(getDammage _x)};
if(_x distance _obj<=70)then{_x setDammage .07+(getDammage _x)};
if(_x distance _obj<=100)then{_x setDammage .04+(getDammage _x)};
}forEach nearestObjects[_obj,["Man"],100];
{if(_x distance _obj<=50)then{_x setDammage .08+(getDammage _x)};
if(_x distance _obj<=70)then{_x setDammage .03+(getDammage _x)};
if(_x distance _obj<=100)then{_x setDammage .01+(getDammage _x)};
}forEach nearestObjects[_obj,["Motorcycle"],100];
{if(_x distance _obj<=30)then{_x setDammage .2+(getDammage _x)};
if(_x distance _obj<=50)then{_x setDammage .05+(getDammage _x)};
if(_x distance _obj<=70)then{_x setDammage .01+(getDammage _x)};
if(_x distance _obj<=100)then{_x setDammage .005+(getDammage _x)};
}forEach nearestObjects[_obj,["CAR"],100];
{if(_x distance _obj<=30)then{_x setDammage .2+(getDammage _x)};
if(_x distance _obj<=50)then{_x setDammage .05+(getDammage _x)};
if(_x distance _obj<=70)then{_x setDammage .01+(getDammage _x)};
if(_x distance _obj<=100)then{_x setDammage .005+(getDammage _x)};
}forEach nearestObjects[_obj,["Air"],100];
{if(_x distance _obj<=30)then{_x setDammage .02+(getDammage _x)};
if(_x distance _obj<=50)then{_x setDammage .01+(getDammage _x)};
if(_x distance _obj<=70)then{_x setDammage .005+(getDammage _x)};
}forEach nearestObjects[_obj,["Tank"],100];
sleep 0.5;};
};
};
if !(vehicleVarName player in CASarray)exitWith{};
waitUntil{!isNull player};waitUntil{player==player};
abortCAS=false;
waitCAS=false;
doSnap=false;
firstRun=true;
onKeyPress=compile preprocessFile "common\client\CAS\snap.sqf";
if(isMultiplayer)exitWith{};
[MaxD,Alock,num]execVM "common\client\CAS\addAction.sqf";