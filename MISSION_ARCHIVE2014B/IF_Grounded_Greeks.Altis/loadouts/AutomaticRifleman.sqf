/* STANDARD INFANTRYMAN */

/*Clearing Set*/
removeAllWeapons _this;
removeUniform _this;
removeBackpack _this;
removeVest _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_Bandanna_mcamo";
_this addvest "V_HarnessO_brn";
_this adduniform "U_B_CombatUniform_mcam_tshirt";

/*Weapons - Primary*/
_this addMagazines["200Rnd_65x39_cased_Box_Tracer", 4];
_this addweapon "LMG_Mk200_F";
_this addPrimaryWeaponItem "optic_Arco";
_this addPrimaryWeaponItem "acc_pointer_IR";

/*Weapons - Sidearm*/

/*Weapons- Launcher*/

/*Gear*/
_this addItem "FirstAidKit";
_this addMagazine "HandGrenade";
_this addMagazine "HandGrenade";
_this addMagazine "SmokeShell";
_this addMagazine "SmokeShell";
