_unit = _this select 0;

_uniforms = ["LOP_U_TAK_Civ_Fatigue_15", "LOP_U_TAK_Civ_Fatigue_16", "LOP_U_TAK_Civ_Fatigue_13", \
"LOP_U_TAK_Civ_Fatigue_14", "LOP_U_TAK_Civ_Fatigue_04", "LOP_U_TAK_Civ_Fatigue_12", "LOP_U_TAK_Civ_Fatigue_11", \
"LOP_U_TAK_Civ_Fatigue_09", "LOP_U_TAK_Civ_Fatigue_02", "LOP_U_TAK_Civ_Fatigue_10", "LOP_U_TAK_Civ_Fatigue_01", \
"LOP_U_TAK_Civ_Fatigue_05","LOP_U_TAK_Civ_Fatigue_07","LOP_U_TAK_Civ_Fatigue_08","LOP_U_TAK_Civ_Fatigue_06Z"];

_headgear = ["LOP_H_Turban","LOP_H_Pakol","H_Hat_Turban_D","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Pagri_C","H_Hat_Turban_E","H_Hat_Pagri_B","H_Hat_Turban_B","H_Hat_Taqiyah_B","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E","H_Hat_Taqiyah_C","H_Hat_Taqiyah_A","H_Hat_Pakol","H_Hat_Ghutra","H_Hat_Ghutra_A"];

_faces = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"];

removeallweapons _unit;
_unit addheadgear (_headgear call BIS_fnc_selectRandom);
_unit forceadduniform (_uniforms call BIS_fnc_selectRandom);
_unit setFace (_faces call BIS_fnc_selectRandom);

//_civChat = _unit addAction [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"];

_civChat = [_unit, [format ["Talk To %1",(name _unit)], "HZ\civilians\HZ_fnc_talkToCiv.sqf"]] remoteExec [ "addAction", 0, true];