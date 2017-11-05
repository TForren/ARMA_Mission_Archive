// Info: USA Low Tech Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//JTAC - Joint Terminal Attack Controller
//SL - Squad Leader
//FTL - Fire Team Leader
//AR - Automatic Rifleman
//GRE - Grenadier
//RAT - Rifleman (AT)
//DM - Designated Marksman
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
//PIL - Pilot
//AC - Air Crew
//VD - Vehicle Driver
//VG - Vehicle Gunner
//VC - Vehicle Commander

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "rhs_weap_m4_grip"
#define B_ar "rhs_weap_m249_pip_S","rhs_weap_m249_pip_S_para"
#define B_glrifle "rhs_weap_m4_m203S","rhs_weap_m4_m203"
#define B_mg "rhs_weap_m240B"
#define B_dmr "rhs_weap_m14ebrri"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"
#define B_rathedp "rhs_weap_M136_hedp"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "rhsusf_acc_compm4"
#define B_rco "rhsusf_acc_ACOG3"
#define B_mgo "rhsusf_acc_ELCAN_ard"
#define B_bipod "rhsusf_acc_harris_bipod" 
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15side"
#define B_m4mb "rhsusf_acc_SFMB556","rhsusf_acc_SF3P556"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100Rnd_762x51_m80a1epr"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_dmrmag "rhsusf_20Rnd_762x51_m118_special_Mag"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_glsmokeyellow "rhs_mag_m716_yellow"
#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"

//Grenades
#define B_frag "rhs_mag_m67"
#define B_stun "ACE_M84"
#define B_smokew "rhs_mag_an_m8hc"
#define B_smokep "rhs_mag_m18_purple"
#define B_smoker "rhs_mag_m18_red"
#define B_smokey "rhs_mag_m18_yellow"
#define B_flarered "ace_HandFlare_Red"
#define B_hot "rhs_mag_an_m14_th3"

//=== MISC ===

//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemr "Chemlight_red"
#define B_chemy "Chemlight_yellow"

// CE equipment - what everyone should have
#define B_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define Bandage "ACE_quikclot"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_ace_firing_device "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"
#define B_strobe "ACE_IR_Strobe_Item"
#define B_maptools "ACE_MapTools"
#define B_gps "ACE_DAGR"
#define B_mgps "ACE_microDAGR"
#define B_card "ACE_ReportCard"

//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"
#define B_range "ACE_Vector"
#define B_lased "Laserdesignator"
#define B_clu "UK3CB_BAF_Javelin_CLU"

//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"
#define B_backradio "ACRE_PRC117F"


//=== Clothes ===

//Uniform              
#define B_default_uniform "rhs_uniform_cu_ocp"
#define B_pilot_uniform "CUP_U_B_USMC_PilotOverall"

//Headgear
#define B_leader_headgear "rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp"
#define B_default_headgear "rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"

//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_ocp"
#define B_pilot_backpack "B_AssaultPack_rgr"

//Vests
#define B_vest_default "rhsusf_iotv_ocp_rifleman"
#define B_vest_grenadier "rhsusf_iotv_ocp_grenadier"
#define B_vest_saw "rhsusf_iotv_ocp_SAW"
#define B_vest_medic "rhsusf_iotv_ocp_medic"
#define B_vest_engineer "rhsusf_iotv_ocp_repair"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "rhsusf_iotv_ocp_squadleader"
#define B_vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
#define B_vest_pilot "CUP_V_B_PilotVest"
                       
//Face
#define B_glasses "rhs_googles_clear","rhs_googles_black","rhs_googles_yellow","rhs_googles_orange"
#define B_scarf "rhs_scarf", "G_Bandanna_khk"
                       
//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


	//Platoon

	//Platoon Commander
	case "B_PC": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_samag,3,"vest"] call FNC_AddItem;

		[B_smokew,1,"vest"] call FNC_AddItem;
		[B_smokey,2,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_hot,1,"vest"] call FNC_AddItem;
		[B_flarered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_chemblue,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Platoon Sgt.
	case "B_SGT": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_headgear] call FNC_AddItemRandom;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_smokew,1,"vest"] call FNC_AddItem;
		[B_smokey,2,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_hot,1,"vest"] call FNC_AddItem;
		[B_flarered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_chemblue,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Platoon Medic
	case "B_MED": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_medic] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_samag,2,"vest"] call FNC_AddItem;

		[B_smokew,4,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		["ACE_personalAidKit",2,"vest"] call FNC_AddItem;

		//Backpack
		["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
		["ACE_morphine",12,"backpack"] call FNC_AddItem; 
		["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
		["ACE_atropine",8,"backpack"] call FNC_AddItem; 
		["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_personalAidKit",3,"backpack"] call FNC_AddItem; 

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_samag,1,"vest"] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Joint Terminal Attack Controller
	case "B_JTAC": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_leader] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_headgear] call FNC_AddItemRandom;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smoker,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_smoker,1,"vest"] call FNC_AddItem;
		[B_smokey,2,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_flarered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_chemr,2,"vest"] call FNC_AddItem;
		[B_chemy,2,"vest"] call FNC_AddItem;
		[B_mgps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_glsmokered,5,"vest"] call FNC_AddItem;
		[B_glsmokegreen,5,"vest"] call FNC_AddItem;
		[B_glsmokeyellow,5,"vest"] call FNC_AddItem;

		//Backpack
		[B_backradio,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_glrifle] call FNC_AddItemRandom;
		[B_lased] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Squad Leader
	case "B_SL": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_headgear] call FNC_AddItemRandom;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,6,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_samag,2,"vest"] call FNC_AddItem;

		[B_smokew,1,"vest"] call FNC_AddItem;
		[B_smokey,2,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_hot,1,"vest"] call FNC_AddItem;
		[B_flarered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_chemblue,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_samag,1,"vest"] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Rifle Squad
	
	//Fire Team Leader
	case "B_FTL": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_ftl_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,6,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_armag,1,"vest"] call FNC_AddItem;

		[B_chemblue,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Automatic Rifleman
	case "B_AR": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_saw] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_armag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_armag,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_ar] call FNC_AddItemRandom;
		
		//Extra Mag
		[B_armag,1,"vest"] call FNC_AddItem; 
		
		//Attachments
		[B_ir_laser] call FNC_AddItem;
	};

	//Grenadier
	case "B_GRE": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_grenadier] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_glhe,12,"vest"] call FNC_AddItem;
		[B_glhedp,6,"vest"] call FNC_AddItem;
		[B_glsmoke,3,"vest"] call FNC_AddItem;
		[B_glsmokered,2,"vest"] call FNC_AddItem;

		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_glrifle] call FNC_AddItemRandom;
		
		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
		
		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Rifleman (AT)
	case "B_RAT": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,6,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_armag,1,"vest"] call FNC_AddItem;

		[B_chemblue,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_rat] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Designated Marksman
	case "B_DM": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_dmrmag,1,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_dmrmag,8,"vest"] call FNC_AddItem; 

		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_dmr] call FNC_AddItem;
		
		//Attachments
		[B_rco] call FNC_AddItem;
		[B_bipod] call FNC_AddItem;
	};

	//Weapons Squad
	
	//AT Specialist
	case "B_AT": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_shortrange,1,"vest"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_mat] call FNC_AddItem;
		[B_clu] call FNC_AddItem;

		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};
	
	//AT Assistant
	case "B_ATA": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_mat] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		
		
		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};
	
	//Machine Gunner
	case "B_MG": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_saw] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_mgmag,3,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_mgmagap,1,"backpack"] call FNC_AddItem;
		[B_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_mg] call FNC_AddItem;
		
		//Extra Mag
		[B_mgmag,1,"vest"] call FNC_AddItem;
	};

	//Machine Gunner Assistant
	case "B_MGA": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_headgear] call FNC_AddItemRandom;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokew,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,3,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_mgmag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_riflemag,1,"backpack"] call FNC_AddItem;
		[B_mgmag,1,"backpack"] call FNC_AddItem;
		[B_mgmagap,2,"backpack"] call FNC_AddItem;
		[B_shortrange,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		
		//Attachments
		[B_cco] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
		[B_m4mb] call FNC_AddItemRandom;
	};

	//Vehicle Crew
	
	//Pilot
	case "B_PIL": {
		[B_pilot_uniform] call FNC_AddItem;
		[B_vest_pilot] call FNC_AddItem;
		[B_pilot_backpack] call FNC_AddItem;
		[B_pilot_headgear] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		
		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem;

		[B_smoker,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem; 
		[B_strobe,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_backradio,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		["ItemGPS"] call FNC_AddItem;

		//Weapons
		[B_rifle] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};
	
	//Air Crew
	case "B_AC": {
		[B_pilot_uniform] call FNC_AddItem;
		[B_vest_pilot] call FNC_AddItem;
		[B_pilot_backpack] call FNC_AddItem;
		[B_aircrew_headgear] call FNC_AddItem;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;

		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem;

		[B_smoker,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem; 
		[B_strobe,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_toolkit,1,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};

	//Vehicle Driver
	case "B_VD": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_vehiclecrew] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_scarf] call FNC_AddItemRandom;
		["rhsusf_cvc_ess"] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		
		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem;

		[B_smoker,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem; 
		[B_strobe,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_toolkit,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};

	//Vehicle Gunner
	case "B_VG": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_vehiclecrew] call FNC_AddItem;
		[B_scarf] call FNC_AddItemRandom;
		["rhsusf_cvc_ess"] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		
		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem;

		[B_smoker,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem; 
		[B_strobe,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};

	//Vehicle Commander
	case "B_VC": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_vehiclecrew] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItem;
		[B_scarf] call FNC_AddItemRandom;
		["rhsusf_cvc_ess"] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		
		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem;

		[B_smoker,2,"vest"] call FNC_AddItem;
		[B_chemblue,2,"vest"] call FNC_AddItem;
		[B_flarered,1,"vest"] call FNC_AddItem; 
		[B_strobe,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_backradio,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;

		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};