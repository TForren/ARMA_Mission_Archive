// Info: CDF Blufor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
//              Infantry Loadouts
//              PC              - Platoon Commander
//              RTO             - Platoon Sgt.
//              SL              - Squad Leader
//              MED             - Medic
//              FTL             - Senior Rifleman
//              AR              - Automatic Rifleman
//              RAT             - rifleman (AT)
//              RIF             - Rifleman
//              MAT             - Medium AT
//              MATA            - Medium AT Assistant
//              VC              - Vehicle Commander
//              VG              - Vehicle Gunner
//              VD              - Vehicle Driver
//              PIL             - Pilot
//              PILR            - Co-Pilot
//              AIRCR           - Air Crew
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv


//========================Equipment Definitions========================
//=== Weapons ===

// Rifles
#define B_rifle "hlc_rifle_ak74_dirty"
#define B_rifle2 "hlc_rifle_ak74"
#define B_glrifle "hlc_rifle_aks74_GL"
#define B_ar "hlc_rifle_rpk74n"
#define B_carbine "hlc_rifle_aks74u"
#define B_riflemag "hlc_30Rnd_545x39_B_AK"
#define B_riflemag_tr "hlc_30Rnd_545x39_T_AK"
#define B_armag "hlc_45Rnd_545x39_t_rpk"

//Launchers
#define B_rat "rhs_weap_rpg26"
#define B_ratmag "rhs_rpg26_mag"
#define B_mat "rhs_weap_rpg7"
#define B_mat_heat "rhs_rpg7_PG7VL_mag"
#define B_mat_frag "rhs_rpg7_OG7V_mag"

//Pistol
#define B_sidearm "RH_mak"
#define B_samag "RH_8Rnd_9x18_Mak"
#define B_rsp "rhs_weap_rsp30_red"
#define B_rspmag "rhs_mag_rsp30_red"

// frags
#define B_frag "rhs_mag_rgd5"
#define B_smoke "rhs_mag_rdg2_white"

// GL Mags
#define glmag "hlc_VOG25_AK"
#define glmag2 "hlc_GRD_White"

//=== MISC ===

//Chemical lights
#define B_chemgreen "Chemlight_green"

//ACE
#define B_bandage "ACE_fieldDressing"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_ace_firing_device "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"

// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",1,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["Chemlight_green",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define B_binoculars "Binocular"
#define B_range "ACE_Vector"
				   
//Radio
#define B_longrange "ACRE_PRC152"
#define B_shortrange "ACRE_PRC343"

//Other
#define B_cuffs "ACE_CableTie"
#define B_nana "ACE_Banana"

//=== Clothes ===

//Headgear
#define B_default_headgear "LOP_H_PASGTHelmet_cover_CDF", "LOP_H_PASGTHelmet_OLV"
#define B_vcrew_headgear "rhs_tsh4"
#define B_pilot_headgear "rhs_gssh18"

//Uniform
#define B_default_uniform "LOP_U_CDF_Fatigue_01", "LOP_U_CDF_Fatigue_01_slv"

//Vests
#define B_vest_default "RNR_Rys_m_KORA_gr"
#define B_vest_grenadier "RNR_Rys_m_KORAgp_gr"
#define B_vest_ar "RNR_Smersh_kora_PK"
#define B_vest_crew "rhs_6sh46"

//Backpack
#define B_default_backpack "B_AssaultPack_rgr"
#define B_rpg_backpack "rhs_rpg"
#define B_long_range_backpack "tf_rt1523g_bwmod"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_gear \
[B_default_headgear] call FNC_AddItemRandom; \
[B_default_uniform] call FNC_AddItemRandom; \
[B_vest_default] call FNC_AddItem; \
[B_default_backpack] call FNC_AddItem;

//================ Platoon Leader==================
case "B_PC": {
	//Bags
	B_default_gear

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	[B_samag, 2, "backpack"] call FNC_AddItem;

	//Weapons
	[B_rifle2] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 2, "backpack"] call FNC_AddItem;

	//Items
	[B_cuffs, 2, "backpack"] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;
	[B_longrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};
//================Platoon Sgt.==================
case "B_SGT": {
	//Bags
	B_default_gear

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;

	//Weapons
	[B_rifle2] call FNC_AddItem;
	["rhs_weap_tr8"] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 2, "backpack"] call FNC_AddItem;

	//Items
	[B_cuffs, 2, "backpack"] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;
	[B_longrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};
//================Platoon RTO.==================
case "B_RTO": {
	//Bags
	B_default_gear

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;

	//Weapons
	[B_rifle2] call FNC_AddItem;
	["rhs_weap_tr8"] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 2, "backpack"] call FNC_AddItem;

	//Items
	[B_cuffs, 2, "backpack"] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;
	[B_longrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};

//================Squad Leader==================
case "B_SL": {
	//Bags
	B_default_gear

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	[B_riflemag, 2, "backpack"] call FNC_AddItem;

	//Weapons
	[B_rifle2] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 2, "backpack"] call FNC_AddItem;

	//Items
	[B_cuffs, 2, "backpack"] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;
	[B_longrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};

//================Senior Rifleman==================
case "B_FTL": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_grenadier] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	[B_riflemag, 2, "backpack"] call FNC_AddItem;

	//Weapons
	[B_glrifle] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 2, "backpack"] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};

//================Medic==================
case "B_MED": {
	//Bags
	B_default_gear

	//Mags
	[B_riflemag, 3, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	[B_riflemag, 2, "backpack"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Backpack
	["ACE_fieldDressing", 10, "uniform"] call FNC_AddItem; 
	["ACE_elasticBandage", 10, "backpack"] call FNC_AddItem; 
	["ACE_packingBandage", 10, "backpack"] call FNC_AddItem; 
	["ACE_quikclot", 10, "backpack"] call FNC_AddItem; 
	["ACE_morphine", 10, "uniform"] call FNC_AddItem; 
	["ACE_epinephrine", 10, "uniform"] call FNC_AddItem; 
	["ACE_atropine", 8, "backpack"] call FNC_AddItem; 
	["ACE_tourniquet", 1, "backpack"] call FNC_AddItem; 
	["ACE_salineIV_500", 5, "backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500", 5, "backpack"] call FNC_AddItem; 
	["ACE_personalAidKit", 4, "backpack"] call FNC_AddItem;
};

//================Auto-Rifleman==================
case "B_AR": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_ar] call FNC_AddItem;

	//Mags
	[B_armag, 6, "vest"] call FNC_AddItem;

	//Weapons
	[B_ar] call FNC_AddItem;
	[B_frag, 1, "vest"] call FNC_AddItem;
	[B_smoke, 1, "vest"] call FNC_AddItem;

	//ACE
	B_ace_default
};

//================Rifleman (AT)==================
case "B_RAT": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;

	//Mags
	[B_riflemag, 2, "uniform"] call FNC_AddItem;
	[B_riflemag, 4, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	[B_ratmag, 1, "vest"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
	[B_frag, 1, "uniform"] call FNC_AddItem;
	[B_smoke, 1, "uniform"] call FNC_AddItem;

	//ACE
	B_ace_default
};

//================Rifleman==================
case "B_RIF": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;

	//Mags
	[B_riflemag, 2, "uniform"] call FNC_AddItem;
	[B_riflemag, 4, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_frag, 1, "uniform"] call FNC_AddItem;
	[B_smoke, 1, "uniform"] call FNC_AddItem;

	//ACE
	B_ace_default
};

//================Medium (AT)==================
case "B_MAT": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_rpg_backpack] call FNC_AddItem;

	//Mags
	[B_riflemag, 2, "uniform"] call FNC_AddItem;
	[B_riflemag, 4, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	//[B_mat_frag, 1, "backpack"] call FNC_AddItem;
	//[B_mat_heat, 1, "backpack"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	[B_frag, 1, "uniform"] call FNC_AddItem;
	[B_smoke, 1, "uniform"] call FNC_AddItem;

	//ACE
	B_ace_default
};

//================Medium (AT) Assistant==================
case "B_ATA": {
	//Bags
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_rpg_backpack] call FNC_AddItem;

	//Mags
	[B_riflemag, 4, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 2, "vest"] call FNC_AddItem;
	//[B_mat_frag, 1, "backpack"] call FNC_AddItem;
	//[B_mat_heat, 1, "backpack"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_binoculars] call FNC_AddItem;
	[B_frag, 2, "vest"] call FNC_AddItem;
	[B_frag, 1, "uniform"] call FNC_AddItem;
	[B_smoke, 1, "uniform"] call FNC_AddItem;

	//ACE
	B_ace_default
};

//================Pilot==================
case "B_PIL": {
	//Bags
	[B_pilot_headgear] call FNC_AddItem;
	["ItemGPS"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItemRandom;
	[B_vest_crew] call FNC_AddItem;

	//Mags
	[B_riflemag, 2, "vest"] call FNC_AddItem;
	[B_riflemag_tr, 1, "vest"] call FNC_AddItem;

	//Weapons
	[B_carbine] call FNC_AddItem;

	//Radios
	[B_shortrange, 1, "uniform"] call FNC_AddItem;
	[B_longrange, 1, "uniform"] call FNC_AddItem;

	//Sets
	B_leader_equipment

	//ACE
	B_ace_default
};
