// Info: Napfheer Independent Loadouts
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
#define I_rifle "rhs_weap_ak74m_camo"

#define I_glrifle "rhs_weap_ak74m_gp25"
#define I_mg "rhs_weap_pkm"

#define I_ar "rhs_weap_m249_pip_S_para"

#define I_carb "rhs_weap_m4a1_carryhandle"
#define I_glcarb "rhs_weap_m4a1_carryhandle_m203"

#define I_vcrewcarb "rhs_weap_aks74u"

//Secondary
#define I_sidearm "rhs_weap_tt33"

//Launcher
#define I_rat "rhs_weap_rpg7_pgo"
#define I_ratlight "rhs_weap_m72a7"

#define I_pzfshot "rhs_rpg7_PG7VL_mag"

#define I_rpg "rhs_weap_rpg7"
#define I_rpgheat "rhs_rpg7_PG7VL_mag"
#define I_rpghe "rhs_rpg7_OG7V_mag"

//Attachments
#define I_cco "rhsusf_acc_compm4"

#define I_rco "UK3CB_BAF_TA31F"
#define I_mgo "rhsusf_acc_ELCAN"

#define I_flashlight "rhs_acc_2dpZenit"

#define I_ir_laser "rhsusf_acc_anpeq15side_bk"
#define I_mg_laser "rhsusf_acc_anpeq15side_bk"
#define I_m4mb "rhsusf_acc_SFMB556"

#define I_akmb "rhs_acc_dtk"


//Ammo
#define I_riflemag "rhs_30Rnd_545x39_AK"
#define I_riflemag_tr "rhs_30Rnd_545x39_AK_green"

#define I_carbmag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define I_carbmag_tr "rhs_mag_30Rnd_556x45_Mk318_Stanag"

#define I_armag "rhs_200rnd_556x45_M_SAW"

#define I_mgmag "rhsusf_100Rnd_762x51_m80a1epr"

#define I_carbglhe "rhs_mag_M441_HE"
#define I_carbglhedp "rhs_mag_M433_HEDP"
#define I_glsmoke "rhs_GRD40_White"
#define I_glsmokered "rhs_GRD40_Red"

#define I_glhe "rhs_VOG25"
#define I_glhedp "rhs_VOG25"
#define I_glflare "rhs_mag_M585_white"
#define I_glsmoke "rhs_mag_m714_White"


#define I_samag "rhs_mag_762x25_8"

//Grenades
#define I_frag "rhs_mag_rgd5"
#define I_smokew "rhs_mag_rdg2_white"

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
#define I_default_uniform "LOP_U_UKR_Fatigue_Flec"

#define I_sf_uniform "rhs_uniform_gorka_r_y"

#define I_pilot_uniform "LOP_U_UVF_Fatigue_BL_OSW"

//Headgear
#define I_leader_headgear "usm_bdu_boonie_odg"

#define I_default_headgear "rhsgref_ssh68_ttsko_digi", "rhs_beanie_green", "rds_Woodlander_cap1", "LOP_H_Beanie_flec", "rhsgref_ssh68_ttsko_digi", "rhsgref_ssh68_ttsko_digi", "rhsgref_ssh68_ttsko_digi"
#define I_default_helmet "rhsgref_ssh68_ttsko_digi"

#define I_sf_headgear "rhsgref_ssh68_ttsko_mountain"

#define I_pcommander_headgear "H_Beret_blk"

#define I_pilot_headgear "rhs_tsh4_ess_bala"

#define I_aircrew_headgear "rhs_tsh4_ess_bala"

//Backpack
#define I_default_backpack "B_Kitbag_rgr"

#define I_sf_backpack "B_Kitbag_rgr"


#define I_medic_backpack "B_Kitbag_rgr" 

#define I_hmg "RHS_DShkM_Gun_Bag"
#define I_hmg_tripod "RHS_DShkM_TripodLow_Bag"


 
//Vests

#define I_vest_default "rhsgref_6b23_ttsko_digi_rifleman"
#define I_vest_mg "rhsgref_6b23_ttsko_digi"
#define I_vest_leader "rhsgref_6b23_ttsko_digi_nco"
#define I_vest_officer "rhsgref_6b23_ttsko_digi_officer"
#define I_vest_medic "rhsgref_6b23_ttsko_digi_medic"

#define I_vest_pilot "rhs_6sh46"

#define I_vest_sfsl "rhsgref_6b23_khaki_officer"
#define I_vest_sf "rhsgref_6b23_khaki"
#define I_vest_sfgren "rhsgref_6b23_khaki_nco"

                       
//Face
#define I_glasses "rhs_googles_clear"
#define I_bandanna "G_Bandanna_oli"

//NVGs
#define I_nvg "rhsusf_ANPVS_15"

                       
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

		[I_default_uniform] call FNC_AddItem;
		[I_vest_officer] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_pcommander_headgear] call FNC_AddItem;		

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
		[I_riflemag_tr,2,"backpack"] call FNC_AddItem; 
		[I_samag,2,"vest"] call FNC_AddItem; 

		[I_smokep,1,"backpack"] call FNC_AddItem;
		[I_smoker,1,"backpack"] call FNC_AddItem;
		[I_smokey,1,"backpack"] call FNC_AddItem;
		[I_hot,1,"backpack"] call FNC_AddItem;
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
		[I_akmb] call FNC_AddItem;
	};

	//Platoon Sgt.
	case "I_SGT": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_leader] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItem;		

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


		//Assigned Items
		I_leader_equipment;

		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Attachments
		[I_akmb] call FNC_AddItem;
	};

	//Platoon Medic
	case "I_MED": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_medic] call FNC_AddItem;
		[I_medic_backpack] call FNC_AddItem;
		[I_default_helmet] call FNC_AddItem;

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
		[I_akmb] call FNC_AddItem;
	};

	//Rifle and Weapons Squad Lead
	case "I_SL": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_leader] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_leader_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

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
		[I_akmb] call FNC_AddItem;
	};

	//Rifle Squad
	
	//Fire Team Leader
	case "I_FTL": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
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
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments
		[I_akmb] call FNC_AddItem;
	};
	
	//Rifleman (AT)
	case "I_RAT": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
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
		[I_mgmag,1,"backpack"] call FNC_AddItem;		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;
		[I_pzfshot, 1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		[I_rat] call FNC_AddItem;
		
		//Attachments
		[I_akmb] call FNC_AddItem;
	};

	//Rifleman
	case "I_RIF": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
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
		[I_mgmag,1,"backpack"] call FNC_AddItem;		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_rifle] call FNC_AddItem;
		
		//Attachments
		[I_akmb] call FNC_AddItem;
	};
	
	//Grenadier
	case "I_GRE": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_riflemag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
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
		[I_akmb] call FNC_AddItem;
	};
	
	//Automatic Rifleman
	case "I_AR": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
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
	
	
	//Machine Gunner
	case "I_MG": {

		[I_default_uniform] call FNC_AddItem;
		[I_vest_mg] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		[I_flarered,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_mgmag,1,"vest"] call FNC_AddItem;
		
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

		[I_default_uniform] call FNC_AddItem;
		[I_vest_default] call FNC_AddItem;
		[I_default_backpack] call FNC_AddItem;
		[I_default_headgear] call FNC_AddItemRandom;
		[I_bandanna] call FNC_AddItem;
		
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
		[I_akmb] call FNC_AddItem;
	};

	//Pilots
	
	//Pilot
	case "I_PIL": {
		[I_pilot_headgear] call FNC_AddItem;
		[I_pilot_uniform] call FNC_AddItemRandom;
		[I_vest_pilot] call FNC_AddItem;
		
		//Uniform
		[I_samag,2,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		
		//Vest

		[I_smoker,1,"vest"] call FNC_AddItem;
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
		[I_vcrewcarb] call FNC_AddItem;
		[I_binoculars] call FNC_AddItem;

		//Extra Mag

	};
	
		//Tank Crew
	case "I_TC": {
		[I_aircrew_headgear] call FNC_AddItem;
		[I_default_uniform] call FNC_AddItemRandom;
		[I_vest_default] call FNC_AddItem;

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
		[I_vcrewcarb] call FNC_AddItem;

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
	
		//Napf Scouts
	
		//Platoon Commander
	case "I_SPC": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_carbmag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_pcommander_headgear,1,"backpack"] call FNC_AddItem;
		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_samag,3,"vest"] call FNC_AddItem; 
		[I_carbmag_tr,2,"vest"] call FNC_AddItem; 

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
		[I_carb] call FNC_AddItem;
		[I_sidearm] call FNC_AddItem;
		[I_range] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;
		
		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};

	//Platoon Sgt.
	case "I_SSGT": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_carbmag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_carbmag_tr,2,"vest"] call FNC_AddItem; 

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
		[I_carb] call FNC_AddItem;
		[I_range] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;
		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};

	//Platoon Medic
	case "I_SMED": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_carbmag,2,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"uniform"] call FNC_AddItem;
		[I_frag,1,"uniform"] call FNC_AddItem;
		[I_chemblue,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"uniform"] call FNC_AddItem;

		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_carbmag_tr,1,"vest"] call FNC_AddItem; 
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
		[I_carb] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;
		//Extra Mag
		[I_riflemag,1,"uniform"] call FNC_AddItem;

		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};

	//Rifle and Weapons Squad Lead
	case "I_SSL": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;

		//Uniform
		[I_carbmag,1,"uniform"] call FNC_AddItem;

		I_ace_default;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_maptools,1,"uniform"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_carbmag_tr,2,"vest"] call FNC_AddItem; 


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
		[I_carb] call FNC_AddItem;
		[I_ratlight] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;		
		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};

	//Rifle Squad
	
	//Fire Team Leader
	case "I_SFTL": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sfsl] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_carbmag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"uniform"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_carbmag_tr,2,"vest"] call FNC_AddItem; 
		[I_carbglhe,12,"backpack"] call FNC_AddItem;
		[I_carbglhedp,5,"backpack"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_leader_equipment;
		
		//Weapons
		[I_glcarb] call FNC_AddItem;
		[I_ratlight] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;		
		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};
	
	//Rifleman (AT)
	case "I_SRAT": {

		[I_sf_uniform] call FNC_AddItemRandom;
		[I_vest_sf] call FNC_AddItem;
		[I_sf_backpack] call FNC_AddItem;
		[I_sf_headgear] call FNC_AddItem;
		[I_bandanna] call FNC_AddItem;
		
		//Uniform
		[I_carbmag,1,"uniform"] call FNC_AddItem;
		
		I_ace_default;
		[I_smokew,1,"vest"] call FNC_AddItem;
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_strobe,1,"backpack"] call FNC_AddItem;
		[I_chemblue,1,"backpack"] call FNC_AddItem;
		[I_ace_cabletie,2,"backpack"] call FNC_AddItem;
		
		//Vest
		[I_carbmag,4,"backpack"] call FNC_AddItem; 
		[I_carbmag_tr,2,"vest"] call FNC_AddItem; 
		[I_shortrange,1,"backpack"] call FNC_AddItem;		
		[I_frag,1,"vest"] call FNC_AddItem;
		[I_flarered,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_carb] call FNC_AddItem;
		[I_ratlight] call FNC_AddItem;
//		[I_nvg] call FNC_AddItem;		
		//Attachments
		[I_flashlight] call FNC_AddItem;
		[I_rco] call FNC_AddItem;
		[I_m4mb] call FNC_AddItem;
	};
	


	//Machine Gunner
	case "I_SAR": {

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
		[I_armag,1,"vest"] call FNC_AddItem;
		[I_shortrange,1,"backpack"] call FNC_AddItem;		
		//Backpack
		[I_armag,3,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		I_default_equipment;
		
		//Weapons
		[I_ar] call FNC_AddItem;		
//		[I_nvg] call FNC_AddItem;		
		//Attachments
		[I_mgo] call FNC_AddItem;
		[I_flashlight] call FNC_AddItem;	
		//Extra Mag
	};

