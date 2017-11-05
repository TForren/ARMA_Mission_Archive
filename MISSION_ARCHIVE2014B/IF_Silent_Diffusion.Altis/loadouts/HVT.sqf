/*Rebel HVT*/

/*Clearing Set*/
removeAllWeapons _this;

removeGoggles _this;
removeHeadgear _this;
removeVest _this;
removeUniform _this;
removeBackpack _this;


_this unassignItem "NVGoggles_OPFOR"; 
_this removeItem "NVGoggles_OPFOR";

_this addHeadgear "H_Hat_checker";
_this addUniform "U_NikosBody";
_this addVest "V_mas_afr_Rangemaster_belt";

