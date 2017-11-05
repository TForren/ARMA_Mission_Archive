// Info: RUS MSV Opfor Loadouts
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
#define O_rifle_r "rhs_weap_ak74m","rhs_weap_ak74m","rhs_weap_ak74m","rhs_weap_ak74m_2mag","rhs_weap_ak74m_plummag","rhs_weap_ak74m_fullplum"
#define O_rifle "rhs_weap_ak74m"
#define O_glrifle "rhs_weap_ak74m_gp25","rhs_weap_ak74m_gp25","rhs_weap_ak74m_fullplum_gp25"
#define O_glrifle2 "rhs_weap_ak74m_gp25"
#define O_rifle_f "rhs_weap_ak74m_folded"
#define O_mg "rhs_weap_pkp"
#define O_dmr "rhs_weap_svdp_pso1"

// Magazines
#define O_riflemag "rhs_30Rnd_545x39_7N10_AK"
#define O_riflemag_tr "rhs_30Rnd_545x39_AK_green"
#define O_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define O_mgmag "rhs_100Rnd_762x54mmR"

// Attachment
#define O_akmb "rhs_acc_dtk"

// Secondary
#define O_sidearm "rhs_weap_pya"
#define O_rsp "rhs_weap_rsp30_red","rhs_weap_rsp30_green","rhs_weap_rsp30_white"

// Magazines
#define O_samag "rhs_mag_9x19_17"

// Launchers
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "SmokeShell"
#define O_smokeo "rhs_mag_nspd"

#define O_glhe "rhs_VOG25"
#define O_glbouncehe "rhs_VOG25p"
#define O_glsmokewhite "rhs_GRD40_white"
#define O_glsmokered "rhs_GRD40_red"
					
//=== MISC ===

//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define O_ace_default ["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;

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
#define O_default_uniform "AFGHAN_WAFG_5"
#define O_pilot_uniform "rhs_uniform_df15"
   
//Headgear
#define O_default_headgear "AFGHAN_USHANKA_HAT"
#define O_vcrew_headgear "rhs_tsh4"
#define O_pilot_headgear "rhs_zsh7a"
#define O_aircrew_headgear "rhs_zsh7a_mike"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"

//Vests
#define O_vest_default "V_AFGHAN_6sh46"
#define O_vest_ftl "V_AFGHAN_6sh46"
#define O_vest_medic "V_AFGHAN_6sh46"
#define O_vest_grenadier "V_AFGHAN_6sh46"
#define O_vest_mg "V_AFGHAN_6sh46"
#define O_vest_at "V_AFGHAN_6sh46"
#define O_vest_sniper "V_AFGHAN_6sh46"
#define O_vest_vc "V_AFGHAN_6sh46"
#define O_vest_leader "V_AFGHAN_6sh46"
#define O_vest_pc "V_AFGHAN_6sh46"
#define O_vest_pilot "V_AFGHAN_6sh46"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Section Leader
case "O_SL": {
	["CUP_H_SLA_OfficerCap"] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;

	//Uniform
	//["CUP_30Rnd_545x39_AK_M",3,"vest"] call FNC_AddItem;
	["rhs_mag_9x18_8_57N181S",4,"vest"] call FNC_AddItem;
	
	O_ace_default;

	[O_smoke,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["rhs_weap_makarov_pm"] call FNC_AddItem;
};

//Rifleman
case "O_RIF": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[
		[
			["CUP_30Rnd_545x39_AK_M",3,"vest"],
			["CUP_arifle_AK74"]
		],
		[
			["CUP_30Rnd_545x39_AK_M",3,"vest"],
			["CUP_arifle_AKS74"]
		],
		[
			["CUP_30Rnd_545x39_AK_M",3,"vest"],
			["CUP_arifle_AKS74U"]
		],
		[
			["CUP_10x_303_M",3,"vest"],
			["CUP_srifle_LeeEnfield"]
		],
		[
			["CUP_10x_303_M",3,"vest"],
			["CUP_srifle_LeeEnfield"]
		],
		[
			["CUP_30Rnd_545x39_AK_M",3,"vest"],
			["CUP_arifle_AK74"]
		]
	] call fnc_AddItemRandom;

	//Assigned Items
	O_default_equipment;
	

};

//Combat Life Saver
case "O_MED": {
	[O_default_headgear] call FNC_AddItem;
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
	[O_default_headgear] call FNC_AddItem;
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