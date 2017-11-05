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
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"

// Grenades
#define O_frag "rhs_mag_rgd5"
#define O_molotov "MOLOTOV_MAG"
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
#define O_ace_default \
["ACE_fieldDressing",1,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem;

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
#define O_default_uniform_r "rds_uniform_Functionary1","rds_uniform_Functionary2"
#define O_civ_uniform_r ["LOP_U_TAK_Civ_Fatigue_15", "LOP_U_TAK_Civ_Fatigue_16", "LOP_U_TAK_Civ_Fatigue_13", "LOP_U_TAK_Civ_Fatigue_14", "LOP_U_TAK_Civ_Fatigue_04", "LOP_U_TAK_Civ_Fatigue_12", "LOP_U_TAK_Civ_Fatigue_11", "LOP_U_TAK_Civ_Fatigue_09", "LOP_U_TAK_Civ_Fatigue_02", "LOP_U_TAK_Civ_Fatigue_10", "LOP_U_TAK_Civ_Fatigue_01","LOP_U_TAK_Civ_Fatigue_05","LOP_U_TAK_Civ_Fatigue_07","LOP_U_TAK_Civ_Fatigue_08","LOP_U_TAK_Civ_Fatigue_06Z"

   
//Headgear
#define O_masked_headgear_r "LOP_H_Turban_mask","LOP_H_Shemag_RED2","LOP_H_Shemag_RED1","LOP_H_Shemag_OLV","LOP_H_Shemag_GRE","LOP_H_Shemag_BLU","LOP_H_Shemag_BLK","H_Hat_Face_Wrap_Olive","H_Hat_Face_Wrap_Desert","H_Hat_Face_Wrap","H_Hat_Face_Cover_Green","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Black","H_Hat_Face_Cover","H_Hat_Kufiya_C","H_Hat_Kufiya_R","H_Hat_Kufiya_G","H_Hat_Kufiya_F","H_Hat_Kufiya","H_Hat_Kufiya_D","H_Hat_Kufiya_B","H_Hat_Face_Wrap_Sand","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_DPM","H_Hat_Face_Wrap_White","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_Dark","H_Hat_Face_Wrap_Black","H_Hat_Face_Balaclava_T"
#define O_unmasked_headgear_r "LOP_H_Turban","LOP_H_Pakol","H_Hat_Turban_D","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Pagri_C","H_Hat_Turban_E","H_Hat_Pagri_B","H_Hat_Turban_B","H_Hat_Taqiyah_B","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E","H_Hat_Taqiyah_C","H_Hat_Taqiyah_A","H_Hat_Pakol","H_Hat_Ghutra","H_Hat_Ghutra_A"
#define O_all_headgear_r "H_Bandanna_khk","H_Bandanna_khk"
#define O_all_headgear2_r "rhs_Booniehat_digi","LOP_H_Shemag_OLV","LOP_H_Shemag_RED1","LOP_H_Shemag_RED2","H_Bandanna_khk","H_Bandanna_sgg","LOP_H_Shemag_BLK","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","rhs_beanie_green","rhs_beanie","H_Booniehat_dgtl","rhsusf_bowman_cap","H_Cap_blk_Raven","rds_rocker_hair2","rds_rocker_hair1","rds_rocker_hair3","rhsgref_M56","H_MilCap_dgtl"


//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"


#define O_default_goggles_R "G_Balaclava_blk","G_Balaclava_blk","G_Balaclava_blk"

//Vests
#define O_vest_default "V_Chestrig_blk", "V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_PlateCarrierIA1_dgtl","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F"
#define O_vest_ftl "rhs_6sh46"
#define O_vest_medic "rhs_6sh46"
#define O_vest_grenadier "rhs_6sh46"
#define O_vest_mg "rhs_6sh46"
#define O_vest_at "rhs_6sh46"
#define O_vest_sniper "rhs_6sh46"
#define O_vest_vc "rhs_6sh46"
#define O_vest_leader "rhs_6sh46"
#define O_vest_pc "rhs_6sh46"
#define O_vest_pilot "rhs_6sh46"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//taliban

//Section Leader
case "O_SL": {
	//[O_all_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;

	O_ace_default;
	[O_cuffs,2,"vest"] call FNC_AddItem;

	[O_default_goggles_R] call FNC_AddItemRandom;

	//Assigned Items
	O_leader_equipment;
	
	["rhsgref_30rnd_556x45_m21",6] call FNC_addItem;
	["rhs_weap_m21a"] call FNC_addItem;
	["rhs_acc_2dpZenit"] call FNC_addItem;
};

//Machine Gunner
case "O_MG": {
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	
	[
		[
			["200Rnd_65x39_cased_Box",1,"vest"],
			["200Rnd_65x39_cased_Box",3],
			["LMG_Mk200_F"]
		],
		[
			["150Rnd_762x54_Box",1,"vest"],
			["150Rnd_762x54_Box",3],
			["LMG_Zafir_F"]
		]

	] call fnc_AddItemRandom;
	//Assigned Items
	O_default_equipment;
	
};

//Marksman
case "O_MARK": {
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	
	["rhs_10Rnd_762x54mmR_7N1",6] call FNC_addItem;
	["rhs_weap_svdp"] call FNC_addItem;
	["rhs_acc_pso1m2"] call FNC_addItem;
	
	//Assigned Items
	O_default_equipment;
	
};

case "O_DRUG": {
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
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
	O_default_equipment;
	
};


//MG Assistant
case "O_MGA": {
	[O_default_backpack] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	["hlc_75Rnd_762x39_m_rpk",6,"backpack"] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};

//Grenadier (AT)
case "O_RPG": {
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",5,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",5,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",5,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",5,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",5,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",5,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",5,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",5,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",5,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",5,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",5,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",5,"vest"],
			["rhs_weap_m38"]
		]

	] call fnc_AddItemRandom;
	["rhs_weap_rpg7"] call FNC_addItem;
	["rhs_rpg7_OG7V_mag",2,"backpack"] call FNC_addItem;
	["rhs_rpg7_PG7VL_mag",1,"backpack"] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};

//Grenadier Assistant (AT)
case "O_RPGA": {
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_at] call FNC_AddItem;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	["rhs_rpg7_OG7V_mag",2,"backpack"] call FNC_addItem;
	["rhs_rpg7_PG7VL_mag",1,"backpack"] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};

//Rifleman (LAT)
case "O_RAT": {
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	["rhs_weap_rpg26"] call FNC_AddItem;
	//Assigned Items
	O_default_equipment;
};

//Rifleman
case "O_RIF": {
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",6,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",6,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",6,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",6,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",6,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",6,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",6,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",6,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",6,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",6,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",6,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",6,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	//Assigned Items
	O_default_equipment;
};

//Grenadier
case "O_GRE": {
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["rhs_30Rnd_545x39_AK",2,"vest"] call FNC_AddItem;
	["rhs_VOG25",1,"vest"] call FNC_AddItem;
	
	["rhs_30Rnd_545x39_AK",6,"backpack"] call FNC_AddItem;
	["rhs_VOG25",10,"backpack"] call FNC_AddItem;
	["rhs_VG40OP_white",5,"backpack"] call FNC_AddItem;
	
	["rhs_weap_ak74_gp25"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
};
//Grenadier Assistant
case "O_GREA": {
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;

	["rhs_VOG25",20,"backpack"] call FNC_AddItem;
	["rhs_VG40OP_white",15,"backpack"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	
	//Assigned Items
	O_default_equipment;
};

//Combat Life Saver
case "O_MED": {
	[O_vest_medic] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],
		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	
	//Backpack
	["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",12,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
	["ACE_atropine",8,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; 
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",3,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",3,"backpack"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
};

//Combat Life Saver
case "O_mech": {
	[O_vest_medic] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",4,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",4,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",4,"vest"],
			["rhs_weap_aks74u"]
		],	

		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
	
	//Backpack
	["ACE_Banana",1,"backpack"] call FNC_AddItem; 
	["ACE_DefusalKit",1,"backpack"] call FNC_AddItem; 
	["ToolKit",1,"backpack"] call FNC_AddItem; 
	["ACE_wirecutter",1,"backpack"] call FNC_AddItem; 
 

	//Assigned Items
	O_default_equipment;
};


//Marksman
case "O_MARK": {
	[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	//[O_all_headgear_r] call FNC_AddItemRandom;
	
[O_default_goggles_R] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_binoculars] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_10Rnd_762x54mmR_7N1",1,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",1,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",1,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",1,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
			["rhs_acc_pso1m2",1,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",1,"uniform"],
			["rhsgref_10Rnd_792x57_m76",4,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",1,"uniform"],
			["rhsgref_10Rnd_792x57_m76",4,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",1,"uniform"],
			["rhsgref_10Rnd_792x57_m76",4,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",1,"uniform"],
			["rhsgref_10Rnd_792x57_m76",4,"vest"],
			["rhs_acc_pso1m2",1,"vest"],
			["rhs_weap_m76"]
		]

	] call fnc_AddItemRandom;
	
	["rhs_acc_pso1m2"] call FNC_AddItem;
	//Assigned Items
	O_default_equipment;
};
