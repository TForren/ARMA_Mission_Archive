/* ASSISTANT AT*/

/*Clearing Set*/
removeAllWeapons _this;
removeUniform _this;
removeBackpack _this;
removeVest _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_HelmetB_light";
_this addvest "V_PlateCarrier2_rgr";
_this adduniform "U_B_CombatUniform_mcam";
_this addbackpack "B_AssaultPack_cbr";

/*Weapons - Primary*/
_this addMagazines["30Rnd_65x39_caseless_mag", 6];
_this addweapon "arifle_MX_F";
_this addPrimaryWeaponItem "optic_MRCO";
_this addPrimaryWeaponItem "acc_pointer_IR";

/*Weapons - Sidearm*/

/*Weapons- Launcher*/

/*Gear*/
_this addItem "FirstAidKit";
_this addMagazine "HandGrenade";
_this addMagazine "HandGrenade";
_this addMagazine "SmokeShellRed";
_this addMagazine "SmokeShell";
_this addMagazine "SmokeShell";
(unitBackpack _this) addMagazineCargo ["Titan_AT",2];