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
#define O_default_uniform_r "rhsgref_uniform_flecktarn","LOP_U_AM_Fatigue_01_6"
   
//Headgear

#define O_all_headgear_r "rhs_beanie_green"


//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"

//Vests
#define O_vest_default "V_TacChestrig_grn_F"
#define O_vest_ftl "V_TacChestrig_grn_F"
#define O_vest_medic "V_TacChestrig_grn_F"
#define O_vest_grenadier "V_TacChestrig_grn_F"
#define O_vest_mg "V_TacChestrig_grn_F"
#define O_vest_at "V_TacChestrig_grn_F"
#define O_vest_sniper "V_TacChestrig_grn_F"
#define O_vest_vc "V_TacChestrig_grn_F"
#define O_vest_leader "V_TacChestrig_grn_F"
#define O_vest_pc "V_TacChestrig_grn_F"
#define O_vest_pilot "V_TacChestrig_grn_F"

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

//Rifleman
case "O_FTL": {
	["V_TacChestrig_grn_F"] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	["G_Bandanna_oli"] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	[O_shortrange,1] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_ak74"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akm"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akms"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74"],
			["rhs_acc_2dpZenit"]
		]

	] call fnc_AddItemRandom;
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
};

//Machine Gunner
case "O_MG": {
	["V_TacChestrig_grn_F"] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	["G_Bandanna_oli"] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	
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
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};

//Grenadier (AT)
case "O_AT": {
	[O_rpg_backpack] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	[O_vest_at] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	//Uniform

	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_m92"]
		],
		[
			["rhs_mag_9x18_8_57N181S",1,"uniform"],
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
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	["rhs_rpg7_PG7V_mag",3,"backpack"] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};

//Grenadier Assistant (AT)
case "O_AAT": {
	[O_rpg_backpack] call FNC_AddItem;
	["V_TacChestrig_grn_F"] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	["G_Bandanna_oli"] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_ak74"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akm"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akms"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74"],
			["rhs_acc_2dpZenit"]
		]

	] call fnc_AddItemRandom;
	["rhs_rpg7_PG7V_mag",3,"backpack"] call FNC_addItem;
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
	
};


//Rifleman
case "O_RIF": {
	["V_TacChestrig_grn_F"] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	["G_Bandanna_oli"] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_ak74"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akm"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akms"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74"],
			["rhs_acc_2dpZenit"]
		]

	] call fnc_AddItemRandom;
	
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
};


//Rifleman
case "O_SAP": {
	["V_TacChestrig_grn_F"] call FNC_AddItem;
	["B_Carryall_khk"] call FNC_AddItem;
	["rhsgref_uniform_flecktarn","rhsgref_uniform_woodland_olive"] call FNC_AddItemRandom;
	["G_Bandanna_oli"] call FNC_AddItem;
	["rhs_beanie_green","H_Watchcap_blk","H_Watchcap_cbr","rhs_beanie","H_Watchcap_camo"] call FNC_AddItemRandom;
	
	O_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	["ACE_HandFlare_Red",1,"uniform"] call FNC_AddItem;
	
	[
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_ak74"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akm"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_762x39mm",1,"uniform"],
			["rhs_30Rnd_762x39mm",3,"vest"],
			["rhs_weap_akms"],
			["rhs_acc_2dpZenit"]
		],
		[
			["rhs_30Rnd_545x39_AK",1,"uniform"],
			["rhs_30Rnd_545x39_AK",3,"vest"],
			["rhs_weap_aks74"],
			["rhs_acc_2dpZenit"]
		]

	] call fnc_AddItemRandom;
	
	["rhs_weap_rsp30_red"] call FNC_addItem;
	["ACE_HandFlare_Red",2] call FNC_addItem;
	["ACE_FlareTripMine_Mag",10] call FNC_addItem;
	//Assigned Items
	O_default_equipment;
};
