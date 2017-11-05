// Info: Royal Army Corp of Sahrani Independent Loadouts
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
#define I_ar "hlc_rifle_rpk74n"
#define I_glrifle "RH_M16A2gl"
#define I_mg "rhs_weap_m240B"
#define I_carb "rhs_weap_m4_carryhandle"
#define I_rifle_res "rhs_weap_ak74m_plummag"
#define I_rifle_sf "rhs_weap_hk416d145"
#define I_glrifle_sf "rhs_weap_hk416d145_m320"
#define I_mg_sf "BWA3_MG4"

#define I_rifle_marine "hlc_rifle_ak74_dirty2", "hlc_rifle_aks74"
#define I_ar2 "rhs_weap_m249"
#define I_glrifle_marine "hlc_rifle_aks74_GL"

#define I_mg_mech "rhs_weap_m240B"

//Secondary
#define I_sidearm "rhsusf_weap_m1911a1"

//Launcher
#define I_rat "rhs_weap_m72a7"
#define I_rathedp "rhs_weap_M136_hedp"
#define I_ratheat "rhs_weap_M136"
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

//Ammo
#define I_riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define I_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define I_rifleresmag "rhs_30Rnd_545x39_AK"
#define I_rifleresmag_tr "rhs_30Rnd_545x39_AK"
#define I_armag "rhs_45Rnd_545X39_AK"
#define I_armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define I_mgmag "rhsusf_100Rnd_762x51_m80a1epr"
#define I_mgmagap "rhsusf_100Rnd_762x51_m993"
#define I_mgsfmag "BWA3_200Rnd_556x45"
#define I_glhe "rhs_mag_M441_HE"
#define I_glhedp "rhs_mag_M433_HEDP"
#define I_glstun "rhs_mag_M4009"
#define I_glbuck "rhs_mag_m576"
#define I_glflare "rhs_mag_m662_red"
#define I_glsmoke "rhs_mag_m714_white"
#define I_glsmokered "rhs_mag_M713_red"
#define I_samag "rhsusf_mag_7x45acp_MHP"

#define I_riflemag_marine "rhs_30Rnd_545x39_AK"
#define I_riflemag_tr_marine "rhs_30Rnd_545x39_AK"
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
#define I_default_uniform "LOP_U_RACS_Fatigue_01", "LOP_U_RACS_Fatigue_01_slv"
#define I_reserve_uniform "usm_bdu_d"
#define I_sf_uniform "CORX_Uniform_ATACS_AU"
#define I_pilot_uniform "LOP_U_RACS_Fatigue_01", "LOP_U_RACS_Fatigue_01_slv"

//Headgear
#define I_leader_headgear "LOP_H_6B27M_ess_RACS"
#define I_default_headgear "LOP_H_6B27M_RACS"
#define I_reservist_headgear "LOP_H_SSh68Helmet_TAN"
#define I_sf_headgear "CORX_ATACS_AU_helmet"
#define I_vcrew_headgear "usm_helmet_cvc"
#define I_tcommander_headgear "H_Beret_blk"
#define I_pcommander_headgear "LOP_H_Booniehat_RACS"
#define I_pilot_headgear "H_PilotHelmetHeli_B"
#define I_aircrew_headgear "usm_helmet_cvc"

//Backpack
#define I_default_backpack "B_Kitbag_cbr"
#define I_sf_backpack "BWA3_Kitbag_Tropen"
#define I_reservist_backpack "B_FieldPack_cbr"
#define I_medic_backpack "tin_backpack_caf_carryall_ar_medic" 
#define I_hmg "RHS_DShkM_Gun_Bag"
#define I_hmg_tripod "RHS_DShkM_TripodLow_Bag"

#define I_backpack_marine "UK3CB_BAF_B_Kitbag_OLI"
#define I_backpack_marine_medic "BWA3_Kitbag_Fleck_Medic"

#define I_mech_backpack "B_Kitbag_cbr"
 
//Vests
//#define I_vest_default "LOP_V_CarrierRig_TAN" 
#define I_vest_default "LOP_V_CarrierLite_TAN"
#define I_vest_vehiclecrew_commander "LOP_V_CarrierRig_TAN"
#define I_vest_vehiclecrew "LOP_V_CarrierRig_TAN"
#define I_vest_pilot "LOP_V_CarrierRig_TAN"
#define I_vest_reservist "usm_vest_LBE_rm"
#define I_vest_sf "BWA3_Vest_Tropen"

#define I_vest_marine "LOP_V_CarrierLite_WDL"

#define I_vest_mech "LOP_V_CarrierRig_TAN"
                       
//Face
#define I_glasses "rhs_googles_clear"
#define I_bandanna "G_Bandanna_khk"

//NVGs
#define I_nvg "rhsusf_ANPVS_15"

//mech gear- uncomment for mech loadout
 #define I_vest_default "LOP_V_CarrierRig_OLV"
 #define I_default_backpack "UK3CB_BAF_B_Kitbag_OLI"
 #define I_mgmag "JO_120rnd_MG3"
 #define I_mgmagap "JO_120rnd_MG3"
 #define I_mg "JO_MG_MG3"
 #define I_rat "rhs_weap_M136_hedp"
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
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_pcommander_headgear,1,"backpack"] call FNC_AddItem;
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_samag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;

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
		[I_leader_headgear] call FNC_AddItem;		
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_hot,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;


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
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"vest"] call FNC_AddItem;
		[I_ace_cabletie,2,"vest"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_smokep,1,"vest"] call FNC_AddItem;
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
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		//Attachments

	};

	//Rifle and Weapons Squad Lead
	case "I_SL": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
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
	case "I_FTL": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[I_glhe,12,"backpack"] call FNC_AddItem;
		[I_glhedp,5,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_glrifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments

	};
	
	//Rifleman (AT)
	case "I_RAT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,6,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_rat] call FNC_AddItem;
		
		//Attachments

	};
	
	//Grenadier
	case "I_GRE": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_glhe,12,"backpack"] call FNC_AddItem;
		[I_glhedp,5,"backpack"] call FNC_AddItem;
		[I_glsmoke,2,"vest"] call FNC_AddItem;
		[I_glsmokered,2,"vest"] call FNC_AddItem;
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
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_armag,2,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;

		//Backpack
		[I_armag,3,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_ar] call FNC_AddItem;
		
		//Extra Mag
		[I_armag,1,"vest"] call FNC_AddItem; 
		
		//Attachments

	};
	
		
	//Automatic Rifleman Light Platoon
	case "I_AR2": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_armag2,2,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;

		//Backpack
		[I_armag2,3,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_ar2] call FNC_AddItem;
		
		//Extra Mag
		[I_armag2,1,"vest"] call FNC_AddItem; 
		
		//Attachments

	};
	
		
	//Automatic Rifleman
	case "I_ARA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;

		//Backpack
		[I_armag,3,"backpack"] call FNC_AddItem;
		[I_riflemag,3,"backpack"] call FNC_AddItem;		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		
		//Extra Mag
		[I_riflemag,1,"vest"] call FNC_AddItem; 
		
		//Attachments
		[I_binoculars] call FNC_AddItem;
	};
	
	//Weapons Squad
	
	//AT Specialist
	case "I_AT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
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
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
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
	
		//AT Shellbearer
	case "I_ATAB": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem;
		[I_atsmoke,1,"backpack"] call FNC_AddItem;
		[I_athe,2,"backpack"] call FNC_AddItem;
		[I_atflare,1,"backpack"] call FNC_AddItem;		
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
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_mgmag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[I_mgmagap,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_mg] call FNC_AddItem;
		
		//Extra Mag
		[I_mgmag,1,"vest"] call FNC_AddItem;
	};

	//Machine Gunner Assistant
	case "I_MGA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_frag,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,7,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Backpack
		[I_mgmag,3,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;
		
		//Attachments

	};

	//Pilots
	
	//Pilot
	case "I_PIL": {
		[I_pilot_headgear] call FNC_AddItem;
		[I_pilot_uniform] call FNC_AddItemRandom;
		[I_vest_pilot] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		
		//Vest
		[I_riflemag,2,"vest"] call FNC_AddItem;

		[I_smoker,2,"vest"] call FNC_AddItem;
		[I_chemgreen,2,"vest"] call FNC_AddItem;
		[I_flarered,1,"vest"] call FNC_AddItem; 
		[I_strobe,1,"vest"] call FNC_AddItem; 
		[I_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
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
		[I_strobe,1,"vest"] call FNC_AddItem; 
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
	
	
	//Reservist Platoon
	
		//Platoon Commander
	case "I_RPC": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform


		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_maptools,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_pcommander_headgear,1,"backpack"] call FNC_AddItem;
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_samag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem; 
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_sidearm] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments

	};

	//Platoon Sgt.
	case "I_RSGT": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform


		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_maptools,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_hot,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;


		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments

	};

	//Platoon Medic
	case "I_RMED": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_medic_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform


		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

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


		//Attachments

	};

	//Rifle and Weapons Squad Lead
	case "I_RSL": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform


		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_maptools,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_smokew,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_hot,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
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
	case "I_RFTL": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag

		
		//Attachments

	};
	
	//Rifleman (AT)
	case "I_RRAT": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_rat] call FNC_AddItem;
		
		//Attachments

	};
	
	//Grenadier
	case "I_RGRE": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"vest"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_glhe,12,"backpack"] call FNC_AddItem;
		[I_glhedp,5,"backpack"] call FNC_AddItem;
		[I_glsmoke,2,"vest"] call FNC_AddItem;
		[I_glsmokered,2,"vest"] call FNC_AddItem;

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
	case "I_RAR": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_reserve;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"vest"] call FNC_AddItem;
		
		//Vest
		[I_armag,2,"vest"] call FNC_AddItem;

		[I_flarered,1,"vest"] call FNC_AddItem;

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
	
	
	//Weapons Squad
	
	//AT Specialist
	case "I_RESAT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform

		I_ace_reserve;

		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
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
	case "I_RESATA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
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
	
		//Rifleman
	case "I_RRIF": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;

		//Attachments
	};
	
		//alt rifleman
		case "I_RRIF2": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_rifleresmag,5,"vest"] call FNC_AddItem; 
		[I_rifleresmag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_res] call FNC_AddItem;

		//Attachments
	};
	
		//Automatic Rifleman
	case "I_RAR": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_reservist_backpack] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_reserve;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_armag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[I_armag,5,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_ar] call FNC_AddItem;
		
		//Extra Mag
		[I_armag,1,"vest"] call FNC_AddItem;
	};
	
	//Machine Gunner
	case "I_RMG": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_hmg] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform

		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;

		//Vest
		[I_rifleresmag,5,"vest"] call FNC_AddItem; 
		[I_rifleresmag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;


		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_res] call FNC_AddItem;

	};

	//Machine Gunner Assistant
	case "I_RMGA": {

		[I_reserve_uniform] call FNC_AddItemRandom;
		[I_vest_reservist] call FNC_AddItem;
		[I_hmg_tripod] call FNC_AddItem;
		[I_reservist_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform

		
		I_ace_reserve;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;

		
		//Vest
		[I_rifleresmag,5,"vest"] call FNC_AddItem; 
		[I_rifleresmag_tr,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;


		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_res] call FNC_AddItem;


	};
	
		//Platinum Stars Special Forces
	
		//Platoon Commander
	case "I_SFPC": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_pcommander_headgear,1,"backpack"] call FNC_AddItem;
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_samag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_sidearm] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};

	//Platoon Sgt.
	case "I_SFSGT": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_hot,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;


		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};

	//Platoon Medic
	case "I_SFMED": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,1,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_smokew,2,"vest"] call FNC_AddItem;
		[I_smokep,2,"backpack"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

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
		[I_rifle_sf] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};

	//Rifle and Weapons Squad Lead
	case "I_SFSL": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
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
		[I_rifle_sf] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};

	//Rifle Squad
	
	//Fire Team Leader
	case "I_SFFTL": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[I_glhe,12,"backpack"] call FNC_AddItem;
		[I_glhedp,5,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_glrifle_sf] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
	
	//Rifleman (AT)
	case "I_SFRAT": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_ratheat] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
	
	//Grenadier
	case "I_SFGRE": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_glhe,12,"backpack"] call FNC_AddItem;
		[I_glhedp,5,"backpack"] call FNC_AddItem;
		[I_glsmoke,2,"vest"] call FNC_AddItem;
		[I_glsmokered,2,"vest"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_glrifle_sf] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;	
		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		[I_glhe,1,"vest"] call FNC_AddItem;
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
		
	//Weapons Squad
	
	//AT Specialist
	case "I_SFAT": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"vest"] call FNC_AddItem;
		[I_atheat,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_mat] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
	
	//AT Assistant
	case "I_SFATA": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem;
		[I_atheat,1,"backpack"] call FNC_AddItem;
		[I_athe,1,"backpack"] call FNC_AddItem;
		[I_athedp,1,"backpack"] call FNC_AddItem;		
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;		
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
	

	//Machine Gunner
	case "I_SFMG": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_mgsfmag,1,"vest"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;		
		//Backpack
		[I_mgsfmag,3,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_mg_sf] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;		
		[I_suppressor] call FNC_AddItem;
		[I_mgo] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
		
		//Extra Mag
	};

	//Machine Gunner Assistant
	case "I_SFMGA": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag,4,"backpack"] call FNC_AddItem; 
		[I_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[I_flarered,1,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;	
		//Backpack
		[I_mgsfmag,3,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_sf] call FNC_AddItem;
		[I_range] call FNC_AddItem;
		[I_nvg] call FNC_AddItem;
		
		//Attachments
		[I_suppressor] call FNC_AddItem;
		[I_cco] call FNC_AddItem;
		[I_ir_laser] call FNC_AddItem;
	};
	
	//Marines
	
	
		//Marine Platoon Commander
	case "I_MPC": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_pcommander_headgear,1,"backpack"] call FNC_AddItem;
		//Vest
		[I_riflemag_marine,4,"vest"] call FNC_AddItem; 
		[I_samag,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_sidearm] call FNC_AddItem;
		[I_range] call FNC_AddItem;

		//Attachments

	};

	//Platoon Sgt.
	case "I_MSGT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"vest"] call FNC_AddItem;

		//Vest
		[I_riflemag_marine,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_hot,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		[I_longrange,1,"backpack"] call FNC_AddItem;
		[I_leader_headgear,1,"backpack"] call FNC_AddItem;


		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_range] call FNC_AddItem;

		//Attachments

	};

	//Platoon Medic
	case "I_MMED": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine_medic] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"vest"] call FNC_AddItem;

		//Vest
		[I_riflemag_marine,3,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,1,"vest"] call FNC_AddItem; 

		[I_smokew,2,"vest"] call FNC_AddItem;
		[I_smokep,1,"vest"] call FNC_AddItem;
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
		[I_rifle_marine] call FNC_AddItemRandom;

		//Extra Mag
		[I_riflemag_marine,1,"uniform"] call FNC_AddItem;

		//Attachments

	};

	//Rifle and Weapons Squad Lead
	case "I_MSL": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;

		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"vest"] call FNC_AddItem;

		//Vest
		[I_riflemag_marine,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 


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
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_binoculars] call FNC_AddItem;

		//Attachments
		[I_rco_marine] call FNC_AddItem;
	};

	//Rifle Squad
	
	//Fire Team Leader
	case "I_MFTL": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag_marine,4,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 
		[I_glhe_marine,7,"backpack"] call FNC_AddItem;
		[I_glhebounce_marine,5,"backpack"] call FNC_AddItem;
		[I_glflare_marine,3,"backpack"] call FNC_AddItem;
		[I_glhethermo_marine,2,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_glrifle_marine] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag

		
		//Attachments

	};
	
	//Rifleman (AT)
	case "I_MRAT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag_marine,6,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_rat] call FNC_AddItem;
		
		//Attachments

	};
	
	//Rifleman
	
		//Rifleman (AT)
	case "I_RAT": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag_marine,6,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 
		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		
		//Attachments

	};

	
	//Automatic Rifleman
	case "I_MAR": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[I_armag,3,"vest"] call FNC_AddItem;

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
	
	
	//Weapons Squad
	
	//RPG Specialist
	case "I_MRPG": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;

		
		//Vest
		[I_riflemag_marine,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem;

		[I_flarered,2,"vest"] call FNC_AddItem;
		[I_rpgheat,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_rpg] call FNC_AddItem;

		
		//Attachments

	};
	
	//AT Assistant
	case "I_MRPGA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag_marine,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem;
		[I_rpgheat,1,"backpack"] call FNC_AddItem;
		[I_rpghe,2,"backpack"] call FNC_AddItem;
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_binoculars] call FNC_AddItem;
		
		
		//Attachments

	};
	


	//Autorifle Assistant
	case "I_MARA": {

		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_marine] call FNC_AddItem;
		[I_backpack_marine] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_glasses] call FNC_AddItem;
		
		//Uniform
		[I_riflemag_marine,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_riflemag_marine,5,"vest"] call FNC_AddItem; 
		[I_riflemag_tr_marine,2,"vest"] call FNC_AddItem; 

		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Backpack
		[I_armag,5,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle_marine] call FNC_AddItemRandom;
		[I_binoculars] call FNC_AddItem;
		
		//Attachments

	};