// Info: RUS MSV Opfor Loadouts - Updated 22/08/16
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers

//Infantry Loadouts
//PC - Platoon Leader
//SL - Section Leader/Assistant Platoon Leader
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

//=== Weapons ===

// Primary
#define O_rifle_r "arifle_CTAR_ghex_F","arifle_CTAR_ghex_F","arifle_CTAR_ghex_F","arifle_CTAR_ghex_F","arifle_CTAR_ghex_F","arifle_CTAR_ghex_F"
#define O_rifle "arifle_CTAR_ghex_F"
#define O_glrifle "arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_ghex_F"
#define O_glrifle2 "arifle_CTAR_GL_ghex_F"
#define O_rifle_f "rhs_weap_ak74m_folded"
#define O_mg "arifle_CTARS_ghex_F"
#define O_dmr "srifle_DMR_07_ghex_F"

// Magazines
#define O_riflemag "30Rnd_580x42_Mag_F"
#define O_riflemag_tr "30Rnd_580x42_Mag_Tracer_F"
#define O_dmrmag "20Rnd_650x39_Cased_Mag_F"
#define O_mgmag "100Rnd_580x42_Mag_Tracer_F"

// Attachment
#define O_akmb "optic_ACO_grn"

// Secondary
#define O_sidearm "hgun_Rook40_F"
#define O_rsp "hgun_Rook40_F","hgun_Rook40_F","hgun_Rook40_F"

// Magazines
#define O_samag "16Rnd_9x21_Mag"

// Launchers
#define O_mat "launch_RPG32_ghex_F"
#define O_rat "rhs_weap_rshg2"

// Magazines
#define O_mat_heat "RPG32_F"
#define O_mat_frag "RPG32_HE_F"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "rhs_mag_rdg2_white"
#define O_smokeo "rhs_mag_nspd"

#define O_glhe "1Rnd_HE_Grenade_shell"
#define O_glbouncehe "1Rnd_HE_Grenade_shell"
#define O_glsmokewhite "1Rnd_Smoke_Grenade_shell"
#define O_glsmokered "1Rnd_SmokeRed_Grenade_shell"
					
//=== MISC ===

//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
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
#define O_default_uniform "U_O_T_Officer_F"
#define O_pilot_uniform "rhs_uniform_df15"
   
//Headgear
#define O_default_headgear_r "LOP_H_6B27M_Flora","LOP_H_6B27M_Flora","LOP_H_6B27M_Flora","LOP_H_6B27M_Flora"
#define O_vcrew_headgear "rhs_tsh4"
#define O_pilot_headgear "rhs_zsh7a"
#define O_aircrew_headgear "rhs_zsh7a_mike"

//Backpack
#define O_default_backpack "B_FieldPack_ghex_F"
#define O_rpg_backpack "B_Carryall_ghex_F"

//Vests
#define O_vest_default "V_HarnessO_ghex_F"
#define O_vest_ftl "V_HarnessO_ghex_F"
#define O_vest_medic "V_HarnessO_ghex_F"
#define O_vest_grenadier "V_HarnessOGL_ghex_F"
#define O_vest_mg "V_HarnessO_ghex_F"
#define O_vest_at "V_HarnessO_ghex_F"
#define O_vest_sniper "V_BandollierB_ghex_F"
#define O_vest_vc "V_BandollierB_ghex_F"
#define O_vest_leader "V_HarnessO_ghex_F"
#define O_vest_pc "V_HarnessO_ghex_F"
#define O_vest_pilot "V_HarnessO_ghex_F"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Motorized Platoon HQ

//Platoon Commander
case "O_PC": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_pc] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem;
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;
	[O_samag,1,"vest"] call FNC_AddItem;

	[O_smokeo,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_sidearm] call FNC_AddItem;
	[O_binoculars] call FNC_AddItem;
	
	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	[O_samag,1,"vest"] call FNC_AddItem;
};

//Section Leader
case "O_SL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItemRandom;
	
	//Attachments
	[O_akmb] call FNC_AddItem;
};

//Senior Rifleman
case "O_FTL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_ftl] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_glhe,9,"vest"] call FNC_AddItem;
	[O_glbouncehe,4,"vest"] call FNC_AddItem;
	[O_glsmokewhite,2,"vest"] call FNC_AddItem;
	[O_glsmokered,2,"vest"] call FNC_AddItem; 

	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_glrifle] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItemRandom;
	
	//Attachments
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Machine Gunner
case "O_MG": {
	[O_default_uniform] call FNC_AddItem;
	[O_vest_mg] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;

	//Vest

	//Backpack
	[O_mgmag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_mg] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[O_mgmag,1,"backpack"] call FNC_AddItem;
};

//Grenadier (AT)
case "O_RPG": {
	[O_default_uniform] call FNC_AddItem;
	[O_vest_at] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,3,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_cuffs,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_mat] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mags
	[O_mat_heat,1,"backpack"] call FNC_AddItem;
};

//Grenadier Assistant (AT)
case "O_RPGA": {
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_cuffs,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman (LAT)
case "O_RAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
			[O_vest_default] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
			[O_riflemag,4,"vest"] call FNC_AddItem;
			[O_riflemag_tr,2,"vest"] call FNC_AddItem;
			[O_smoke,1,"vest"] call FNC_AddItem;
			[O_frag,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
			[O_rifle_r] call FNC_AddItemRandom;
	[O_rat] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman
case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
			[
	[
			[O_vest_grenadier],
			[O_riflemag,4,"vest"],
			[O_riflemag_tr,2,"vest"],
			[O_glhe,8,"vest"],
			[O_glsmokewhite,2,"vest"],
			[O_glsmokered,2,"vest"],
			[O_glrifle2],
			[O_glhe,1,"vest"]
			],
	[
			[O_vest_default],
			[O_riflemag,4,"vest"],
			[O_riflemag_tr,2,"vest"],
			[O_smoke,1,"vest"],
			[O_frag,1,"vest"],
			[O_rifle]
			],
	[
			[O_vest_default],
			[O_riflemag,4,"vest"],
			[O_riflemag_tr,2,"vest"],
			[O_smoke,1,"vest"],
			[O_frag,1,"vest"],
			[O_rifle]
			],
	[
			[O_vest_default],
			[O_riflemag,4,"vest"],
			[O_riflemag_tr,2,"vest"],
			[O_smoke,1,"vest"],
			[O_frag,1,"vest"],
			[O_rifle]
			]
			] call fnc_AddItemRandom;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Combat Life Saver
case "O_MED": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_medic] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_smoke,2,"vest"] call FNC_AddItem;
	["ACE_elasticBandage",6,"vest"] call FNC_AddItem; 
	["ACE_packingBandage",10,"vest"] call FNC_AddItem; 
	["ACE_fieldDressing",12,"vest"] call FNC_AddItem; 
	["ACE_morphine",8,"vest"] call FNC_AddItem; 
	["ACE_epinephrine",4,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItemRandom;

	//Attachments
	[O_akmb] call FNC_AddItem;
};


//Marksman
case "O_MARK": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_sniper] call FNC_AddItem;
	
	//Uniform
	[O_dmrmag,3,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_dmrmag,6,"vest"] call FNC_AddItem;

	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_dmr] call FNC_AddItem;
	["optic_DMS_ghex_F"] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

//Vehicle Gunner
case "O_VG": {
	[O_vcrew_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_vc] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,1,"vest"] call FNC_AddItem; 

	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;

	//Weapons
	[O_rifle_f] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Driver
case "O_VD": {
	[O_default_uniform] call FNC_AddItem;
	[O_vest_vc] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_vcrew_headgear] call FNC_AddItem;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;

	O_ace_default;

	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,1,"vest"] call FNC_AddItem; 

	[O_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_f] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};