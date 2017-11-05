// Info: Temperate/Jungle Bierman Security Company Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//RAT - Rifleman (AT)
//GRE - Grenadier
//AR - Automatic Rifleman
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
//PIL - Pilot
//AC - Air Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define I_rifle "RH_M16A2"
#define I_rifle2 "rhs_weap_akm", "rhs_weap_akms"
#define I_rifle3 "UK3CB_BAF_L1A1_Wood"
#define I_ar "hlc_rifle_rpk"
#define I_glrifle "RH_M16A2gl"
#define I_mg "hlc_lmg_m60"
#define I_carb "rhs_weap_m4_carryhandle"

//Secondary
#define I_sidearm "rhsusf_weap_m1911a1"

//Launcher
#define I_rat "rhs_weap_m72a7"
#define I_mat "BWA3_CarlGustaf"
#define I_atheat "BWA3_CarlGustaf_HEAT"
#define I_athe "BWA3_CarlGustaf_HE"
#define I_athedp "BWA3_CarlGustaf_HEDP"
#define I_atsmoke "BWA3_CarlGustaf_Smoke"
#define I_atflare "BWA3_CarlGustaf_Illum"

#define I_rpg "rhs_weap_rpg7"
#define I_rpgheat "rhs_rpg7_PG7VL_mag"
#define I_rpghe "rhs_rpg7_OG7V_mag"

//Attachments
#define I_cco "rhsusf_acc_compm4"
#define I_rco "rhsusf_acc_ACOG3"
#define I_mgo "rhsusf_acc_ELCAN_ard"
#define I_flashlight "acc_flashlight"
#define I_ir_laser "rhsusf_acc_anpeq15side_bk"
#define I_mg_laser "rhsusf_acc_anpeq15side_bk"
#define I_m4mb "rhsusf_acc_SFMB556"
#define I_suppressor "rhsusf_acc_nt4_black"

#define I_rco_marine "rhs_acc_1p78"

#define I_nvs_marine "rhs_acc_1pn93_1"
#define I_suppressor_marine "hlc_muzzle_545SUP_AK"

//Ammo
#define I_riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define I_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define I_riflemag2 "rhs_30Rnd_762x39mm"
#define I_riflemag_tr2 "rhs_30Rnd_762x39mm_tracer"
#define I_riflemag3 "UK3CB_BAF_762_20Rnd"
#define I_riflemag_tr3 "UK3CB_BAF_762_20Rnd_T"

#define I_armag "hlc_45Rnd_762x39_m_rpk"
#define I_mgmag "rhsusf_50Rnd_762x51"
#define I_mgmagap "rhsusf_50Rnd_762x51"
#define I_mgsfmag "BWA3_200Rnd_556x45"
#define I_glhe "rhs_mag_M441_HE"
#define I_glhedp "rhs_mag_M433_HEDP"
#define I_glstun "rhs_mag_M4009"
#define I_glbuck "rhs_mag_m576"
#define I_glflare "rhs_mag_m662_red"
#define I_glsmoke "rhs_mag_m714_white"
#define I_glsmokered "rhs_mag_M713_red"
#define I_samag "rhsusf_mag_7x45acp_MHP"

#define I_glhe_marine "rhs_VOG25"
#define I_glhebounce_marine "rhs_VOG25p"
#define I_glhethermo_marine "rhs_VG40TB"
#define I_glflare_marine "rhs_VG40OP_white"
#define I_glsmoke_marine "rhs_GRD40_white"

#define I_mgmag_mech "rhsusf_100Rnd_762x51_m80a1epr"

//Grenades
#define I_frag "rhs_mag_m67"
#define I_stun "ACE_M84"
#define I_smokew "rhs_mag_an_m8hc"
#define I_smokep "rhs_mag_m18_purple"
#define I_smoker "rhs_mag_m18_red"
#define I_smokey "rhs_mag_m18_yellow"
#define I_flarered "ace_HandFlare_Red"
#define I_flaregreen "ace_HandFlare_Green"
#define I_flarewhite "ace_HandFlare_White"
#define I_flareyellow "ace_HandFlare_Yellow"
#define I_hot "rhs_mag_an_m14_th3"

//=== MISC ===

//Chemical lights
#define I_chemblue "Chemlight_blue"
#define I_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define I_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

#define I_ace_reserve \
["ACE_quikclot",2,"vest"] call FNC_AddItem; \
["ACE_elasticBandage",2,"vest"] call FNC_AddItem; \
["ACE_packingBandage",3,"vest"] call FNC_AddItem; \
["ACE_morphine",1,"vest"] call FNC_AddItem; \
["ACE_tourniquet",1,"vest"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem; \
["ACE_EarPlugs",1,"vest"] call FNC_AddItem;

//ACE
#define Bandage "ACE_quikclot"
#define I_morphine "ACE_morphine"
#define I_epipen "ACE_epinephrine"
#define I_ace_sparebarrel "ACE_SpareBarrel"
#define I_ace_defuse "ACE_DefusalKit"
#define I_ace_firing_device "ACE_Clacker"
#define I_ace_cabletie "ACE_CableTie"
#define I_ace_wirecutters "ACE_wirecutter"
#define I_carkeys "ACE_key_west"
#define I_carpick "ACE_key_lockpick"
#define I_strobe "ACE_IR_Strobe_Item"
#define I_maptools "ACE_MapTools"

//Double Misc
#define I_toolkit "ToolKit"
#define I_explosive "DemoCharge_Remote_Mag"
#define I_at_mine "ATMine_Range_Mag"
#define I_ap_mine "APERSBoundingMine_Range_Mag"
#define I_minedetector "MineDetector"
#define I_binoculars "Binocular"
#define I_range "ACE_Vector"


//Radio
#define I_longrange "ACRE_PRC148"
#define I_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define I_default_uniform "LOP_U_BH_Fatigue_FWDL_LIZ", "LOP_U_BH_Fatigue_FWDL_M81", "LOP_U_BH_Fatigue_GUE_M81_OLV", "LOP_U_BH_Fatigue_M81_LIZ", "LOP_U_BH_Fatigue_M81_FWDL", "LOP_U_BH_Fatigue_GUE_FWDL", "LOP_U_BH_Fatigue_OFI_LIZ", "LOP_U_BH_Fatigue_OFI_FWDL", "LOP_U_BH_Fatigue_OFI_M81"
#define I_pilot_uniform "LOP_U_RACS_Fatigue_01", "LOP_U_RACS_Fatigue_01_slv"

//Headgear
#define I_leader_headgear "usm_bdu_8point_odg", "usm_bdu_8point_tgrstp", "usm_bdu_8point_wdl"
#define I_default_headgear "usm_bdu_boonie_wdl", "usm_bdu_boonie_odg", "usm_bdu_cap_odg", "usm_bdu_cap_wdl", "H_Bandanna_sgg", "usm_bdu_boonie_portliz"
#define I_vcrew_headgear "usm_helmet_cvc"

#define I_pilot_headgear "usm_bdu_boonie_wdl"
#define I_aircrew_headgear "usm_helmet_cvc"

//Backpack
#define I_default_backpack "B_FieldPack_oli"

#define I_medic_backpack "B_Carryall_oli" 
#define I_hmg "RHS_DShkM_Gun_Bag"
#define I_hmg_tripod "RHS_DShkM_TripodLow_Bag"

#define I_mech_backpack "B_Kitbag_cbr"
 
//Vests
#define I_vest_default "V_BandollierB_rgr"
#define I_vest_leader "V_TacVest_oli", "V_TacVest_camo"
                       
//Face
#define I_glasses "rhs_googles_clear"

//NVGs
#define I_nvg "rhsusf_ANPVS_15"

//mech gear- uncomment for mech loadout
// #define I_vest_default "LOP_V_CarrierRig_OLV"
// #define I_default_backpack "UK3CB_BAF_B_Kitbag_OLI"
// #define I_mgmag "JO_120rnd_MG3"
// #define I_mgmagap "JO_120rnd_MG3"
// #define I_mg "JO_MG_MG3"
// #define I_rat "rhs_weap_M136_hedp"
//
//

                       
//=== EQUIPMENT ===
#define I_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define I_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


	//Platoon

	//Platoon Commander
	case "I_PC": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_leader] call FNC_AddItemRandom;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItemRandom;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_samag,2,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_sidearm] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments

	};

	//Platoon Sgt.
	case "I_SGT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItemRandom;	

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;

		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;


		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments

	};

	//Platoon Medic
	case "I_MED": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_medic_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;

		//Uniform

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,2,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,1,"vest"] call FNC_AddItem; 

		[I_smokep,2,"vest"] call FNC_AddItem;
		[I_flarered,2,"vest"] call FNC_AddItem;

		//Backpack
		["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
		["ACE_morphine",12,"backpack"] call FNC_AddItem; 
		["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
		["ACE_atropine",8,"backpack"] call FNC_AddItem; 
		["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_personalAidKit",6,"backpack"] call FNC_AddItem; 

		//Assigned Items
		I_default_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"vest"] call FNC_AddItem;

		//Attachments

	};

	//Rifle and Weapons Squad Lead
	case "I_SL": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_leader] call FNC_AddItemRandom;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,2,"backpack"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 


		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_hot,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments

	};

	//Rifle Squad
	
	//Fire Team Leader
	case "I_FTL1": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments

	};
		//Fire Team Leader AK
	case "I_FTL2": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag2,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag2,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr2,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle2] call FNC_AddItemRandom;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag
		[I_riflemag2,1,"uniform"] call FNC_AddItem;
		
		//Attachments

	};
		//Fire Team Leader FAL
	case "I_FTL3": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag3,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag3,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr3,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle3] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag
		[I_riflemag3,1,"uniform"] call FNC_AddItem;
		
		//Attachments

	};
	
	//Rifleman M16
	case "I_RIF1": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,2,"backpack"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		
		//Attachments

	};
		//Rifleman AK-47
	case "I_RIF2": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag2,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag2,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr2,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle2] call FNC_AddItemRandom;
		
		//Attachments

	};
		//Rifleman FAL
	case "I_RIF3": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag3,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag3,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr3,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle3] call FNC_AddItem;
		
		//Attachments

	};
	
	//Grenadier
	case "I_GRE": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_shortrange,1,"backpack"] call FNC_AddItem;
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_glrifle] call FNC_AddItem;
		
		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		[I_glhe,1,"vest"] call FNC_AddItem;
		
		//Attachments

	};
	
	//Automatic Rifleman
	case "I_AR": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		I_ace_default;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_armag,2,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;

		//Backpack
		[I_armag,5,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_ar] call FNC_AddItem;
		
		//Extra Mag
		[I_armag,1,"vest"] call FNC_AddItem; 
		
		//Attachments

	};

	//Automatic Rifleman Assistant	
		case "I_ARA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag2,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag2,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr2,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;
		[I_armag,5,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle2] call FNC_AddItemRandom;
		
		//Attachments

	};
	
	
	//Weapons Squad
	
	//AT Specialist
	case "I_AT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;
		[I_atheat,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_mat] call FNC_AddItem;

		
		//Attachments

	};
	
	//AT Assistant
	case "I_ATA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem;
		[I_atheat,1,"backpack"] call FNC_AddItem;
		[I_athe,1,"backpack"] call FNC_AddItem;
		[I_athedp,1,"backpack"] call FNC_AddItem;		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;
		
		
		//Attachments

	};
	

	
	//Machine Gunner
	case "I_MG": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_mgmag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[I_mgmagap,5,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_mg] call FNC_AddItem;
		
		//Extra Mag
		[I_mgmag,1,"vest"] call FNC_AddItem;
	};

	//Machine Gunner Assistant AK
	case "I_MGA1": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[I_riflemag2,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag2,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr2,2,"vest"] call FNC_AddItem; 

		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Backpack
		[I_mgmag,4,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle2] call FNC_AddItemRandom;
		[I_binoculars] call FNC_AddItem;
		
		//Attachments

	};
	
		//Machine Gunner Assistant M16
	case "I_MGA2": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,2,"backpack"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Backpack
		[I_mgmag,4,"backpack"] call FNC_AddItem;
		//Assigned Items
		I_default_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		
		//Attachments
		[I_binoculars] call FNC_AddItem;
		
		//Attachments

	};

	//Pilots
	
	//Pilot
	case "I_PIL": {
		[I_pilot_headgear] call FNC_AddItem;
		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		
		//Uniform
		[I_samag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		
		//Vest
		[I_samag,2,"vest"] call FNC_AddItem;

		[I_smoker,2,"vest"] call FNC_AddItem;
		[I_chemgreen,2,"vest"] call FNC_AddItem;
		[I_flarered,1,"vest"] call FNC_AddItem; 
		[I_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_sidearm] call FNC_AddItem;

		//Extra Mag
		[I_samag,1,"uniform"] call FNC_AddItem;
	};
	
	//Air Crew
	case "I_AC": {
		[I_aircrew_headgear] call FNC_AddItem;
		[I_pilot_uniform] call FNC_AddItemRandom;
		[I_vest_pilot] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;

		//Vest
		[I_riflemag,2,"vest"] call FNC_AddItem;

		[I_smoker,2,"vest"] call FNC_AddItem;
		[I_chemgreen,2,"vest"] call FNC_AddItem;
		[I_flarered,1,"vest"] call FNC_AddItem; 
		[I_longrange,1,"vest"] call FNC_AddItem;

		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
	};
	
		//Tank Commander
	case "I_TCC": {
		[I_aircrew_headgear] call FNC_AddItem;
		[I_pilot_uniform] call FNC_AddItemRandom;
		[I_vest_pilot] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;

		//Vest
		[I_riflemag,2,"vest"] call FNC_AddItem;
		[I_tcommander_headgear,1,"vest"] call FNC_AddItem;
		[I_smoker,2,"vest"] call FNC_AddItem;
		[I_chemgreen,2,"vest"] call FNC_AddItem;
		[I_flarered,1,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"vest"] call FNC_AddItem;		
		[I_longrange,1,"vest"] call FNC_AddItem;

		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_carb] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag

	};
	
		//Tank Crew
	case "I_TC": {
		[I_aircrew_headgear] call FNC_AddItem;
		[I_pilot_uniform] call FNC_AddItemRandom;
		[I_vest_pilot] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;

		//Vest
		[I_riflemag,2,"vest"] call FNC_AddItem;
		[I_smoker,2,"vest"] call FNC_AddItem;
		[I_chemgreen,2,"vest"] call FNC_AddItem;

		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_carb] call FNC_AddItem;

		//Extra Mag

	};
	
	
