/* DEFAULT DA NAVY SEAL*/

/*Clearing Set*/
removeAllWeapons _this;

removeGoggles _this;
removeHeadgear _this;
removeVest _this;
removeUniform _this;
removeBackpack _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_mas_usn_Balaclava_ht_b";
_this addVest "V_mas_usr_PlateCarrier1_rgr_g";
_this addUniform "U_mas_usn_B_CombatUniform_sage";
_this addBackPack "B_AssaultPack_blk";

/*Weapons - Primary*/
_this addMagazines["20Rnd_mas_762x51_Stanag", 6];
_this addMagazines["20Rnd_mas_762x51_T_Stanag", 3];
_this addWeapon "arifle_mas_hk417c_sd";
_this addPrimaryWeaponItem "optic_MRCO";
_this addPrimaryWeaponItem "acc_pointer_IR";
_this addPrimaryWeaponItem "optic_MRCO";
_this addPrimaryWeaponItem "acc_pointer_IR";
		

/*Weapons - Sidearm*/
_this addMagazines["12Rnd_mas_45acp_Mag", 3];
_this addWeapon "hgun_mas_usp_l_F_sd";


/*Weapons- Launcher*/

/*Gear*/
_this addItem "FirstAidKit";
_this addMagazine "HandGrenade";
_this addMagazine "HandGrenade";
_this addMagazine "Chemlight_blue";
_this addMagazine "Chemlight_blue";
_this addMagazine "Chemlight_blue";
(unitBackpack _this) addMagazineCargo ["SmokeShell",2];
_this addMagazine "SmokeShellRed";
_this addMagazine "SmokeShellBlue";