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
#define I_rifle_r "UK3CB_BAF_L1A1","UK3CB_BAF_L1A1","UK3CB_BAF_L1A1","UK3CB_BAF_L1A1"
#define I_rifle "UK3CB_BAF_L1A1"
#define I_glrifle "RH_M16A2gl","RH_M16A2gl","RH_M16A2gl"
#define I_glrifle2 "RH_M16A2gl"
#define I_rifle_f "rhs_weap_ak74m_folded"
#define I_mg "JO_MG_MG3"
#define I_dmr "rhs_weap_svdp_pso1"

// Magazines
#define I_riflemag "UK3CB_BAF_762_20Rnd_T"
#define I_riflemag_tr "UK3CB_BAF_762_20Rnd"
#define I_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define I_mgmag "JO_120rnd_MG3T"

// Attachment
#define I_akmb "rhs_acc_dtk"

// Secondary
#define I_sidearm "JO_MG_MG3"
#define I_rsp "rhs_weap_rsp30_red","rhs_weap_rsp30_green","rhs_weap_rsp30_white"

// Magazines
#define I_samag "rhsusf_mag_7x45acp_MHP"

// Launchers
#define I_mat "rhs_weap_rpg7_pgo"
#define I_rat "rhs_weap_m72a7"

// Magazines
#define I_mat_heat "rhs_rpg7_PG7VL_mag"
#define I_mat_frag "rhs_rpg7_OG7V_mag"

// Grenades
#define I_frag "rhs_mag_rgd5"
#define I_smoke "rhs_mag_rdg2_white"
#define I_smokeo "rhs_mag_nspd"

#define I_glhe "rhs_mag_M433_HEDP"
#define I_glbouncehe "rhs_mag_M433_HEDP"
#define I_glsmokewhite "rhs_mag_M433_HEDP"
#define I_glsmokered "rhs_mag_M433_HEDP"
					
//=== MISC ===

//Chemical lights
#define I_chemblue "Chemlight_blue"
#define I_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define I_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_KSF1",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define I_ace_sparebarrel "ACE_SpareBarrel"
#define I_cuffs "ACE_CableTie"
#define I_nana "ACE_Banana"
#define I_toolkit "ToolKit"
#define I_binoculars "Binocular"
#define I_range "rhs_pdu4"
#define I_maptools "ACE_MapTools"

//Radio
#define I_longrange "ACRE_PRC148"
#define I_shortrange "ACRE_PRC343"

//=== Clothes ===

//Uniform              
#define I_default_uniform "U_I_CombatUniform"
#define I_pilot_uniform "U_I_CombatUniform"
   
//Headgear
#define I_default_headgear_r "H_HelmetIA","H_MilCap_dgtl","H_MilCap_dgtl","H_MilCap_dgtl","H_MilCap_dgtl"
#define I_vcrew_headgear "H_MilCap_dgtl"
#define I_pilot_headgear "H_MilCap_dgtl"
#define I_aircrew_headgear "H_MilCap_dgtl"

//Backpack
#define I_default_backpack "B_AssaultPack_dgtl"
#define I_rpg_backpack "B_AssaultPack_dgtl"

//Vests
#define I_vest_default "V_PlateCarrierIA1_dgtl"
#define I_vest_ftl "V_PlateCarrierIAGL_dgtl"
#define I_vest_medic "V_PlateCarrierIA1_dgtl"
#define I_vest_grenadier "V_PlateCarrierIA2_dgtl"
#define I_vest_mg "V_PlateCarrierIA2_dgtl"
#define I_vest_at "V_PlateCarrierIA2_dgtl"
#define I_vest_sniper "V_PlateCarrierIA2_dgtl"
#define I_vest_vc "V_PlateCarrierIA2_dgtl"
#define I_vest_leader "V_PlateCarrierIA2_dgtl"
#define I_vest_pc "V_PlateCarrierIAGL_dgtl"
#define I_vest_pilot "rhs_6sh46"

//=== EQUIPMENT ===
#define I_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define I_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Motorized Platoon HQ

//Platoon Commander
case "I_PC": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_pc] call FNC_AddItem;
	
	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	[I_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_riflemag,2,"vest"] call FNC_AddItem;
	[I_riflemag_tr,2,"vest"] call FNC_AddItem;
	[I_samag,1,"vest"] call FNC_AddItem;

	[I_smokeo,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_rifle_r] call FNC_AddItemRandom;
	[I_sidearm] call FNC_AddItem;
	[I_binoculars] call FNC_AddItem;
	
	//Attachments
	[I_akmb] call FNC_AddItem;

	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
	[I_samag,1,"vest"] call FNC_AddItem;
};

//Section Leader
case "I_SL": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_leader] call FNC_AddItem;

	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	[I_maptools,1,"uniform"] call FNC_AddItem;
	[I_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_riflemag,5,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,2,"vest"] call FNC_AddItem;

	[I_cuffs,2,"vest"] call FNC_AddItem;
	[I_frag,1,"vest"] call FNC_AddItem;
	[I_smoke,1,"vest"] call FNC_AddItem;
	[I_smokeo,1,"vest"] call FNC_AddItem;

	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_rifle_r] call FNC_AddItemRandom;
	[I_rsp] call FNC_AddItemRandom;
	
	//Attachments
	[I_akmb] call FNC_AddItem;
};

//Senior Rifleman
case "I_FTL": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_ftl] call FNC_AddItem;
	
	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	[I_frag,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_riflemag,6,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,2,"vest"] call FNC_AddItem;

	[I_smoke,2,"vest"] call FNC_AddItem;
	[I_smokeo,2,"vest"] call FNC_AddItem;

	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_rifle] call FNC_AddItemRandom;
	[I_rsp] call FNC_AddItemRandom;
	
	//Attachments
	[I_akmb] call FNC_AddItem;
	
	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};

//Machine Gunner
case "I_MG": {
	[I_default_uniform] call FNC_AddItem;
	[I_vest_mg] call FNC_AddItem;
	[I_default_backpack] call FNC_AddItem;
	[I_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;

	//Vest

	//Backpack
	[I_mgmag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	I_default_equipment;
	
	//Weapons
	[I_mg] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;

	//Extra Mag
	[I_mgmag,1,"backpack"] call FNC_AddItem;
};

//Grenadier (AT)
case "I_RPG": {
	[I_default_uniform] call FNC_AddItem;
	[I_vest_at] call FNC_AddItem;
	[I_rpg_backpack] call FNC_AddItem;
	[I_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;

	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[I_riflemag,3,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[I_smoke,1,"vest"] call FNC_AddItem;
	[I_cuffs,2,"vest"] call FNC_AddItem;

	//Backpack
	[I_mat_heat,2,"backpack"] call FNC_AddItem;
	[I_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_rifle_r] call FNC_AddItemRandom;
	[I_mat] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;

	//Attachments
	[I_akmb] call FNC_AddItem;

	//Extra Mags
	[I_mat_heat,1,"backpack"] call FNC_AddItem;
};

//Grenadier Assistant (AT)
case "I_RPGA": {
	[I_default_uniform] call FNC_AddItem;
	[I_vest_default] call FNC_AddItem;
	[I_rpg_backpack] call FNC_AddItem;
	[I_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;

	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[I_riflemag,5,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[I_smoke,1,"vest"] call FNC_AddItem;
	[I_cuffs,2,"vest"] call FNC_AddItem;

	//Backpack
	[I_mat_heat,2,"backpack"] call FNC_AddItem;
	[I_mat_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_rifle_r] call FNC_AddItemRandom;
	[I_rsp] call FNC_AddItemRandom;

	//Attachments
	[I_akmb] call FNC_AddItem;

	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman (LAT)
case "I_RAT": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
			[I_vest_default] call FNC_AddItem;
	
	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
			[I_riflemag,4,"vest"] call FNC_AddItem;
			[I_riflemag_tr,2,"vest"] call FNC_AddItem;
			[I_smoke,1,"vest"] call FNC_AddItem;
			[I_frag,1,"vest"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

	//Weapons
			[I_rifle_r] call FNC_AddItemRandom;
	[I_rat] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;

	//Attachments
	[I_akmb] call FNC_AddItem;

	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifleman
case "I_RIF": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;

	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;

	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
			[
	[
			[I_vest_grenadier],
			[I_riflemag,4,"vest"],
			[I_riflemag_tr,2,"vest"],
			[I_glhe,8,"vest"],
			[I_glsmokewhite,2,"vest"],
			[I_glsmokered,2,"vest"],
			[I_glrifle2],
			[I_glhe,1,"vest"]
			],
	[
			[I_vest_default],
			[I_riflemag,4,"vest"],
			[I_riflemag_tr,2,"vest"],
			[I_smoke,1,"vest"],
			[I_frag,1,"vest"],
			[I_rifle]
			],
	[
			[I_vest_default],
			[I_riflemag,4,"vest"],
			[I_riflemag_tr,2,"vest"],
			[I_smoke,1,"vest"],
			[I_frag,1,"vest"],
			[I_rifle]
			],
	[
			[I_vest_default],
			[I_riflemag,4,"vest"],
			[I_riflemag_tr,2,"vest"],
			[I_smoke,1,"vest"],
			[I_frag,1,"vest"],
			[I_rifle]
			]
			] call fnc_AddItemRandom;

	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_rsp] call FNC_AddItemRandom;

	//Attachments
	[I_akmb] call FNC_AddItem;

	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};

//Combat Life Saver
case "I_MED": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_medic] call FNC_AddItem;
	
	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_riflemag,5,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,2,"vest"] call FNC_AddItem;

	[I_smoke,2,"vest"] call FNC_AddItem;
	["ACE_elasticBandage",6,"vest"] call FNC_AddItem; 
	["ACE_packingBandage",10,"vest"] call FNC_AddItem; 
	["ACE_fieldDressing",12,"vest"] call FNC_AddItem; 
	["ACE_morphine",8,"vest"] call FNC_AddItem; 
	["ACE_epinephrine",4,"vest"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;
	
	//Weapons
	[I_rifle_r] call FNC_AddItemRandom;
	[I_rsp] call FNC_AddItemRandom;

	//Attachments
	[I_akmb] call FNC_AddItem;
};


//Marksman
case "I_MARK": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_sniper] call FNC_AddItem;
	
	//Uniform
	[I_dmrmag,3,"uniform"] call FNC_AddItem;

	I_ace_default;
	[I_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_dmrmag,6,"vest"] call FNC_AddItem;

	[I_cuffs,2,"vest"] call FNC_AddItem;
	[I_frag,1,"vest"] call FNC_AddItem;
	[I_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_dmr] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;
};

//Vehicle Gunner
case "I_VG": {
	[I_vcrew_headgear] call FNC_AddItem;
	[I_default_uniform] call FNC_AddItem;
	[I_vest_vc] call FNC_AddItem;
	
	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	
	//Vest
	[I_riflemag,2,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,1,"vest"] call FNC_AddItem; 

	[I_smoke,1,"vest"] call FNC_AddItem;
	[I_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	I_leader_equipment;

	//Weapons
	[I_rifle_f] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Driver
case "I_VD": {
	[I_default_uniform] call FNC_AddItem;
	[I_vest_vc] call FNC_AddItem;
	[I_default_backpack] call FNC_AddItem;
	[I_vcrew_headgear] call FNC_AddItem;

	//Uniform
	[I_riflemag,2,"uniform"] call FNC_AddItem;

	I_ace_default;

	//Vest
	[I_riflemag,2,"vest"] call FNC_AddItem; 
	[I_riflemag_tr,1,"vest"] call FNC_AddItem; 

	[I_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[I_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_rifle_f] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[I_riflemag,1,"uniform"] call FNC_AddItem;
};