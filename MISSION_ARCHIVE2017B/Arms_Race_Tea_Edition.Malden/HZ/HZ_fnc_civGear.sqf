_unit = _this select 0;

_uniforms = ["U_C_HunterBody_grn", "U_OrestesBody", "U_C_Journalist", "U_Marshal", "U_C_Poor_1", "U_C_Poloshirt_blue", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_redwhite", "U_C_Poloshirt_salmon", "U_C_Poloshirt_stripped", "U_C_Poloshirt_tricolour","U_C_Man_casual_5_F","U_C_Man_casual_4_F","U_C_Man_casual_3_F","U_C_Man_casual_2_F","U_C_Man_casual_1_F"];

_headgear = ["rhs_Booniehat_digi","H_Bandanna_sgg","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","rhs_beanie_green","rhs_beanie","H_Booniehat_dgtl","rhsusf_bowman_cap","H_Cap_blk_Raven","rds_rocker_hair2","rds_rocker_hair1","rds_rocker_hair3"];

_faces = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"];

removeallweapons _unit;
_unit addheadgear (_headgear call BIS_fnc_selectRandom);
_unit forceadduniform (_uniforms call BIS_fnc_selectRandom);
_unit setFace (_faces call BIS_fnc_selectRandom);

//_civChat = _unit addAction [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"];

_civChat = [_unit, [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"]] remoteExec [ "addAction", 0, true];