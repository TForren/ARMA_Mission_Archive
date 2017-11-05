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

// Launchers
#define B_mat "rhs_weap_rpg7_pgo"
#define B_rat "rhs_weap_rpg26"

// Magazines
#define B_mat_heat "rhs_rpg7_PG7VL_mag"
#define B_mat_frag "rhs_rpg7_OG7V_mag"

// Grenades
#define B_frag "rhs_mag_rgd5"
#define B_molotov "MOLOTOV_MAG"
#define B_smoke "SmokeShell"
#define B_smokeo "rhs_mag_nspd"

#define B_glhe "rhs_VOG25"
#define B_glbouncehe "rhs_VOG25p"
#define B_glsmokewhite "rhs_GRD40_white"
#define B_glsmokered "rhs_GRD40_red"
					
//=== MISC ===

//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",1,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem;

//ACE
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_cuffs "ACE_CableTie"
#define B_nana "ACE_Banana"
#define B_toolkit "ToolKit"
#define B_binoculars "Binocular"
#define B_range "rhs_pdu4"
#define B_maptools "ACE_MapTools"

//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"

//=== Clothes ===

//Uniform              
#define B_default_uniform_r "rds_uniform_citizen1","rds_uniform_citizen2","rds_uniform_citizen2","rds_uniform_citizen3","rds_uniform_citizen4"
#define B_civ_uniform_r ["LOP_U_TAK_Civ_Fatigue_15", "LOP_U_TAK_Civ_Fatigue_16", "LOP_U_TAK_Civ_Fatigue_13", "LOP_U_TAK_Civ_Fatigue_14", "LOP_U_TAK_Civ_Fatigue_04", "LOP_U_TAK_Civ_Fatigue_12", "LOP_U_TAK_Civ_Fatigue_11", "LOP_U_TAK_Civ_Fatigue_09", "LOP_U_TAK_Civ_Fatigue_02", "LOP_U_TAK_Civ_Fatigue_10", "LOP_U_TAK_Civ_Fatigue_01","LOP_U_TAK_Civ_Fatigue_05","LOP_U_TAK_Civ_Fatigue_07","LOP_U_TAK_Civ_Fatigue_08","LOP_U_TAK_Civ_Fatigue_06Z"

   
//Headgear
#define B_masked_headgear_r "LOP_H_Turban_mask","LOP_H_Shemag_RED2","LOP_H_Shemag_RED1","LOP_H_Shemag_OLV","LOP_H_Shemag_GRE","LOP_H_Shemag_BLU","LOP_H_Shemag_BLK","H_Hat_Face_Wrap_Olive","H_Hat_Face_Wrap_Desert","H_Hat_Face_Wrap","H_Hat_Face_Cover_Green","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Black","H_Hat_Face_Cover","H_Hat_Kufiya_C","H_Hat_Kufiya_R","H_Hat_Kufiya_G","H_Hat_Kufiya_F","H_Hat_Kufiya","H_Hat_Kufiya_D","H_Hat_Kufiya_B","H_Hat_Face_Wrap_Sand","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_DPM","H_Hat_Face_Wrap_White","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_Dark","H_Hat_Face_Wrap_Black","H_Hat_Face_Balaclava_T"
#define B_unmasked_headgear_r "LOP_H_Turban","LOP_H_Pakol","H_Hat_Turban_D","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Pagri_C","H_Hat_Turban_E","H_Hat_Pagri_B","H_Hat_Turban_B","H_Hat_Taqiyah_B","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E","H_Hat_Taqiyah_C","H_Hat_Taqiyah_A","H_Hat_Pakol","H_Hat_Ghutra","H_Hat_Ghutra_A"
#define B_all_headgear_r "H_Bandanna_khk","H_Bandanna_khk"
#define B_all_headgear2_r "rhs_Booniehat_digi","LOP_H_Shemag_OLV","LOP_H_Shemag_RED1","LOP_H_Shemag_RED2","H_Bandanna_khk","H_Bandanna_sgg","LOP_H_Shemag_BLK","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","rhs_beanie_green","rhs_beanie","H_Booniehat_dgtl","rhsusf_bowman_cap","H_Cap_blk_Raven","rds_rocker_hair2","rds_rocker_hair1","rds_rocker_hair3","rhsgref_M56","H_MilCap_dgtl"


//Backpack
#define B_default_backpack "rhs_sidor"
#define B_rpg_backpack "rhs_rpg_empty"


#define B_default_goggles_R "rhsusf_shemagh2_gogg_grn","rhsusf_shemagh2_gogg_grn"

//Vests
#define B_vest_default "V_Chestrig_blk", "V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_PlateCarrierIA1_dgtl","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F"
#define B_vest_ftl "rhs_6sh46"
#define B_vest_medic "rhs_6sh46"
#define B_vest_grenadier "rhs_6sh46"
#define B_vest_mg "rhs_6sh46"
#define B_vest_at "rhs_6sh46"
#define B_vest_sniper "rhs_6sh46"
#define B_vest_vc "rhs_6sh46"
#define B_vest_leader "rhs_6sh46"
#define B_vest_pc "rhs_6sh46"
#define B_vest_pilot "rhs_6sh46"

//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//taliban

//Section Leader
case "B_SL": {
	[B_all_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;

	B_ace_default;
	[B_cuffs,2,"vest"] call FNC_AddItem;
	[B_default_goggles_R] call FNC_AddItemRandom;

	//Assigned Items
	B_leader_equipment;
	
	["rhs_30Rnd_545x39_AK",6] call FNC_addItem;
	["rhs_weap_ak74"] call FNC_addItem;
	["rhs_acc_2dpZenit"] call FNC_addItem;
};
//Machine Gunner
case "B_MG": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	B_ace_default;
	
	[
		[
			["hlc_75Rnd_762x39_m_rpk",4,"vest"],
			["hlc_75Rnd_762x39_m_rpk",4,"backpack"],
			["hlc_rifle_rpk"]
		],
		[
			["hlc_75Rnd_762x39_m_rpk",4,"vest"],
			["hlc_75Rnd_762x39_m_rpk",4,"backpack"],
			["hlc_rifle_rpk"]
		]

	] call fnc_AddItemRandom;
	//Assigned Items
	B_default_equipment;
	
};

case "B_DRUG": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	B_ace_default;
	["ACE_HandFlare_Red",2,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhsgref_1Rnd_00Buck",1,"vest"],
			["rhsgref_1Rnd_00Buck",4,"backpack"],
			["rhs_weap_Izh18"]
		],
		[
			["rhsgref_20rnd_765x17_vz61",1,"vest"],
			["rhsgref_20rnd_765x17_vz61",4,"backpack"],
			["rhs_weap_savz61"]
		]

	] call fnc_AddItemRandom;
	//Assigned Items
	B_default_equipment;
	
};


case "POLICE": {
	["U_B_GEN_Commander_F"] call FNC_AddItem;
	["V_PlateCarrierIAGL_oli"] call FNC_AddItem;
	["H_Helmet_Skate"] call FNC_AddItem;
	["G_Balaclava_blk"] call FNC_AddItem;
	
	//Uniform

	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_cuffs,2,"vest"] call FNC_AddItem;
	["ACE_HandFlare_Red",2,"uniform"] call FNC_AddItem;
	
	
	["Chemlight_green",3] call FNC_addItem;
	["30Rnd_762x39_Mag_F",6] call FNC_addItem;
	["arifle_AK12_F"] call FNC_addItem;
	["acc_flashlight"] call FNC_addItem;
	["rhsusf_ANPVS_15"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
};


case "PILOT": {
	["U_B_GEN_Commander_F"] call FNC_AddItem;
	["H_HeadSet_black_F"] call FNC_AddItem;
	["G_Balaclava_blk"] call FNC_AddItem;
	
	//Uniform

	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",2,"uniform"] call FNC_AddItem;
	["rhsusf_ANPVS_15"] call FNC_AddItem;
	
	
	//Assigned Items
	B_default_equipment;
	
};

