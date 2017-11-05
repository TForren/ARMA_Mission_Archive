/*Clearing Set*/
removeUniform _this;
removeBackpack _this;
removeVest _this;
removeHeadgear _this;
_this unassignItem "NVGoggles"; 
_this removeItem "NVGoggles";

_hat = ["H_Bandanna_surfer", "H_Booniehat_dirty", "H_Cap_tan", "H_Cap_blu", "H_Cap_blk", "H_Hat_grey", "H_StrawHat_dark", "H_Cap_oli", " ", " ", " "] call BIS_fnc_selectRandom;
_clothes = ["U_mas_afr_C_civil3", "U_mas_afr_C_civil3", "U_mas_afr_C_civil4", "U_mas_afr_C_civil5", "U_mas_afr_C_civil6"] call BIS_fnc_selectRandom;
_vest = ["V_Rangemaster_belt", "V_BandollierB_khk", "V_BandollierB_oli", "V_BandollierB_cbr", " ", " ", " "] call BIS_fnc_selectRandom;
_face = ["WhiteHead_01", "WhiteHead_02", "WhiteHead_03", "WhiteHead_04", "WhiteHead_05", "WhiteHead_06", "WhiteHead_07", "WhiteHead_08", "WhiteHead_09", " "] call BIS_fnc_selectRandom;

_this addHeadgear _hat;
_this addVest _vest;
_this addUniform _clothes;
_this setFace _face;
