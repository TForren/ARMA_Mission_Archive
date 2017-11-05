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
#define B_default_uniform_r "U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_C_Man_casual_3_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Camo_F"


#define B_civ_uniform_r "LOP_U_TAK_Civ_Fatigue_15", "LOP_U_TAK_Civ_Fatigue_16", "LOP_U_TAK_Civ_Fatigue_13", "LOP_U_TAK_Civ_Fatigue_14", "LOP_U_TAK_Civ_Fatigue_04", "LOP_U_TAK_Civ_Fatigue_12", "LOP_U_TAK_Civ_Fatigue_11", "LOP_U_TAK_Civ_Fatigue_09", "LOP_U_TAK_Civ_Fatigue_02", "LOP_U_TAK_Civ_Fatigue_10", "LOP_U_TAK_Civ_Fatigue_01","LOP_U_TAK_Civ_Fatigue_05","LOP_U_TAK_Civ_Fatigue_07","LOP_U_TAK_Civ_Fatigue_08","LOP_U_TAK_Civ_Fatigue_06Z"

   
//Headgear
#define B_masked_headgear_r "LOP_H_Turban_mask","LOP_H_Shemag_RED2","LOP_H_Shemag_RED1","LOP_H_Shemag_OLV","LOP_H_Shemag_GRE","LOP_H_Shemag_BLU","LOP_H_Shemag_BLK","H_Hat_Face_Wrap_Olive","H_Hat_Face_Wrap_Desert","H_Hat_Face_Wrap","H_Hat_Face_Cover_Green","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Black","H_Hat_Face_Cover","H_Hat_Kufiya_C","H_Hat_Kufiya_R","H_Hat_Kufiya_G","H_Hat_Kufiya_F","H_Hat_Kufiya","H_Hat_Kufiya_D","H_Hat_Kufiya_B","H_Hat_Face_Wrap_Sand","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_DPM","H_Hat_Face_Wrap_White","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_Dark","H_Hat_Face_Wrap_Black","H_Hat_Face_Balaclava_T"
#define B_unmasked_headgear_r "LOP_H_Turban","LOP_H_Pakol","H_Hat_Turban_D","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Pagri_C","H_Hat_Turban_E","H_Hat_Pagri_B","H_Hat_Turban_B","H_Hat_Taqiyah_B","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E","H_Hat_Taqiyah_C","H_Hat_Taqiyah_A","H_Hat_Pakol","H_Hat_Ghutra","H_Hat_Ghutra_A"
#define B_all_headgear_r "rhs_Booniehat_digi","LOP_H_Shemag_OLV","LOP_H_Shemag_RED1","LOP_H_Shemag_RED2","H_Bandanna_khk","H_Bandanna_sgg","LOP_H_Shemag_BLK","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","rhs_beanie_green","rhs_beanie","H_Booniehat_dgtl","rhsusf_bowman_cap","H_Cap_blk_Raven","rds_rocker_hair2","rds_rocker_hair1","rds_rocker_hair3","rhsgref_M56","H_MilCap_dgtl"


//Backpack
#define B_default_backpack "rhs_sidor"
#define B_rpg_backpack "rhs_rpg_empty"


#define B_default_goggles_R "G_Bandanna_khk","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_tan"

//Vests
#define B_vest_default "V_Chestrig_blk", "V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_PlateCarrierIA1_dgtl","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F"
#define B_vest_ftl "V_AFGHAN_6sh46"
#define B_vest_medic "V_AFGHAN_6sh46"
#define B_vest_grenadier "V_AFGHAN_6sh46"
#define B_vest_mg "V_AFGHAN_6sh46"
#define B_vest_at "V_AFGHAN_6sh46"
#define B_vest_sniper "V_AFGHAN_6sh46"
#define B_vest_vc "V_AFGHAN_6sh46"
#define B_vest_leader "V_AFGHAN_6sh46"
#define B_vest_pc "V_AFGHAN_6sh46"
#define B_vest_pilot "V_AFGHAN_6sh46"

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

	[B_shortrange,1,"uniform"] call FNC_AddItem;
	B_ace_default;
	[B_cuffs,1,"vest"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};

	//Assigned Items
	B_leader_equipment;
	
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
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,"vest"],
			["RH_M16A2"]
		]

	] call fnc_AddItemRandom; 
};

//Senior Rifleman
case "B_FTL": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;

	B_ace_default;

	[B_cuffs,1,"vest"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};

	//Assigned Items
	B_leader_equipment;
	
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
};

//CQB
case "B_CQB": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;

	B_ace_default;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};

	[B_frag,4,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	
	["hlc_10rnd_12g_buck_S12",6,"vest"] call FNC_AddItem;
	["hlc_10rnd_12g_buck_S12",4,"backpack"] call FNC_AddItem;
	["hlc_10rnd_12g_slug_S12",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	["hlc_rifle_saiga12k"] call FNC_AddItem;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	
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


//MG Assistant
case "B_MGA": {
	[B_default_backpack] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	
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
	B_default_equipment;
	
};

//Grenadier (AT)
case "B_RPG": {
	[B_rpg_backpack] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	//Uniform

	B_ace_default;
	
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
	B_default_equipment;
	
};

//Grenadier Assistant (AT)
case "B_RPGA": {
	[B_rpg_backpack] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_at] call FNC_AddItem;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	
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
	B_default_equipment;
	
};

//Rifleman (LAT)
case "B_RAT": {
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	
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
	B_default_equipment;
};

//Rifleman
case "B_RIF": {
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
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
	B_default_equipment;
};

//Grenadier
case "B_GRE": {
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	["rhs_30Rnd_545x39_AK",2,"vest"] call FNC_AddItem;
	["rhs_VOG25",1,"vest"] call FNC_AddItem;
	
	["rhs_30Rnd_545x39_AK",6,"backpack"] call FNC_AddItem;
	["rhs_VOG25",10,"backpack"] call FNC_AddItem;
	["rhs_VG40OP_white",5,"backpack"] call FNC_AddItem;
	
	["rhs_weap_ak74_gp25"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
};
//Grenadier Assistant
case "B_GREA": {
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;

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
	B_default_equipment;
};

//Combat Life Saver
case "B_MED": {
	[B_vest_medic] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	
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
	B_default_equipment;
};

//Combat Life Saver
case "B_mech": {
	[B_vest_medic] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	
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
	B_default_equipment;
};


//Marksman
case "B_MARK": {
	[B_vest_default] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_all_headgear_r] call FNC_AddItemRandom;
	
	if (random 1 > 0.5) then {
		[B_default_goggles_R] call FNC_AddItemRandom;
	};
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	
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
	B_default_equipment;
};
