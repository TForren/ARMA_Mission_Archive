// Info: RUS VDV Opfor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers

//Infantry Loadouts
//PC - Platoon Commander
//SL - Squad Leader
//FTL - Senior Rifleman
//MG - Machine Gunner
//RPG - RPG Gunner
//RPGA - RPG Assistant
//RIF - Rifleman

//=== Weapons ===

// Primary
#define O_rifle "hlc_rifle_akm"
#define O_rifle2 "hlc_rifle_ak74_dirty"
#define O_rifle3 "hlc_rifle_ak74_dirty2"
#define O_glrifle "hlc_rifle_akmgl"
#define O_carbine "hlc_rifle_aks74u"
#define O_shotgun "hlc_rifle_saiga12k"
#define O_mg "rhs_weap_pkm"
#define O_ar "hlc_rifle_rpk74n"

// Magazines
#define O_riflemag "hlc_30Rnd_762x39_b_ak"
#define O_riflemag_tr "hlc_30Rnd_762x39_t_ak"
#define O_riflemag2 "hlc_30Rnd_545x39_B_AK"
#define O_riflemag2_tr "hlc_30Rnd_545x39_t_ak"
#define O_armag "hlc_45Rnd_545x39_t_rpk"
#define O_buck "hlc_10rnd_12g_buck_S12"
#define O_slug "hlc_10rnd_12g_slug_S12"
#define O_mgmag "rhs_100Rnd_762x54mmR"

// Secondary
#define O_smg "RH_vz61"
#define O_sidearm "RH_mak"
#define O_revolver "RH_Deaglem"
#define O_rsp "rhs_weap_rsp30_red"

// Magazines
#define O_smgmag "RH_20Rnd_32cal_vz61"
#define O_samag "RH_8Rnd_9x18_Mak"
#define O_44mag "RH_7Rnd_50_AE"

// Launchers
#define O_mat "rhs_weap_rpg7"
#define O_rat "rhs_weap_rpg26"
#define O_tat "rhs_weap_rshg2"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"
#define O_mat_tandem "rhs_rpg7_PG7VR_mag"
#define O_mat_thermobaric "rhs_rpg7_TBG7V_mag"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "rhs_mag_rdg2_white"
#define O_smokeo "rhs_mag_nspd"
#define O_chemred "Chemlight_red"

#define O_glhe "hlc_VOG25_AK"
#define O_glsmokewhite "hlc_GRD_White"
#define O_glsmokered "hlc_GRD_Red"
			   
//=== MISC ===
			   
//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"
			   
// CE equipment - what everyone should have
#define O_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_KSF1",1,"uniform"] call FNC_AddItem; \
["rhs_weap_rsp30_red",1,"vest"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
			 
//ACE
#define O_ace_sparebarrel "ACE_SpareBarrel"
#define O_cuffs "ACE_CableTie"
#define O_nana "ACE_Banana"
#define O_toolkit "ToolKit"
#define O_binoculars "Binocular"
#define O_range "rhs_pdu4"
#define O_maptools "ACE_MapTools"
			   
//Radio
#define O_longrange "ACRE_PRC148"
#define O_shortrange "ACRE_PRC343"

//=== Clothes ===

//Uniform              
#define O_default_uniform "rhs_chdkz_uniform_5", "rhs_chdkz_uniform_4", "rhs_chdkz_uniform_3"

//Headgear
#define O_default_headgear_r "rhs_beanie_green", "H_Booniehat_oli"
#define O_gunslinger_hat "LOP_H_Cowboy_hat"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg"
#define O_pilot_backpack "TRYK_O_Coyotebackpack_BLK"

//Vests
#define O_vest_default "V_TacVest_oli"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemGPS"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon
//Platoon Commander
case "O_PC": {
	[O_gunslinger_hat] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
   
	//Uniform
	[O_44mag,2,"uniform"] call FNC_AddItem;
   
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_maptools,1,"uniform"] call FNC_AddItem;
   
	//Vest
	[O_44mag,3,"vest"] call FNC_AddItem;

	//[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
   
	//Weapons
	[O_revolver] call FNC_AddItem;
	["RH_Deflash"] call FNC_AddItem;
};

//Squad Leader
case "O_SL": {
		[O_default_headgear_r] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItemRandom;
[O_vest_default] call FNC_AddItem;
	   
		//Uniform

	   
		O_ace_default;
		[O_maptools,1,"uniform"] call FNC_AddItem;
	   
//Vest
[
[
		["hlc_30Rnd_545x39_t_ak",2,"uniform"],
		["hlc_30Rnd_545x39_t_ak",4,"vest"],
		[O_frag,1,"vest"],
		["hlc_rifle_ak12"],
		[O_samag,2,"vest"],
		[O_sidearm],
		["acc_flashlight"],
		[O_samag,1,"vest"]
		],
[
		[O_riflemag_tr,2,"uniform"],
		[O_riflemag_tr,4,"vest"],
		[O_frag,1,"vest"],
		[O_rifle],
		[O_samag,2,"vest"],
		[O_sidearm],
		[O_samag,1,"vest"]
		],
[
		[O_riflemag_tr,2,"uniform"],
		[O_riflemag_tr,3,"vest"],
		[O_glhe,6,"vest"],
		[O_glsmokewhite,2,"vest"],
		[O_glsmokered,2,"vest"],
		[O_glrifle],
		[O_glhe,1,"vest"]
		]
		] call fnc_AddItemRandom;

   
		//[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
		[O_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		O_default_equipment;
	   
		//Weapons

		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Senior Rifleman
case "O_FTL": {
		[O_default_headgear_r] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItemRandom;
		[O_vest_default] call FNC_AddItem;
	   
		//Uniform
		[O_riflemag,2,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
	   
//Vest
		[
[
		[O_riflemag,1,"vest"],
		[O_glhe,6,"vest"],
		[O_glsmokewhite,2,"vest"],
		[O_glsmokered,2,"vest"],
		[O_glrifle],
		[O_glhe,1,"vest"]
		],
[
		[O_riflemag,1,"vest"],
		[O_glhe,6,"vest"],
		[O_glsmokewhite,2,"vest"],
		[O_glsmokered,2,"vest"],
		[O_glrifle],
		[O_glhe,1,"vest"]
		],
[
		[O_riflemag,2,"vest"],
		[O_frag,2,"vest"],
		[O_smoke,1,"vest"],
		[O_rifle]
		]
		] call fnc_AddItemRandom;
					   
		[O_riflemag_tr,2,"vest"] call FNC_AddItem;
   
		//[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		O_default_equipment;
	   
		//Weapons
		[O_rsp] call FNC_AddItem;

		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Machine Gunner
case "O_MG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
   
	//Uniform

	O_ace_default;
	[O_chemred,1,"uniform"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem;
	[O_cuffs,2,"uniform"] call FNC_AddItem;

	[
		[
			[O_default_backpack],
			[O_samag,2,"uniform"],
			["hlc_45Rnd_545x39_t_rpk",4,"vest"],
			["hlc_45Rnd_545x39_t_rpk",3,"backpack"],
			["hlc_rifle_RPK12"],
			["acc_flashlight"],
			[O_sidearm],
			["hlc_45Rnd_545x39_t_rpk",1,"vest"],
			[O_samag,1,"uniform"]
		],
[
			[O_armag,1,"uniform"],
			[O_armag,6,"vest"],
			[O_ar],
			[O_rsp],
			[O_armag,1,"uniform"]
		],
		[
			[O_armag,1,"uniform"],
			[O_armag,6,"vest"],
			[O_ar],
			[O_rsp],
			[O_armag,1,"uniform"]
		]
	] call fnc_AddItemRandom;

		//Assigned Items
		O_default_equipment;
	   
		//Weapons

};

//RPG Gunner
case "O_RPG": {
[O_default_headgear_r] call FNC_AddItemRandom;
[O_default_uniform] call FNC_AddItemRandom;
		[O_vest_default] call FNC_AddItem;
[O_rpg_backpack] call FNC_AddItem;

//Since the backpack starts with stuff
clearMagazineCargo (unitBackpack _unit);

//Uniform

O_ace_default;

		[
[
		[O_riflemag2,2,"uniform"],
		[O_riflemag2,4,"vest"],
		[O_riflemag2_tr,2,"vest"],
[O_carbine],
[O_riflemag2,1,"uniform"],
[O_frag,1,"vest"]
		],
[
		[O_smgmag,3,"uniform"],
		[O_smgmag,8,"vest"],
[O_smg],
[O_frag,1,"vest"]
		]
		] call fnc_AddItemRandom;

		//[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;

//Backpack
[O_mat_heat,2,"backpack"] call FNC_AddItem;
[O_mat_frag,2,"backpack"] call FNC_AddItem;
[O_smoke,1,"backpack"] call FNC_AddItem;

//Assigned Items
O_default_equipment;

//Weapons
[O_mat] call FNC_AddItem;
[O_rsp] call FNC_AddItem;

//Extra Mag
[O_mat_heat,1,"backpack"] call FNC_AddItem;
};

//RPG Gunner Assistant
case "O_RPGA": {
[O_default_headgear_r] call FNC_AddItemRandom;
[O_default_uniform] call FNC_AddItemRandom;
		[O_vest_default] call FNC_AddItem;
[O_rpg_backpack] call FNC_AddItem;

//Since the backpack starts with stuff
clearMagazineCargo (unitBackpack _unit);

//Uniform

O_ace_default;

		[
[
		[O_riflemag2,2,"uniform"],
		[O_riflemag2,4,"vest"],
		[O_riflemag2_tr,2,"vest"],
[O_carbine],
[O_riflemag2,1,"uniform"],
[O_frag,1,"vest"]
		],
[
		[O_riflemag2,2,"uniform"],
		[O_riflemag2,4,"vest"],
		[O_riflemag2_tr,2,"vest"],
[O_rifle2],
[O_riflemag2,1,"uniform"],
[O_frag,1,"vest"]
		],
[
		[O_riflemag2,2,"uniform"],
		[O_riflemag2,4,"vest"],
		[O_riflemag2_tr,2,"vest"],
[O_rifle3],
[O_riflemag2,1,"uniform"],
[O_frag,1,"vest"]
		]
		] call fnc_AddItemRandom;

		//[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;

//Backpack
[O_mat_heat,2,"backpack"] call FNC_AddItem;
[O_mat_frag,2,"backpack"] call FNC_AddItem;

//Assigned Items
O_default_equipment;

//Weapons
[O_binoculars] call FNC_AddItem;
[O_rsp] call FNC_AddItem;

//Extra Mag
};

//Rifleman
case "O_RIF": {
		[O_default_headgear_r] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItemRandom;
		[O_vest_default] call FNC_AddItem;
	   
		//Uniform
	   
		O_ace_default;

		[
[
		["hlc_30Rnd_545x39_t_ak",2,"uniform"],
		["hlc_30Rnd_545x39_t_ak",4,"vest"],
		["hlc_rifle_ak12"],
		["acc_flashlight"],
		["hlc_30Rnd_545x39_t_ak",1,"uniform"],
		[O_frag,1,"vest"]
		],
[
		["hlc_30Rnd_762x39_t_ak",2,"uniform"],
		["hlc_30Rnd_762x39_t_ak",4,"vest"],
		[O_rifle],
		[O_frag,1,"vest"]
		],
[
		["hlc_30Rnd_545x39_t_ak",2,"uniform"],
		["hlc_30Rnd_545x39_t_ak",4,"vest"],
		[O_rifle2],
		[O_frag,1,"vest"]
		],
[
		["hlc_30Rnd_545x39_t_ak",2,"uniform"],
		["hlc_30Rnd_545x39_t_ak",4,"vest"],
		[O_rifle3],
		[O_frag,1,"vest"]
		],
[
		[O_buck,2,"uniform"],
		[O_buck,2,"vest"],
		[O_slug,4,"vest"],
		[O_shotgun],
		[O_buck,1,"uniform"],
		[O_frag,1,"vest"]
		]
		] call fnc_AddItemRandom;

		//[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;

		//Assigned Items
		O_default_equipment;
	   
		//Weapons
		[O_rsp] call FNC_AddItem;

		//Extra Mag
};