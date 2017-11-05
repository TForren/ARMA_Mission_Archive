/*//////////=ATM= Airdrop//////
//Script by:	=ATM=Pokertour
//Modified by:	Phronk
/////////////////////////////*/
private["_position","_cut","_dialog","_s_alt","_s_alt_text","_sound","_sound2","_soundPath"];
waitUntil{!isNull player};
[]execVM "common\client\ATM_airdrop\fn.sqf";
_position=getPos player;
_z=_position select 2;
Altitude=750;
hint Localize "STR_ATM_hinton";
openMap true;
createDialog "ATM_AD_ALTITUDE_SELECT";
disableSerialization;
_dialog=findDisplay 2900;
_s_alt=_dialog displayCtrl 2901;
_s_alt_text=_dialog displayCtrl 2902;
_s_alt_text ctrlSetText format["%1",Altitude];
_s_alt sliderSetRange[500,20000];
_s_alt sliderSetSpeed[100,100,100];
_s_alt sliderSetPosition Altitude;

Keys=0;
_ctrl=_dialog displayCtrl 2903;
{_index=_ctrl lbAdd _x;}forEach["Fr Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","US Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
lbSetCurSel[2903,0];

ATM_Jump_mapclick=false;
onMapSingleClick "ATM_Jump_clickpos=_pos;ATM_Jump_mapclick=true;onMapSingleClick '';true;";
waitUntil{ATM_Jump_mapclick or !(visibleMap)};
if(!visibleMap)exitWith{
systemChat "HALO jump cancelled.";
breakOut "main";};

_pos=ATM_Jump_clickpos;
ATM_Jump_mapclick=if(true)then{
call compile format['
mkr_halo=createMarker["mkr_halo",ATM_Jump_Clickpos];
"mkr_halo" setMarkerTypeLocal "hd_dot";
"mkr_halo" setMarkerColorLocal "ColorGreen";
"mkr_halo" setMarkerTextLocal "Jump";'];};
_target=player;
IrOn=_target addAction["<t color='#FF00CC'>IR Strobe On</t>","common\client\ATM_airdrop\chemOn.sqf",["NVG_TargetC"],6,false,false,"","_target==(player)"];

_loadout=[_target]call getLoadout;
_posJump=getMarkerPos "mkr_halo";
_x=_posJump select 0;
_y=_posJump select 1;
_z=_posJump select 2;
_target setPos[_x,_y,_z+Altitude];
titleText["","BLACK OUT",0.001];
openMap false;deleteMarker "mkr_halo";
sleep 0.1;titleText["","BLACK IN",6];
0=[_target]call Frontpack;
_target allowDamage false;

removeBackpack _target;
sleep 0.5;
_target addBackpack "B_Parachute";
if((getPos _target select 2)>=8000)then{
removeHeadgear _target;_target addHeadgear "H_CrewHelmetHeli_B";
sleep 0.5;};

hintSilent "";
hint Localize "STR_ATM_hintjump";
Cut_Rope=(FindDisplay 46)displayAddEventHandler["keydown","_this call dokeyDown"];
_height=getPos _target select 2;

while{(getPos _target select 2)>2}do{
//if((getPos vehicle _target)select 2<=1)
if(isTouchingGround _target and isNull objectParent player)
then{_target removeItem "B_Parachute";deleteVehicle vehicle _target;}else{
playSound "Vent";playSound "Vent2";
sleep 5;};
if((!isClass(configFile>>"cfgPatches">>"ace_parachute"))&&{getPos _target select 2<300})then{
_target action["OpenParachute",_target];playSound "Para";};
if(getPos _target select 2<7)then{
deleteVehicle vehicle _target;_target allowDamage false;sleep 2.5;_target allowDamage true;};
if(!alive _target)then{
_target setPos[getPos _target select 0,getPos _target select 1,0];
0=[_target,_loadout]call setLoadout;};};
hint Localize "STR_ATM_hintload";
_target removeAction Iron;
deleteVehicle(_target getVariable "frontpack");_target setVariable["frontpack",nil,true];
deleteVehicle(_target getVariable "lgtarray");_target setVariable["lgtarray",nil,true];
(findDisplay 46)displayRemoveEventHandler["KeyDown",Cut_Rope];
sleep 3;hintSilent "";sleep 1;
0=[_target,_loadout]call setLoadout;_target setVariable["tcb_ais_agony",false,true];
if(true)exitWith{};