/* STANDARD INFANTRYMAN */

/*Clearing Set*/
removeAllWeapons _this;
removeUniform _this;
removeBackpack _this;
removeVest _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_Cap_tan_specops_US";
_this addvest "V_Chestrig_oli";
_this adduniform "U_B_CombatUniform_mcam_tshirt";

/*Weapons - Primary*/
_this addMagazines["20Rnd_762x51_Mag", 5];
_this addweapon "srifle_EBR_F";
_this addPrimaryWeaponItem "optic_SOS";
_this addPrimaryWeaponItem "acc_pointer_IR";

/*Weapons - Sidearm*/
_this addMagazines["9Rnd_45ACP_Mag",3];
_this addweapon "hgun_ACPC2_F";
_this addHandgunItem "muzzle_snds_acp";

/*Weapons- Launcher*/

/*Gear*/
_this addItem "FirstAidKit";
_this addMagazine "HandGrenade";
_this addMagazine "HandGrenade";
_this addMagazine "SmokeShellBlue";
_this addMagazine "SmokeShell";
_this addMagazine "SmokeShell";
_this addMagazine "APERSTripMine_Wire_Mag";