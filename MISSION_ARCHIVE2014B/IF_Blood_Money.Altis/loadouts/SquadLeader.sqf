/* Squad Leader */

/*Clearing Set*/
removeAllWeapons _this;
removeUniform _this;
removeBackpack _this;
removeVest _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_Booniehat_mcamo";
_this addvest "V_BandollierB_cbr";
_this adduniform "U_B_CombatUniform_mcam_vest";
_this addbackpack "B_FieldPack_cbr";

/*Weapons - Primary*/
_this addMagazines["30Rnd_65x39_caseless_mag", 6];
_this addweapon "arifle_MX_F";
_this addPrimaryWeaponItem "optic_Hamr";
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
_this addMagazine "SmokeShell";
_this addMagazine "SmokeShell";
(unitBackpack _this) addMagazineCargo ["SmokeShellRed",2];
(unitBackpack _this) addMagazineCargo ["SmokeShellOrange",2];
(unitBackpack _this) addMagazineCargo ["SmokeShellYellow",2];
(unitBackpack _this) addMagazineCargo ["SmokeShellGreen",2];
(unitBackpack _this) addMagazineCargo ["SmokeShellBlue",2];
(unitBackpack _this) addMagazineCargo ["SmokeShellPurple",2];