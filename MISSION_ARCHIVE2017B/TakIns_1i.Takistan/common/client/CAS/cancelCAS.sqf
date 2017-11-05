_id=_this select 2;
abortCAS=true;
player removeAction _id;
deleteMarker "CAS_TARGET";
_vehName=vehicleVarName player;
_variables=varHolder getVariable _vehName;
_maxDist=_variables select 0;
_lock=_variables select 1;
_num=_variables select 2;

if(alive player)then{
(leader _grp)sideChat "HOG 1 copies.  Waving off and on standby.";
_str=format["<t color='#FF9000'>Request CAS</t>",_num];
player addAction[_str,"common\client\CAS\casMenu.sqf",[_maxDist,_lock,_num],-1,false,true,""];};