// Info: RUS Spetsnaz Opfor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers

//Infantry Loadouts
//SL - Squad Leader
//FTL - Senior Rifleman
//MG - Machine Gunner
//MGA - Machine Gunner Assistant
//RIF - Rifleman
//GRE - Grenadier
//MARK - Marksman


//=== Weapons ===

// Primary
#define O_rifle "rhs_weap_ak103"
#define O_glrifle "rhs_weap_ak103_gp25"
#define O_glrifle2 "rhs_weap_ak103_gp25_npz"
#define O_dmr "rhs_weap_svds"
#define O_dmr2 "rhs_weap_vss_grip"
#define O_mg "rhs_weap_pkp"
#define O_val "rhs_weap_asval_grip"
#define O_val2 "rhs_weap_asval_grip_npz"

// Magazines
#define O_riflemag "rhs_30Rnd_762x39mm_U"
#define O_riflemag_tr "rhs_30Rnd_762x39mm_tracer"
#define O_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define O_mgmag "rhs_100Rnd_762x54mmR"
#define O_sp5 "rhs_10rnd_9x39mm_SP5"
#define O_sp6 "rhs_20rnd_9x39mm_SP6"

// Secondary
#define O_sidearm "CUP_hgun_PB6P9"
#define O_sidearm2 "rhs_weap_pya"
#define O_rsp "rhs_weap_rsp30_red"

// Magazines
#define O_samag "CUP_8Rnd_9x18_MakarovSD_M"
#define O_sa2mag "rhs_mag_9x19_17"

// Launchers
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"
#define O_tat "rhs_weap_rshg2"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"
#define O_mat_tandem "rhs_rpg7_PG7VR_mag"
#define O_mat_thermobaric "rhs_rpg7_TBG7V_mag"
#define O_ratmag "rhs_rpg26_mag"

// Attachments
#define O_rifle_scope "rhs_acc_1p29"
#define O_rifle_scope2 "rhs_acc_1p78"
#define O_red_dot "rhs_acc_ekp1"
#define O_red_dot2 "rhs_acc_pkas"
#define O_pso "rhs_acc_pso1m2"
#define O_pso2 "rhs_acc_pso1m21"
#define O_rak "rhs_acc_rakursPM"
#define O_akmb "rhs_acc_dtk4screws"
#define O_pbsd "CUP_muzzle_PB6P9"
#define O_tgpv "rhs_acc_tgpv"
#define O_fl "rhs_acc_2dpZenit"
#define O_ls "rhs_acc_perst1ik"
#define O_lsris "rhs_acc_perst1ik_ris"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "rhs_mag_rdg2_white"
#define O_smokeo "rhs_mag_nspd"
#define O_chemred "Chemlight_red"
#define O_flash "rhs_mag_plamyam"

#define O_glhe "rhs_VOG25"
#define O_glbouncehe "rhs_VOG25p"
#define O_glsmokewhite "rhs_GRD40_white"
#define O_glsmokered "rhs_GRD40_red"
#define O_glsmokeinstant "rhs_GDM40"
#define O_glstun "rhs_VG40SZ"
			   
//=== MISC ===
			   
//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"
			   
// CE equipment - what everyone should have
#define O_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_KSF1",1,"uniform"] call FNC_AddItem; \
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
#define O_default_uniform "rhs_uniform_gorka_r_g"
#define O_pilot_uniform "rhs_uniform_df15"

//Headgear
#define O_default_headgear "rhs_6b47_bala","rhs_6b47_ess_bala"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg"

//Vests
#define O_vest_default "rhs_6b23_6sh116"
#define O_vest_grenadier "rhs_6b23_6sh116_vog"
#define O_vest_sniper "rhs_6b23_digi_sniper"
#define O_vest_leader "rhs_6b23_digi_6sh92_headset_spetsnaz"
#define O_vest_pilot "rhs_6sh46"

//Goggles
#define O_nvg "rhs_1PN138"

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

//Squad Leader
case "O_SL": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
[O_vest_leader] call FNC_AddItem;
	   
		//Uniform
		[O_sp6,2,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
		[O_maptools,1,"uniform"] call FNC_AddItem;

//Vest
[
		[[O_sp6,4,"vest"],
		[O_samag,1,"vest"],
		[O_val],
		[O_pso2],
		[O_frag,1,"vest"],
		[O_smoke,1,"vest"],
		[O_chemred,1,"vest"],
		[O_cuffs,2,"vest"],
		[O_shortrange,1,"vest"]
],
		[[O_sp6,4,"vest"],
		[O_samag,1,"vest"],
		[O_val],
		[O_red_dot],
		[O_frag,1,"vest"],
		[O_smoke,1,"vest"],
		[O_chemred,1,"vest"],
		[O_cuffs,2,"vest"],
		[O_shortrange,1,"vest"]
		],
		[[O_sp6,4,"vest"],
		[O_samag,1,"vest"],
		[O_val2],
		[O_rak],
		[O_frag,1,"vest"],
		[O_smoke,1,"vest"],
		[O_chemred,1,"vest"],
		[O_cuffs,2,"vest"],
		[O_shortrange,1,"vest"]
		]
		] call fnc_AddItemRandom;

		//Assigned Items
		O_leader_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_range] call FNC_AddItem;
		[O_tat] call FNC_AddItem;
[O_sidearm] call FNC_AddItem;
	   
		//Attachments
[O_pbsd] call FNC_AddItem;
[O_lsris] call FNC_AddItem;
	   
		//Extra Mag
		[O_sp6,1,"uniform"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;
};

//Senior Rifleman
case "O_FTL": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
[O_vest_grenadier] call FNC_AddItem;
	   
		//Uniform
		[O_riflemag,2,"uniform"] call FNC_AddItem;

		O_ace_default;

//Vest
		[
[
[O_riflemag,4,"vest"],
[O_samag,1,"vest"],
[O_glbouncehe,10,"vest"],
[O_glrifle],
[O_red_dot],
[O_glsmokeinstant,2,"vest"],
[O_glstun,2, "vest"],
		[O_chemred,1,"vest"],
		[O_shortrange,1,"vest"],
		[O_cuffs,2,"vest"]
		],
[
[O_riflemag,4,"vest"],
[O_samag,1,"vest"],
[O_glbouncehe,10,"vest"],
[O_glrifle],
[O_pso2],
[O_glsmokeinstant,2,"vest"],
[O_glstun,2, "vest"],
		[O_chemred,1,"vest"],
		[O_shortrange,1,"vest"],
		[O_cuffs,2,"vest"]
		],
[
[O_riflemag,4,"vest"],
[O_samag,1,"vest"],
[O_glbouncehe,10,"vest"],
[O_glrifle2],
[O_rak],
[O_glsmokeinstant,2,"vest"],
[O_glstun,2, "vest"],
		[O_chemred,1,"vest"],
		[O_shortrange,1,"vest"],
		[O_cuffs,2,"vest"]
		]
		] call fnc_AddItemRandom;

		//Assigned Items
		O_leader_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_tat] call FNC_AddItem;
[O_sidearm] call FNC_AddItem;
	   
		//Attachments
		[O_akmb] call FNC_AddItem;
[O_pbsd] call FNC_AddItem;
	   
		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
[O_glbouncehe,1,"vest"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;
};

//Machine Gunner
case "O_MG": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
		[O_vest_default] call FNC_AddItem;
		[O_default_backpack] call FNC_AddItem;
	   
		//Uniform
		[O_samag,2,"uniform"] call FNC_AddItem;

		O_ace_default;
		[O_chemred,1,"uniform"] call FNC_AddItem;
		[O_shortrange,1,"uniform"] call FNC_AddItem;
		[O_cuffs,2,"uniform"] call FNC_AddItem;
	   
		//Vest
		[O_mgmag,2,"vest"] call FNC_AddItem;
	   
		//Backpack
		[O_mgmag,2,"backpack"] call FNC_AddItem;
		[O_frag,1,"backpack"] call FNC_AddItem;
	   
		//Assigned Items
		O_default_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_mg] call FNC_AddItem;
		[O_sidearm] call FNC_AddItem;

		//Attachments
[O_rifle_scope] call fnc_AddItem;
[O_pbsd] call FNC_AddItem;

		//Extra Mag
		[O_mgmag,1,"vest"] call FNC_AddItem;
		[O_samag,1,"uniform"] call FNC_AddItem;
};

// Machine Gunner Assistant
case "O_MGA": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
		[O_vest_default] call FNC_AddItem;
		[O_default_backpack] call FNC_AddItem;
	   
		//Uniform
		[O_riflemag,2,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
		//Vest
		[O_riflemag,6,"vest"] call FNC_AddItem;
[O_samag,2,"vest"] call FNC_AddItem;

		[O_frag,1,"vest"] call FNC_AddItem;
[O_smoke,1,"vest"] call FNC_AddItem;
[O_flash,1, "vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;
	   
		//Backpack
		[O_mgmag,3,"backpack"] call FNC_AddItem;
		[O_smoke,1,"backpack"] call FNC_AddItem;
	   
		//Assigned Items
		O_default_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_rifle] call FNC_AddItem;
		[O_rat] call FNC_AddItem;
[O_sidearm] call FNC_AddItem;
		[O_binoculars] call FNC_AddItem;

		//Attachments
		[O_akmb] call FNC_AddItem;
[O_red_dot2] call fnc_AddItem;
[O_ls] call fnc_AddItem;
[O_pbsd] call FNC_AddItem;

		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;
};

//Rifleman
case "O_RIF": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
		[O_vest_default] call FNC_AddItem;
	   
		//Uniform
		[O_riflemag,2,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
	   
		//Vest
		[O_riflemag,6,"vest"] call FNC_AddItem;
[O_samag,2,"vest"] call FNC_AddItem;

		[O_frag,2,"vest"] call FNC_AddItem;
[O_smoke,1,"vest"] call FNC_AddItem;
[O_flash,1, "vest"] call FNC_AddItem;
		[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		O_default_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_rifle] call FNC_AddItem;
[O_sidearm] call FNC_AddItem;
		[O_rat] call FNC_addItem;

		//Attachments
		[O_akmb] call FNC_AddItem;
[O_red_dot2] call fnc_AddItem;
[O_ls] call fnc_AddItem;
[O_pbsd] call FNC_AddItem;

		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;
};

//Grenadier
case "O_GRE": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
		[O_vest_grenadier] call FNC_AddItem;
	   
		//Uniform
		[O_riflemag,2,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
	   
		//Vest
[O_riflemag,4,"vest"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;

[O_glbouncehe,10,"vest"] call FNC_AddItem;
[O_glsmokeinstant,2,"vest"] call FNC_AddItem;
[O_glstun,2, "vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		O_default_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_rifle] call FNC_AddItem;
[O_sidearm] call FNC_AddItem;
		[O_rat] call FNC_addItem;

		//Attachments
		[O_akmb] call FNC_AddItem;
[O_red_dot2] call fnc_AddItem;
[O_pbsd] call FNC_AddItem;

		//Extra Mag
		[O_riflemag,1,"uniform"] call FNC_AddItem;
[O_samag,1,"vest"] call FNC_AddItem;
};

//Marksman
case "O_MARK": {
		[O_default_headgear] call FNC_AddItemRandom;
		[O_default_uniform] call FNC_AddItem;
		[O_vest_sniper] call FNC_AddItem;
	   
		//Uniform
		[O_dmrmag,4,"uniform"] call FNC_AddItem;
	   
		O_ace_default;
	   
		//Vest
		[O_dmrmag,6,"vest"] call FNC_AddItem;
		[O_samag,2,"vest"] call FNC_AddItem;
	   
		[O_cuffs,2,"vest"] call FNC_AddItem;
		[O_frag,1,"vest"] call FNC_AddItem;
		[O_smoke,1,"vest"] call FNC_AddItem;
		[O_chemred,1,"vest"] call FNC_AddItem;
		[O_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		O_default_equipment;
[O_nvg] call FNC_AddItem;
	   
		//Weapons
		[O_dmr] call FNC_AddItem;
		[O_sidearm] call FNC_AddItem;
		[O_rat] call FNC_AddItem;

		//Attachments
[O_pso] call fnc_AddItem;
[O_tgpv] call FNC_AddItem;
[O_pbsd] call FNC_AddItem;

		//Extra Mag
		[O_dmrmag,1,"uniform"] call FNC_AddItem;
		[O_samag,1,"vest"] call FNC_AddItem;
};