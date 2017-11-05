#define SAFETY_ZONES [["respawn_west",80]]
if(isDedicated)exitWith{};
waitUntil{!isNull player};
player addEventHandler["Fired",{if((_this select 2=="HandGrenadeMuzzle")||(_this select 2=="arifle_MX_F")||(_this select 2=="arifle_MX_Hamr_pointer_F")||(_this select 2=="arifle_MX_pointer_F")||(_this select 2=="arifle_MX_ACO_pointer_F")||(_this select 2=="arifle_MX_RCO_pointer_snds_F")||(_this select 2=="arifle_MXC_ACO_pointer_F")||(_this select 2=="MMG_02_sand_RCO_LP_F")||(_this select 2=="arifle_MX_GL_Holo_pointer_snds_F")||(_this select 2=="hgun_P07_F"))then{
if({(_this select 0)distance getMarkerPos(_x select 0)<_x select 1}count SAFETY_ZONES>0)then{
deleteVehicle(_this select 6);};};}];