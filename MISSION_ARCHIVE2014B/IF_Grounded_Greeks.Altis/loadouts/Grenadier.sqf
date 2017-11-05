/*Grenadier*/

/*Clearing Set*/
removeAllWeapons _this;
removeUniform _this;
removeBackpack _this;
removeVest _this;

/*Wearing*/
_this addGoggles "G_Lowprofile";
_this addHeadgear "H_HelmetB_light";
_this addvest "V_HarnessOGL_brn";
_this adduniform "U_B_CombatUniform_mcam";

/*Weapons - Primary*/
_this addMagazines["30Rnd_65x39_caseless_mag", 6];
_this addweapon "arifle_MX_GL_F";
_this addPrimaryWeaponItem "optic_MRCO";
_this addPrimaryWeaponItem "acc_pointer_IR";

/*Weapons - Sidearm*/

/*Weapons- Launcher*/

/*Gear*/
_this addItem "FirstAidKit";
_this addMagazine "MiniGrenade";
_this addMagazines["1Rnd_HE_Grenade_Shell", 8];
_this addMagazines["1Rnd_Smoke_Grenade_Shell", 2];
_this addMagazine "1Rnd_SmokeRed_Grenade_Shell";
_this addMagazine "1Rnd_SmokeGreen_Grenade_Shell";
