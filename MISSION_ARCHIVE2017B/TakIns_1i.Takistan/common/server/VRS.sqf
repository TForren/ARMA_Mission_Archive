/*Author: Iceman77  ~  Modified by Phronk
Params:
_this select 0: vehicle
_this select 1: abandoned delay in minute(s) - Required
_this select 2: destroyed delay in minute(s) - Required
_this select 3: Function to call for the newly spawned vehicle (for custom armaments etc) - Optional

Paste Into Vehicle Init Line:
_nul=[this,2,1,{[_this]call TAG_FNC_TankInit}] execVM "common\server\VRS.sqf"; << 2 minute abandoned delay, 1 minute destroyed delay, call the function that disables the TI
_nul=[this,2,1,{}]execVM "common\server\VRS.sqf"; << 2 mins abandoned delay, 1 min destroyed delay, NO function called for the newly respawned vehicle (standard way)*/
private "_veh";
_veh=_this select 0;
_abandonDelay=(_this select 1)*600;
_deadDelay=(_this select 2)*180;
_vehInit=_this select 3;
_dir=getDir _veh;
_pos=getPos _veh;
_vehtype=typeOf _veh;
_vehName=vehicleVarName _veh;

if(isServer)then{
While{true}Do{
sleep 1;
if((alive _veh)&&{canMove _veh}&&{{alive _x}count crew _veh isEqualTo 0})then{
_abandoned=true;
	for "_i" from 0 to _abandonDelay do{
	if(({alive _x}count(crew _veh)>0)||(!alive _veh)||(!canMove _veh))exitWith{_abandoned=false;};
sleep 1;};
	if((_abandoned)&&{_veh distance _pos>10})then{
	deleteVehicle _veh;
sleep 1;
	_veh=createVehicle[_vehtype,_pos,[],0,"CAN_COLLIDE"];
	_veh setDir _dir;_veh setPos[_pos select 0,_pos select 1,0];
	clearItemCargoGlobal _veh;clearBackpackCargoGlobal _veh;_veh setDamage 0;_veh lock 0;
	if(_veh isKindOf "B_Heli_Light_01_F")then{_veh setObjectTextureGlobal[0,"\A3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"];};
	if(_veh isKindOf "B_Heli_Light_01_armed_F")then{_veh setObjectTextureGlobal[0,"\A3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"];};
	if(_veh isKindOf "I_APC_tracked_03_cannon_F")then{_veh setObjectTextureGlobal[0,'#(rgb,8,8,3)color(0.635,0.576,0.447,0.35)'];_veh setObjectTextureGlobal[1,'#(rgb,8,8,3)color(0.635,0.576,0.447,0.35)'];};
missionNamespace setVariable[_vehName,_veh];
publicVariable _vehName;
_veh call _vehInit;};
};
if((!alive _veh)||(!canMove _veh))then{
_dead=true;
for "_i" from 0 to _deadDelay do{
if(({alive _x}count(crew _veh)>0)||(canMove _veh))exitWith{_dead=false;};
sleep 1;};
	if(_dead)then{
	deleteVehicle _veh;
sleep 1;
	_veh=createVehicle[_vehtype,_pos,[],0,"CAN_COLLIDE"];
	_veh setDir _dir;_veh setPos[_pos select 0,_pos select 1,0];
	clearItemCargoGlobal _veh;clearBackpackCargoGlobal _veh;_veh setDamage 0;_veh lock 0;
	if(_veh isKindOf "B_Heli_Light_01_F")then{_veh setObjectTextureGlobal[0,"\A3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"];};
	if(_veh isKindOf "B_Heli_Light_01_armed_F")then{_veh setObjectTextureGlobal[0,"\A3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"];};
	if(_veh isKindOf "I_APC_tracked_03_cannon_F")then{_veh setObjectTextureGlobal[0,'#(rgb,8,8,3)color(0.635,0.576,0.447,0.35)'];_veh setObjectTextureGlobal[1,'#(rgb,8,8,3)color(0.635,0.576,0.447,0.35)'];};
missionNamespace setVariable[_vehName,_veh];
publicVariable _vehName;
_veh call _vehInit;};};};};