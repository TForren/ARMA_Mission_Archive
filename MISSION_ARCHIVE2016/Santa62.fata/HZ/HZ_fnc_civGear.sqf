_unit = _this select 0;

_uniforms = ["CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"];

_headgear = ["CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", \
"CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06", \
"CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_02", \
"CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", \
"CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"];

_faces = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"];

removeallweapons _unit;
_unit addheadgear (_headgear call BIS_fnc_selectRandom);
_unit forceadduniform (_uniforms call BIS_fnc_selectRandom);
_unit setFace (_faces call BIS_fnc_selectRandom);

//_civChat = _unit addAction [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"];

_civChat = [_unit, [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"]] remoteExec [ "addAction", 0, true];