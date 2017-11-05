// Info: RUS VMF Opfor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//GRE - Grenadier
//MG - Machine Gunner
//RPG - RPG Gunner
//RPGA - RPG Gunner Assistant
//RAT - Rifleman (AT)
//RIF - Rifleman
//MARK - Marksman
//VG - Vehicle Gunner
//VD - Vehicle Driver (repair)

//=== Weapons ===

// Primary
#define O_rifle_r "rhs_weap_ak74m","rhs_weap_ak74m_2mag","rhs_weap_ak74m_plummag","rhs_weap_ak74m_fullplum","rhs_weap_ak74m_camo","rhs_weap_ak74m_2mag_camo"
#define O_glrifle "rhs_weap_ak74m_gp25","rhs_weap_ak74m_fullplum_gp25"
#define O_carbine "rhs_weap_ak74m_folded"
#define O_mg "rhs_weap_pkp"
#define O_mg2 "rhs_weap_pkm"
#define O_dmr "rhs_weap_svdp_pso1"

// Magazines
#define O_riflemag "rhs_30Rnd_545x39_7N10_AK"
#define O_riflemag_tr "rhs_30Rnd_545x39_AK_green"
#define O_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define O_mgmag "rhs_100Rnd_762x54mmR"

// Attachments
#define O_rifle_scope "rhs_acc_1p29"
#define O_rifle_scope2 "rhs_acc_1p78"
#define O_red_dot "rhs_acc_pkas"
#define O_akmb "rhs_acc_dtk"

// Secondary
#define O_sidearm "rhs_weap_makarov_pmm"
#define O_sidearm2 "rhs_weap_pya"
#define O_rsp "rhs_weap_rsp30_red"

// Magazines
#define O_samag "rhs_mag_9x18_12_57N181S"
#define O_sa2mag "rhs_mag_9x19_17"

// Launchers
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"
#define O_mat_tandem "rhs_rpg7_PG7VR_mag"
#define O_mat_thermobaric "rhs_rpg7_TBG7V_mag"
#define O_ratmag "rhs_rpg26_mag"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_smoke "rhs_mag_rdg2_white"
#define O_smokeo "rhs_mag_nspd"
#define O_chemred "Chemlight_red"

#define O_glhe "rhs_VOG25"
#define O_glbouncehe "rhs_VOG25p"
#define O_glsmokewhite "rhs_GRD40_white"
#define O_glsmokered "rhs_GRD40_red"
#define O_glsmokeinstant "rhs_GDM40"
#define O_glthermo "rhs_VG40TB"
					
//=== MISC ===
				   
//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define O_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_KSF1",1,"uniform"] call FNC_AddItem; \
["rhs_1PN138"] call FNC_AddItem; \
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
#define O_default_uniform "rhs_uniform_vmf_flora"
#define O_pilot_uniform "rhs_uniform_df15"
   
//Headgear
#define O_default_headgear_r "rhs_6b7_1m_flora_ns3","rhs_6b7_1m_flora","rhs_6b7_1m_ess","rhs_6b7_1m"
#define O_vcrew_headgear "rhs_tsh4"
#define O_pilot_headgear "rhs_zsh7a"
#define O_aircrew_headgear "rhs_zsh7a_mike"
#define O_pc_headgear "rhs_fieldcap_helm"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"

//Vests
#define O_vest_default "rhs_6b13_Flora_6sh92"
#define O_vest_ftl "rhs_6b13_Flora_6sh92_radio"
#define O_vest_medic "rhs_6b23_medic"
#define O_vest_grenadier "rhs_6b13_Flora_6sh92_vog"
#define O_vest_mg "rhs_6b13_Flora"
#define O_vest_at "rhs_6b13_Flora_6sh92"
#define O_vest_sniper "rhs_6b13_Flora_6sh92"
#define O_vest_vc "rhs_6b23_crew"
#define O_vest_leader "rhs_6b13_Flora_6sh92_radio"
#define O_vest_pc "rhs_6b13_Flora_crewofficer"
#define O_vest_officer "rhs_6b13_Flora_6sh92_headset_mapcase"
#define O_vest_pilot "rhs_6sh46"

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
	[O_pc_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_pc] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem;
	[O_samag,2,"vest"] call FNC_AddItem;
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 
	[O_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_binoculars] call FNC_AddItem;
	[O_sidearm] call FNC_AddItem;
	
	//Attachments
	[[],[],[O_red_dot]] call FNC_AddItemRandom;
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	[O_samag,1,"vest"] call FNC_AddItem;
};

//Platoon SGT.
case "O_SGT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_officer] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,2,"vest"] call FNC_AddItem;
	[O_smokeo,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 
	[O_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_range] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;
	
	//Attachments
	[[],[O_red_dot]] call FNC_AddItemRandom;
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Platoon Medic
case "O_MED": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_medic] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	["ACE_personalAidKit",2,"vest"] call FNC_AddItem; 
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,2,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 
	
	//Backpack
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",12,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
	["ACE_atropine",8,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem;
	["ACE_personalAidKit",4,"backpack"] call FNC_AddItem; 


	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItem;

	//Attachments
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Motorised Squad
//Squad Leader
case "O_SL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_maptools,1,"uniform"] call FNC_AddItem;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;
	[O_samag,1,"vest"] call FNC_AddItem;

	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 
	[O_longrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_riflemag,2,"backpack"] call FNC_AddItem;
	[O_samag,1,"backpack"] call FNC_AddItem;
	[O_mgmag,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_binoculars] call FNC_AddItem;
	[O_sidearm] call FNC_AddItem;
	
	//Attachments
	[[],[],[O_rifle_scope2]] call FNC_AddItemRandom;
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	[O_samag,1,"vest"] call FNC_AddItem;
};

//Fire Team Leader
case "O_FTL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_grenadier] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_glhe,10,"vest"] call FNC_AddItem;
	[O_glsmokewhite,4,"vest"] call FNC_AddItem; 
	[O_glsmokered,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_riflemag,4,"backpack"] call FNC_AddItem;
	[O_mgmag,1,"backpack"] call FNC_AddItem;
	
	[O_glbouncehe,6,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_glrifle] call FNC_AddItemRandom;
	[O_binoculars] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;
	
	//Attachments
	[[],[O_red_dot],[O_red_dot],[O_rifle_scope2]] call FNC_AddItemRandom;
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Machine Gunner
case "O_MG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_mg] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform

	O_ace_default;
	[O_chemred,1,"uniform"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem;
	[O_cuffs,2,"uniform"] call FNC_AddItem;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	
	//Backpack
	[O_mgmag,3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[[O_mg2],[O_mg2],[O_mg]] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItem;

	//Extra Mag
	[O_mgmag,1,"backpack"] call FNC_AddItem;
};

//RPG Gunner
case "O_RPG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_at] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;
	[O_smoke,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_mat] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	[O_mat_heat,1,"backpack"] call FNC_AddItem;
};

//RPG Gunner Assistant
case "O_RPGA": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_rpg_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_mat_heat,2,"backpack"] call FNC_AddItem;
	[O_mat_frag,2,"backpack"] call FNC_AddItem;
	[O_smoke,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_binoculars] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Grenadier
case "O_GRE": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_grenadier] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_glhe,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_glhe,10,"vest"] call FNC_AddItem;
	[O_glsmokewhite,4,"vest"] call FNC_AddItem; 
	[O_glsmokered,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_riflemag,4,"backpack"] call FNC_AddItem;
	[O_mgmag,1,"backpack"] call FNC_AddItem;
	
	[O_glbouncehe,6,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_glrifle] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItem;
	
	//Attachments
	[O_akmb] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	[O_glhe,1,"uniform"] call FNC_AddItem;
};

//Rifleman (AT)
case "O_RAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_riflemag,4,"backpack"] call FNC_AddItem;
	[O_mgmag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rat] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman
case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_riflemag,4,"backpack"] call FNC_AddItem;
	[O_mgmag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle_r] call FNC_AddItemRandom;
	[O_rsp] call FNC_AddItem;

	//Attachments
	[O_akmb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Marksman
case "O_MARK": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_sniper] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_dmrmag,4,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_dmrmag,6,"vest"] call FNC_AddItem;
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_mgmag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_dmr] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;
};

//Vehicle Gunner
case "O_VG": {
	[O_vcrew_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_vc] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,1,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_carbine] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Driver
case "O_VD": {
	[O_vcrew_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_vc] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,2,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,1,"vest"] call FNC_AddItem; 
	
	[O_cuffs,2,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_chemred,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_carbine] call FNC_AddItem;
	[O_rsp] call FNC_AddItem;
	
	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};