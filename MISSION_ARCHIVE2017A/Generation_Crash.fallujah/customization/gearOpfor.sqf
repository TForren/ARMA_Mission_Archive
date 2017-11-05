// Info: RUS 1980s Afghan Opfor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers

//Infantry Loadouts
//PC - Platoon Leader
//SL - Section Leader + Assistant Platoon Leader
//FTL - Senior Rifleman
//MG - Machine Gunner
//RPG - Grenadier (AT)
//RPGA - Grenadier Assistant (AT)
//RAT - Rifleman (LAT)
//RIF - Rifleman
//MED - Combat Life Saver
//MARK - Marksman
//VG - Vehicle Gunner
//VD - Vehicle Driver (repair)
//PMG - Platoon Machine Gunner (1x MG team in BTR platoon 2x MG teams in BMP Platoon)
//PMGA - Platoon Machine Gunner Assistant (1x MG team in BTR platoon 2x MG teams in BMP Platoon)
//ATGM - ATGM Gunner (1x AT team in BTR platoon no AT teams in BMP Platoon)
//ATGMA - ATGM Assistant (1x AT team in BTR platoon no AT teams in BMP Platoon)

//=== Weapons ===

// Primary
#define O_rifle "rhs_weap_ak74"
#define O_glrifle "rhs_weap_ak74_gp25"
#define O_carbine "rhs_weap_aks74u"
#define O_ar "hlc_rifle_rpk74n"
#define O_mg "rhs_weap_pkm"
#define O_dmr "rhs_weap_svdp_wd"

// Magazines
#define O_riflemag "rhs_30Rnd_545x39_AK"
#define O_riflemag_tr "rhs_30Rnd_545X39_AK_Green"
#define O_armag "rhs_45Rnd_545X39_AK_Green"
#define O_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define O_mgmag "rhs_100Rnd_762x54mmR"

// Attachment
#define O_dmo "rhs_acc_pso1m2"

// Secondary
#define O_sidearm "rhs_weap_makarov_pm"
#define O_rsp "rhs_weap_rsp30_red","rhs_weap_rsp30_green","rhs_weap_rsp30_white"

// Magazines
#define O_samag "rhs_mag_9x18_8_57N181S"

// Launchers
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "smokeShell"
#define O_smokeo "SmokeShellOrange"

#define O_glhe "rhs_VOG25"
#define O_glsmokewhite "rhs_GRD40_White"
#define O_glsmokered "rhs_GRD40_Red"
#define O_glsmokegreen "rhs_GRD40_Green"
					
//=== MISC ===

// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_KSF1",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define O_ace_sparebarrel "ACE_SpareBarrel"
#define O_cuffs "ACE_CableTie"
#define O_nana "ACE_Banana"
#define O_toolkit "ToolKit"
#define O_binoculars "Binocular"
#define O_maptools "ACE_MapTools"

//Radio
#define O_longrange "ACRE_PRC77"

//=== Clothes ===

//Uniform              
#define O_default_uniform "AFGH_AFG_S1","AFGH_AFG_S2"
#define O_pilot_uniform "rhs_uniform_df15"
   
//Headgear
#define O_default_headgear_r "AFGHAN_SH_68","AFGHAN_SH_68_2","AFGHAN_SH_68_CAMO","AFGHAN_PANAMA_S_BGR","AFGHAN_PANAMA","AFGHAN_PANAMA_R_RY","AFGHAN_PANAMA_R","AFGHAN_FIELDCAP_1"

switch ("headgear" call BIS_fnc_getParamValue) do {
    case 0: {
		#define O_default_headgear_r "AFGHAN_SH_68","AFGHAN_SH_68_2","AFGHAN_SH_68_CAMO"
	};
    case 1: {
		#define O_default_headgear_r "AFGHAN_PANAMA_S_BGR","AFGHAN_PANAMA","AFGHAN_PANAMA_R_RY","AFGHAN_PANAMA_R","AFGHAN_FIELDCAP_1"
	};
    case 2: {
		#define O_default_headgear_r "AFGHAN_SH_68","AFGHAN_SH_68_2","AFGHAN_SH_68_CAMO","AFGHAN_PANAMA_S_BGR","AFGHAN_PANAMA","AFGHAN_PANAMA_R_RY","AFGHAN_PANAMA_R","AFGHAN_FIELDCAP_1"
	};
    default {
		#define O_default_headgear_r "AFGHAN_SH_68","AFGHAN_SH_68_2","AFGHAN_SH_68_CAMO","AFGHAN_PANAMA_S_BGR","AFGHAN_PANAMA","AFGHAN_PANAMA_R_RY","AFGHAN_PANAMA_R","AFGHAN_FIELDCAP_1"
	};
};

#define O_vcrew_headgear "rhs_tsh4"
#define O_pilot_headgear "rhs_zsh7a"
#define O_aircrew_headgear "rhs_zsh7a_mike"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"
#define O_atgm "RHS_Metis_Gun_Bag"
#define O_atgmt "RHS_Metis_Tripod_Bag"

//Vests
#define O_vest_default "V_AFGHAN_6sh46"
#define O_vest_ph "rhs_vest_pistol_holster"
#define O_vest_pc "rhs_vest_commander"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Motorized Platoon

//Platoon Commander
case "O_PC": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_pc] call FNC_AddItem;
	
	//Uniform
	[O_samag,3,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_samag,3,"vest"] call FNC_AddItem;

	[O_smokeo,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;

	//Weapons
	[O_sidearm] call FNC_AddItem;
	[O_binoculars] call FNC_AddItem;
};

//Section Leader + Assistant Platoon Leader
case "O_SL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,3,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Senior Rifleman
case "O_FTL": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_riflemag,1,"backpack"] call FNC_AddItem;
	[O_glhe,13,"backpack"] call FNC_AddItem;
	[O_glsmokewhite,5,"backpack"] call FNC_AddItem;
	[O_glsmokered,3,"backpack"] call FNC_AddItem;
	[O_glsmokegreen,3,"backpack"] call FNC_AddItem; 

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_glrifle] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItemRandom;
};

//Machine Gunner
case "O_MG": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_armag,1,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_armag,3,"vest"] call FNC_AddItem;

	//Backpack
	[O_armag,7,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_ar] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Grenadier (AT)
case "O_RPG": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_ph] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[O_samag,3,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_samag,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_samag,2,"backpack"] call FNC_AddItem;
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_sidearm] call FNC_AddItem;
	[O_mat] call FNC_AddItem;

	//Extra Mags
	[O_mat_heat,1,"backpack"] call FNC_AddItem;
};

//Grenadier Assistant (AT)
case "O_RPGA": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_riflemag,1,"backpack"] call FNC_AddItem; 
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Rifleman (LAT)
case "O_RAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rat] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman
case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Combat Life Saver
case "O_MED": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_riflemag,1,"backpack"] call FNC_AddItem;
	[O_smoke,2,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_fieldDressing",12,"backpack"] call FNC_AddItem; 
	["ACE_morphine",8,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};


//Marksman
case "O_MARK": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	
	//Uniform
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_dmrmag,11,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_dmr] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_dmo] call FNC_AddItem;
};

//Vehicle Gunner
case "O_VG": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_vcrew_headgear] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,1,"vest"] call FNC_AddItem; 

	[O_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;

	//Weapons
	[O_carbine] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Vehicle Driver
case "O_VD": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_ph] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_vcrew_headgear] call FNC_AddItem;

	//Uniform
	[O_samag,3,"uniform"] call FNC_AddItem;

	O_ace_default;

	//Vest
	[O_samag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_sidearm] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Machine Gunner
case "O_PMG": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_ph] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_samag,3,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_samag,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_mgmag,3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_mg] call FNC_AddItem;
	[O_sidearm] call FNC_AddItem;

	//Extra Mags
	[O_mgmag,1,"backpack"] call FNC_AddItem;
};
//Machine Gun Assistant
case "O_PMGA": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_mgmag,3,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};
//ATGM Gunner
case "O_ATGM": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_atgm] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};
//ATGM Assistant
case "O_ATGMA": {
	[O_default_uniform] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_atgmt] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};