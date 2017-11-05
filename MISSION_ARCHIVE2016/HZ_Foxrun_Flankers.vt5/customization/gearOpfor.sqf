// Info: RUS MSV Opfor Loadouts
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
#define O_rifle_r "rhs_weap_ak74m","rhs_weap_ak74m_2mag","rhs_weap_ak74m_plummag"
#define O_glrifle "rhs_weap_ak74m_gp25"
#define O_carbine "rhs_weap_ak74m_folded"
#define O_mg "rhs_weap_pkp"
#define O_dmr "rhs_weap_svdp_pso1"

// Magazines
#define O_riflemag "rhs_30Rnd_545x39_7N10_AK"
#define O_riflemag_tr "rhs_30Rnd_545x39_AK_green"
#define O_dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define O_mgmag "rhs_100Rnd_762x54mmR"

// Attachments
#define O_rifle_scope "rhs_acc_1p29"
#define O_rifle_scope2 "rhs_acc_1p78"
#define O_akmb "rhs_acc_dtk"

// Secondary
#define O_sidearm "RH_mak"
#define O_sidearm2 "rhs_weap_pya"
#define O_rsp "rhs_weap_rsp30_red"

// Magazines
#define O_samag "RH_8Rnd_9x18_Mak"
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
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
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
//Uniform 12       
#define O_default_uniform_r "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"


//Headgear 30
#define O_default_headgear_r "CUP_H_TKI_Lungee_01", \
"CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03", "CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Lungee_06"

#define O_headgear_medic_r "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define O_leader_headgear "CUP_H_TK_Lungee"
#define O_pilot_headgear "CUP_H_TK_PilotHelmet"
#define O_aircrew_headgear "CUP_H_TK_TankerHelmet"

//Backpack
#define O_backpack "CUP_B_CivPack_WDL"
#define O_RPG_Backpack "rhs_rpg_empty"
#define O_Med_Backpack "CUP_B_CivPack_WDL"

//Vests 24
#define O_vest_default_r "CUP_V_OI_TKI_Jacket1_04", "CUP_V_OI_TKI_Jacket1_01", "CUP_V_OI_TKI_Jacket1_05", "CUP_V_OI_TKI_Jacket1_02", \
"CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket4_04", "CUP_V_OI_TKI_Jacket4_05", "CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket4_06", \
"CUP_V_OI_TKI_Jacket2_06", "CUP_V_OI_TKI_Jacket3_05", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket3_01", "CUP_V_OI_TKI_Jacket2_04", \
"CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_01", "CUP_V_OI_TKI_Jacket3_04", "CUP_V_OI_TKI_Jacket3_02", "CUP_V_OI_TKI_Jacket3_03", \
"CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket2_02", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket2_05", "CUP_V_OI_TKI_Jacket2_01"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon
//Platoon Commander
case "O_dealer": {
	["rhs_tsh4_ess_bala"] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	["CUP_V_OI_TKI_Jacket4_05"] call FNC_AddItem;
	["CUP_B_SLA_Medicbag"] call FNC_AddItem;

	//Uniform
	["CUP_30Rnd_Sa58_M_TracerG",4,"backpack"] call FNC_AddItem;
	["CUP_1Rnd_HE_M203",8,"backpack"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,3,"uniform"] call FNC_AddItem;

	//Vest
	["CUP_30Rnd_Sa58_M_TracerG",2,"uniform"] call FNC_AddItem; 
	["CUP_30Rnd_Sa58_M_TracerG",2,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["CUP_arifle_Sa58RIS2_gl"] call FNC_AddItem;
	
	//Attachments
	["acc_flashlight"] call FNC_AddItem;

};

case "O_Guard": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	["CUP_B_ACRScout_m95"] call FNC_AddItem;

	//Uniform
	["CUP_30Rnd_Sa58_M_TracerG",1,"uniform"] call FNC_AddItem;
	["CUP_30Rnd_Sa58_M_TracerG",3,"backpack"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	["CUP_30Rnd_Sa58_M_TracerG",3,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["CUP_arifle_Sa58RIS1_des"] call FNC_AddItem;
		["acc_flashlight"] call FNC_AddItem;

};
