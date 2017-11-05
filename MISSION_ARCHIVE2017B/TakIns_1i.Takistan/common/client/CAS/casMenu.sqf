_owner=_this select 0;_caller=_this select 1;_id=_this select 2;_argArr=_this select 3;
maxDisReq=_argArr select 0;
_lockToOwner=_argArr select 1;
_num=_argArr select 2;

if((_lockToOwner)&&(_caller != _owner)&&(vehicle _owner isKindOf "Man"))exitWith{titleText["You are not authorized to request CAS!","PLAIN DOWN"]};

_borderMarker=createMarkerLocal["maxDist",getPos _caller];
_borderMarker setMarkerShapeLocal "ELLIPSE";
_borderMarker setMarkerSizeLocal[maxDisReq,maxDisReq];
_borderMarker setMarkerColorLocal "colorRed";
_borderMarker setMarkerBrushLocal "Border";

casType="JDAM";
isClicked=false;
_dlg=createDialog "casMenu";
disableSerialization;
_display=uiNamespace getVariable "casMenu";
_display displayAddEventHandler["KeyDown","_this call onKeyPress"];
_chkBox=_display displayCtrl 100116;
_chkBox ctrlAddEventHandler["CheckBoxesSelChanged",
"{whatIsChecked=_this select 1;
if((whatIsChecked==0)&&(_x=='JDAM'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';};
if((whatIsChecked==1)&&(_x=='CBU'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';};
if((whatIsChecked==2)&&(_x=='NONE'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';};
if(isClicked &&(whatIsChecked==0)&&(_x != 'JDAM'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable true;};
if(isClicked &&(whatIsChecked==1)&&(_x != 'CBU'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable true;};
if(isClicked &&(whatIsChecked==2)&&(_x != 'NONE'))then{
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100112;
_button ctrlEnable true;};
}forEach disabledBomb;"];

_button=_display displayCtrl 100112;
_button ctrlEnable false;
_toggle=_display displayCtrl 100118;
if(doSnap)then{
_toggle ctrlSetText "<Enabled>";
_toggle ctrlSetTextColor[0,1,0,1];}else{
_toggle ctrlSetText "<Disabled>";
_toggle ctrlSetTextColor[1,0,0,1];
};

if(abortCAS)then{
_button=_display displayCtrl 100113;
_button ctrlEnable false;}else{
_button=_display displayCtrl 100113;
_button ctrlEnable true;
};

casRequest=false;
targetPos=getPos _caller;
nearTargetList=[];
nearestVeh=objNull;
while{dialog && alive _caller && alive _owner}do{
mapclick=false;
onMapSingleClick "
munitionBlocked=false;
deleteMarker 'CAS_TARGET';
_marker=createMarker['CAS_TARGET',_pos];
_marker setMarkerType 'mil_destroy';
_marker setMarkerSize[0.5,0.5];
_marker setMarkerColor 'ColorRed';
_marker setMarkerText ' CAS';
_display=uiNamespace getVariable 'casMenu';
_button=_display displayCtrl 100119;
_button ctrlSetTextColor[0,0,0,0];
_button=_display displayCtrl 100112;
nearTargetList=[];
nearestVeh=objNull;
if((player distance _pos)<=maxDisReq)then{
isClicked=true;
_exit=false;
{if((whatIsChecked==0)&&(_x=='JDAM'))exitWith{
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';
_exit=true;};

if((whatIsChecked==1)&&(_x=='CBU'))exitWith{
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';
_exit=true;};

if((whatIsChecked==2)&&(_x=='NONE'))exitWith{
_button ctrlEnable false;
hint 'Selected munition not available!';
playSound 'cantDo';
_exit=true;};
}forEach disabledBomb;
if(_exit)exitWith{};
{_inRestrictedZone=[_x,'CAS_TARGET']call BIS_fnc_inTrigger;
if(_inRestrictedZone)exitWith{playSound 'cantDo';hintSilent 'The selected target position is in a restricted zone!';_button ctrlEnable false;deleteMarker 'CAS_TARGET';_exit=true};
}forEach restrictedZones;
if(_exit)exitWith{};
_button ctrlEnable true;
titleText['','PLAIN DOWN'];
nearTargetVehList=(_pos)nearEntities[['Man','Air','Car','Motorcycle','Tank'],15];
_dist=999;
{if((_x distance _pos<_dist)&&(player knowsAbout _x>2.5))then{
nearestVeh=_x;};
}forEach nearTargetVehList;}else{
hintSilent format['Max distance to target is limited to: %1m',maxDisReq];
playSound 'cantDo';
_button ctrlEnable false;
deleteMarker 'CAS_TARGET';
deleteVehicle locCheck;};
targetPos=_pos;
mapclick=true;
onMapSingleClick '';
true;";

while{true}do{
if(doSnap)then{
_toggle ctrlSetText "<Enabled>";
_toggle ctrlSetTextColor[0,1,0,1];}else{
_toggle ctrlSetText "<Disabled>";
_toggle ctrlSetTextColor[1,0,0,1];};
if(mapclick || !dialog || !alive player)exitWith{};
if((doSnap)&& !isNull nearestVeh)then{
"CAS_TARGET" setMarkerPos(getPos nearestVeh);};
if((player distance targetPos >= 3)&& !(doSnap))then{
"CAS_TARGET" setMarkerPos (targetPos);};
sleep 0.3;};
if(!dialog || !alive player)exitWith{onMapSingleClick "mapclick=false;false"};
sleep 0.123;
};
sleep 0.123;
deleteMarker "maxDist";
if !(casRequest)then{deleteMarker "CAS_TARGET";}else{
[_owner,maxDisReq,_lockToOwner,_num,casType,"CAS_TARGET",_id]execVM "common\client\CAS\CAS.sqf";};