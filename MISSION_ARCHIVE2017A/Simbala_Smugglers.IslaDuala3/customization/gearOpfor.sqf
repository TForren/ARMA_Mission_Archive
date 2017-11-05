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
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
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
#define O_default_uniform_r "LOP_U_BH_Fatigue_CHOCO_TRI","LOP_U_BH_Fatigue_CHOCO","LOP_U_BH_Fatigue_CHOCO_ACU","LOP_U_BH_Fatigue_CHOCO_FWDL","LOP_U_BH_Fatigue_CHOCO_LIZ","LOP_U_BH_Fatigue_CHOCO_M81","LOP_U_BH_Fatigue_ACU","LOP_U_BH_Fatigue_ACU_TRI","LOP_U_BH_Fatigue_ACU_CHOCO","LOP_U_BH_Fatigue_ACU_FWDL","LOP_U_BH_Fatigue_ACU_LIZ","LOP_U_BH_Fatigue_ACU_M81","LOP_U_BH_Fatigue_FWDL","LOP_U_BH_Fatigue_FWDL_TRI","LOP_U_BH_Fatigue_FWDL_CHOCO","LOP_U_BH_Fatigue_FWDL_ACU","LOP_U_BH_Fatigue_FWDL_LIZ","LOP_U_BH_Fatigue_FWDL_M81","LOP_U_BH_Fatigue_GUE_TRI_TAN","LOP_U_BH_Fatigue_GUE_FWDL","LOP_U_BH_Fatigue_GUE_M81_OLV","LOP_U_BH_Fatigue_M81","LOP_U_BH_Fatigue_M81_TRI","LOP_U_BH_Fatigue_M81_CHOCO","LOP_U_BH_Fatigue_M81_ACU","LOP_U_BH_Fatigue_M81_FWDL","LOP_U_BH_Fatigue_M81_LIZ","LOP_U_BH_Fatigue_OFI_TRI","LOP_U_BH_Fatigue_OFI_ACU","LOP_U_BH_Fatigue_OFI_FWDL","LOP_U_BH_Fatigue_OFI_LIZ","LOP_U_BH_Fatigue_OFI_M81"
   
//Headgear
#define O_all_headgear_r "H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_Black","LOP_H_Turban_mask","H_Hat_Face_Cover_Black","LOP_H_Shemag_BLK"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"

//Vests
#define O_vest_default "V_AFGHAN_6sh46","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F"
#define O_vest_ftl "V_AFGHAN_6sh46"
#define O_vest_medic "V_AFGHAN_6sh46"
#define O_vest_grenadier "V_AFGHAN_6sh46"
#define O_vest_mg "V_TacChestrig_oli_F"
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


//taliban

//Section Leader
case "O_SL": {
	[O_all_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_leader] call FNC_AddItem;

	[O_shortrange,1,"uniform"] call FNC_AddItem;
	O_ace_default;
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		]

	] call fnc_AddItemRandom; 
};

//Senior Rifleman
case "O_FTL": {
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_all_headgear_r] call FNC_AddItemRandom;
	[O_vest_leader] call FNC_AddItem;

	O_ace_default;

	[O_frag,1,"vest"] call FNC_AddItem;
	[O_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		],	
		[
			["LOP_10rnd_77mm_mag",2,"uniform"],
			["LOP_10rnd_77mm_mag",3,"vest"],
			["LOP_Weap_LeeEnfield"]
		],	
		[
			["rhsgref_5Rnd_762x54_m38",2,"uniform"],
			["rhsgref_5Rnd_762x54_m38",3,"vest"],
			["rhs_weap_m38"]
		]	

	] call fnc_AddItemRandom;
};

//Machine Gunner
case "O_MG": {
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_mg] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["hlc_75Rnd_762x39_m_rpk",1,"uniform"],
			["hlc_75Rnd_762x39_m_rpk",2,"vest"],
			["hlc_75Rnd_762x39_m_rpk",4,"backpack"],
			["hlc_rifle_rpk"]
		],
		[
			["rhs_45Rnd_545X39_AK",1,"uniform"],
			["rhs_45Rnd_545X39_AK",2,"vest"],
			["rhs_45Rnd_545X39_AK",4,"backpack"],
			["hlc_rifle_rpk74n"]
		],
		[
			["rhs_100Rnd_762x54mmR",1,"vest"],
			["rhs_100Rnd_762x54mmR",3,"backpack"],
			["rhs_weap_pkm"]
		],
		[
			["hlc_75Rnd_762x39_m_rpk",1,"uniform"],
			["hlc_75Rnd_762x39_m_rpk",2,"vest"],
			["hlc_75Rnd_762x39_m_rpk",4,"backpack"],
			["hlc_rifle_rpk"]
		]

	] call fnc_AddItemRandom;
	//Assigned Items
	O_default_equipment;
	
};

//Grenadier (AT)
case "O_RPG": {
	[O_rpg_backpack] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_at] call FNC_AddItem;
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],
		[
			["rhs_mag_9x18_8_57N181S",2,"uniform"],
			["rhs_mag_9x18_8_57N181S",3,"vest"],
			["rhs_weap_makarov_pm"]
		],
		[
			["LOP_10rnd_77mm_mag",1,"uniform"],
			["LOP_10rnd_77mm_mag",4,"vest"],
			["LOP_Weap_LeeEnfield"]
		],
		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",4,"vest"],
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
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		],	
		[
			["LOP_10rnd_77mm_mag",2,"uniform"],
			["LOP_10rnd_77mm_mag",3,"vest"],
			["LOP_Weap_LeeEnfield"]
		],	
		[
			["rhsgref_5Rnd_762x54_m38",2,"uniform"],
			["rhsgref_5Rnd_762x54_m38",3,"vest"],
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
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",1,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		],	
		[
			["LOP_10rnd_77mm_mag",1,"uniform"],
			["LOP_10rnd_77mm_mag",3,"vest"],
			["LOP_Weap_LeeEnfield"]
		],	
		[
			["rhsgref_5Rnd_762x54_m38",1,"uniform"],
			["rhsgref_5Rnd_762x54_m38",3,"vest"],
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
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akm"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["hlc_rifle_ak47"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70b1"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_ak74_dirty2"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["hlc_rifle_aks74"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		],	
		[
			["LOP_10rnd_77mm_mag",2,"uniform"],
			["LOP_10rnd_77mm_mag",3,"vest"],
			["LOP_Weap_LeeEnfield"]
		],	
		[
			["rhsgref_5Rnd_762x54_m38",2,"uniform"],
			["rhsgref_5Rnd_762x54_m38",3,"vest"],
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
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm_89",2,"uniform"],
			["rhs_30Rnd_762x39mm_89",3,"vest"],
			["rhs_weap_akms"]
		],
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m70ab2"]
		],	
		[
			["rhs_30Rnd_762x39mm",2,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],	
		[
			["rhs_30Rnd_545x39_AK",2,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74u"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16a1"]
		],	
		[
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,"uniform"],
			["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,"vest"],
			["RH_M16A2"]
		],	
		[
			["LOP_10rnd_77mm_mag",2,"uniform"],
			["LOP_10rnd_77mm_mag",3,"vest"],
			["LOP_Weap_LeeEnfield"]
		],	
		[
			["rhsgref_5Rnd_762x54_m38",2,"uniform"],
			["rhsgref_5Rnd_762x54_m38",3,"vest"],
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


//Marksman
case "O_MARK": {
[O_vest_default] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_all_headgear_r] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	[O_binoculars] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_10Rnd_762x54mmR_7N1",2,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",3,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",2,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",3,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",2,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",3,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1",2,"uniform"],
			["rhs_10Rnd_762x54mmR_7N1",3,"vest"],
			["rhs_acc_pso1m2",1,"vest"],
			["rhs_weap_svdp_wd"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",2,"uniform"],
			["rhsgref_10Rnd_792x57_m76",3,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",2,"uniform"],
			["rhsgref_10Rnd_792x57_m76",3,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",2,"uniform"],
			["rhsgref_10Rnd_792x57_m76",3,"vest"],
			["rhs_weap_m76"]
		],
		[
			["rhsgref_10Rnd_792x57_m76",2,"uniform"],
			["rhsgref_10Rnd_792x57_m76",3,"vest"],
			["rhs_acc_pso1m2",1,"vest"],
			["rhs_weap_m76"]
		]

	] call fnc_AddItemRandom;
	//Assigned Items
	O_default_equipment;
};
