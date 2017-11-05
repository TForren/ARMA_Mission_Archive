// Info: US Army Rifle Platoon Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Leader
//SGT - Platoon Sergeant
//MED - Platoon Medic
//RTO - Platoon RTO
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
//VD - Vehicle Driver
//VG - Vehicle Gunner
//VC - Vehicle Commander
//PIL - Pilot
//AC - Air Crew
//JTAC - Joint Terminal Attack Controller

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "uns_m16"
#define B_ar "uns_m60"
#define B_glrifle "uns_m16_m203"
#define B_mg "uns_m60support"
#define B_dmr "uns_m14"

//Secondary
#define B_sidearm "uns_m1911" //uns_MX991_m1911_base

//Launcher
#define B_rat "uns_m72"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "rhsusf_acc_compm4"
#define B_rco "rhsusf_acc_ACOG3"
#define B_mgo "rhsusf_acc_ELCAN_ard"
#define B_dmo "uns_o_LeatherwoodART_m14"
#define B_bipod "rhsusf_acc_harris_bipod" 
#define B_fl "acc_flashlight"
#define B_irlt "rhsusf_acc_anpeq15_top"
#define B_irls "rhsusf_acc_anpeq15side"
#define B_irfl "rhsusf_acc_anpeq15"
#define B_m4mb "rhsusf_acc_SFMB556","rhsusf_acc_SF3P556"
#define B_gp "rhsusf_acc_grip1"
#define B_afg "rhsusf_acc_grip2"
#define B_vg "rhsusf_acc_grip3"

//Ammo
#define B_riflemag "uns_20Rnd_556x45_Stanag"
#define B_riflemag_tr "uns_20Rnd_556x45_Stanag_T"
#define B_armag "uns_m60mag"
#define B_mgmag "uns_m60mag_200"
#define B_mgmagap "uns_m60mag_200"
#define B_dmrmag "uns_m61gren"
#define B_glhe "Uns_1Rnd_HE_M381"
#define B_glhedp "uns_1Rnd_HEDP_M433"
#define B_glsmoke "uns_40mm_mkv_White"
#define B_glsmokered "uns_40mm_mkv_Red"
#define B_glsmokegreen "uns_40mm_mkv_Green"
#define B_glsmokeyellow "uns_1Rnd_SmokeYellow_MKV"
#define B_samag "uns_m1911mag"

//Grenades
#define B_frag "uns_m61gren"
#define B_smoke "SmokeShell"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "SmokeShellGreen"
#define B_smokeo "SmokeShellOrange"
#define B_smokep "SmokeShellPurple"
#define B_smoker "SmokeShellRed"
#define B_smokey "SmokeShellYellow"
#define B_hot "rhs_mag_an_m14_th3"

//=== MISC ===

//Chemical lights
#define B_chemb "Chemlight_blue"
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
#define B_nvg "rhsusf_ANPVS_14"

//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"
#define B_backradio "ACRE_PRC117F"


//=== Clothes ===

//Uniform              
#define B_default_uniform "UNS_ARMY_BDU_65"
#define B_pilot_uniform "CUP_U_B_USMC_PilotOverall"

//Headgear

#define B_default_headgear_r "UNS_M1_8A","UNS_M1_7A","UNS_M1_6A","UNS_M1_5A","UNS_M1_4A","UNS_M1_3A","UNS_M1_2A","UNS_M1_1A","UNS_M1_17","UNS_M1_16","UNS_M1_15","UNS_M1_14","UNS_M1_11","UNS_M1_10","UNS_M1_9","UNS_M1_8","UNS_M1_7","UNS_M1_6","UNS_M1_5","UNS_M1_4","UNS_M1_3","UNS_M1_2","UNS_M1_1"

//UNS_M1_9A UNS_M1_13 UNS_M1_12 - plants on it 

#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"

//Backpack
#define B_default_backpack_r "UNS_Alice_1", "UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4","UNS_Alice_5","UNS_Alice_6","UNS_Alice_F3","UNS_Alice_F4","UNS_Alice_F6","UNS_Alice_F8","UNS_Alice_F9","UNS_Alice_F10"
//different size??? UNS_Alice_F5 UNS_Alice_F7 UNS_Alice_DEM

#define B_medic_backpack "UNS_Alice_MED"
#define B_pilot_backpack "B_AssaultPack_rgr"

//Vests
#define B_vest_default_r "UNS_M1956_A1","UNS_M1956_A2","UNS_M1956_A3","UNS_M1956_A4","UNS_M1956_A7","UNS_M1956_A8","UNS_M1956_A9","UNS_M1956_A10","UNS_M1956_A12"
#define B_vest_grenadier "UNS_M1956_A4"
#define B_vest_saw_r "UNS_M1956_A6","UNS_M1956_A11" 
#define B_vest_medic "UNS_M1956_A3"  
#define B_vest_engineer "UNS_M1956_A3"
#define B_vest_sniper "UNS_M1956_A3"
#define B_vest_vehiclecrew "UNS_M1956_A3"
#define B_vest_leader_r "UNS_M1956_A1","UNS_M1956_A2","UNS_M1956_A3","UNS_M1956_A4","UNS_M1956_A7","UNS_M1956_A8","UNS_M1956_A9","UNS_M1956_A10","UNS_M1956_A12"
#define B_vest_ftl_leader_r "UNS_M1956_A1","UNS_M1956_A2","UNS_M1956_A3","UNS_M1956_A4","UNS_M1956_A7","UNS_M1956_A8","UNS_M1956_A9","UNS_M1956_A10","UNS_M1956_A12"
#define B_vest_pilot "CUP_V_B_PilotVest"
                       
//Face
#define B_glasses_r "UNS_M1_6A","UNS_Band_L", "UNS_Bandana_A", "UNS_Bullets", "UNS_Peace", "UNS_Scarf_BK","UNS_Scarf_OD","UNS_Towel","UNS_Towel_Long","G_Aviator"
#define B_scarf "rhs_scarf", "G_Bandanna_khk"
                       
//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon  HQ

//Platoon Leader
case "B_PC": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"backpack"] call FNC_AddItem;

	[B_smokeb,1,"backpack"] call FNC_AddItem;
	[B_smokey,1,"backpack"] call FNC_AddItem;
	[B_smoker,1,"backpack"] call FNC_AddItem;
	//[B_hot,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	////[B_shortrange,1,"vest"] call FNC_AddItem; 
	//[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	["uns_item_zippo"] call FNC_AddItem;

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon Sergeant
case "B_SGT": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	//[B_hot,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	////[B_shortrange,1,"vest"] call FNC_AddItem; 
	//[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	["uns_item_zippo"] call FNC_AddItem;

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon Medic
case "B_MED": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_medic_backpack] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_smokey,2,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	//[B_shortrange,1,"vest"] call FNC_AddItem;
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

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon RTO
case "B_RTO": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Rifle Squad

//Squad Leader
case "B_SL": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	//[B_hot,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	////[B_shortrange,1,"vest"] call FNC_AddItem; 
	//[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	["uns_item_zippo"] call FNC_AddItem;

	//Attachments
	//[B_rco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Fire Team Leader
case "B_FTL": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"backpack"] call FNC_AddItem;

	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	//[B_shortrange,1,"vest"] call FNC_AddItem;
	//[B_longrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	["uns_item_zippo"] call FNC_AddItem;

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irfl] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_armag,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,3,"backpack"] call FNC_AddItem; 
	
	//Attachments
	//[B_mgo] call FNC_AddItem;
	//[B_irls] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,12,"backpack"] call FNC_AddItem;
	[B_glhedp,6,"backpack"] call FNC_AddItem;
	[B_glsmoke,2,"backpack"] call FNC_AddItem;
	[B_glsmokered,1,"backpack"] call FNC_AddItem;
	[B_glsmokegreen,1,"backpack"] call FNC_AddItem;
	[B_glsmokeyellow,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irls] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"backpack"] call FNC_AddItem;

	//[B_chemb,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_shortrange,1,"vest"] call FNC_AddItem;
	
	["uns_m72rocket",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;

	//Attachments
	//[B_rco] call FNC_AddItem;
	//[B_irfl] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Designated Marksman
case "B_DM": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_dmrmag,1,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_dmrmag,6,"vest"] call FNC_AddItem; 

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	//[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_dmr] call FNC_AddItem;
	
	//Attachments
	[B_dmo] call FNC_AddItem;
	//[B_irls] call FNC_AddItem;
	//[B_bipod] call FNC_AddItem;
};

//Weapons Squad

//AT Specialist
case "B_AT": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	//[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	[B_clu] call FNC_AddItem;

	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//AT Assistant
case "B_ATA": {
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	//[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	
	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw_r] call FNC_AddItemRandom;
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
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

	//Attachments
	//[B_mgo] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default_r] call FNC_AddItemRandom;
	[B_default_backpack_r] call FNC_AddItemRandom;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses_r] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//[B_strobe,1,"uniform"] call FNC_AddItem;
	//[B_chemb,1,"uniform"] call FNC_AddItem;
	//[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_mgmag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,1,"backpack"] call FNC_AddItem;
	[B_mgmagap,2,"backpack"] call FNC_AddItem;
	[B_shortrange,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[B_cco] call FNC_AddItem;
	//[B_irlt] call FNC_AddItem;
	//[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Vehicle Crew

//Vehicle Driver
case "B_VD": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_default_backpack_r] call FNC_AddItemRandom;
	["rhsusf_cvc_ess"] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
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
	["rhsusf_cvc_ess"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
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
	["UNS_ARMY_BDU_F"] call FNC_AddItem;
	["UNS_M1956_T1"] call FNC_AddItem;
	["UNS_TC_1"] call FNC_AddItem;
	["UNS_SF_RTO"] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	
	B_ace_default;
	
	//Vest
	["uns_m3a1mag",4] call FNC_AddItem;
	["uns_m1911mag",2] call FNC_AddItem;
	["uns_ItemSiphon",1] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["uns_m3a1"] call FNC_AddItem;
	["uns_m1911"] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Air Force

//Pilot
case "B_PIL": {
	["UNS_Pilot_BDU"] call FNC_AddItem;
	["UNS_M1956_P1"] call FNC_AddItem;
	["UNS_HP_Helmet"] call FNC_AddItem;
	["UNS_SF_RTO"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	["uns_38specmag",4] call FNC_AddItem;
	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["uns_38spec"] call FNC_AddItem;

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
	[B_chemb,2,"vest"] call FNC_AddItem;
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

//Boat Crew
case "B_BC": {
	["UNS_PBR_Flak_S"] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_pilot_backpack] call FNC_AddItem;
	[B_aircrew_headgear] call FNC_AddItem;

	//Uniform
	["uns_20Rnd_556x45_Stanag_T",1,"uniform"] call FNC_AddItem;

	B_ace_default;

	//Vest
	["uns_20Rnd_556x45_Stanag_T",3,"vest"] call FNC_AddItem;

	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["uns_m16"] call FNC_AddItem;

};

	//Joint Terminal Attack Controller
	case "B_JTAC": {
		[B_default_uniform] call FNC_AddItem;
		[B_vest_leader_r] call FNC_AddItemRandom;
		[B_default_backpack_r] call FNC_AddItemRandom;
		[B_default_backpack_r] call FNC_AddItemRandom;
		[B_glasses_r] call FNC_AddItemRandom;

		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;

		B_ace_default;
		[B_smokeo,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		//[B_strobe,1,"uniform"] call FNC_AddItem;

		//Vest
		[B_riflemag,2,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_smokeo,1,"vest"] call FNC_AddItem;
		[B_smokep,2,"vest"] call FNC_AddItem;
		[B_smokeb,2,"vest"] call FNC_AddItem;
		[B_flarered,2,"vest"] call FNC_AddItem;
		//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_chemb,2,"vest"] call FNC_AddItem;
		[B_chemr,2,"vest"] call FNC_AddItem;
		[B_chemy,2,"vest"] call FNC_AddItem;
		[B_mgps,1,"vest"] call FNC_AddItem;
		[B_card,1,"vest"] call FNC_AddItem;
		//[B_shortrange,1,"vest"] call FNC_AddItem;
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
		//[B_cco] call FNC_AddItem;
		//[B_irlt] call FNC_AddItem;
		//[B_m4mb] call FNC_AddItemRandom;
	};