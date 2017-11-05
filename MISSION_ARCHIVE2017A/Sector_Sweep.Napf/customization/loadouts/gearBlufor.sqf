// Info: USMC Rifle Platoon + Weapons Loadouts - Updated 02/09/16
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - For Woodland camo change the d in uniform and helmets to wd

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//RTO - Platoon Messenger
//MED - Corpsman
//SL - Squad Leader
//FTL - Fire Team Leader
//RAT - Rifleman
//AR - Automatic Rifleman (M249)
//AAR - Assistant Automatic Rifleman (M249)
//IAR - Automatic Rifleman (M27)
//AIAR - Assistant Automatic Rifleman (M27)
//AML - Assaultman SL (Smaw)
//AMS - Assaultman (Smaw)
//AMA - Assaultman Assistant (Demo)
//MGTL - Machine Gun Team Leader
//MG - Machine Gunner
//MGA - MG Assistant
//AT - AT Specialist
//ATA - AT Assistant
//VD - Vehicle Driver
//VG - Vehicle Gunner
//VC - Vehicle Commander
//PIL - Pilot
//AC - Air Crew
//JTAC - Joint Terminal Attack Controller

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "rhs_weap_m16a4_carryhandle"
#define B_ar "rhs_weap_m249_pip_L"
#define B_glrifle "rhs_weap_m16a4_carryhandle_M203"
#define B_mg "rhs_weap_m240G"
#define B_iar "rhs_weap_m27iar"
#define B_carbine "rhs_weap_m4_carryhandle"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_law "rhs_weap_m72a7"
#define B_rat "rhs_weap_M136"
#define B_rathedp "rhs_weap_M136_hedp"
#define B_smaw "rhs_weap_smaw_green"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_rifle_scope "rhsusf_acc_ACOG_USMC"
#define B_mgo "rhsusf_acc_ACOG2_USMC"
#define B_irlt "rhsusf_acc_anpeq15_top"
#define B_irls "rhsusf_acc_anpeq15side"
#define B_irfl "rhsusf_acc_anpeq15"
#define B_vg "rhsusf_acc_grip3"
#define B_bipod "rhsusf_acc_harris_bipod"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100Rnd_762x51_m80a1epr"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_matheaa "rhs_mag_smaw_HEAA"
#define B_mathedp "rhs_mag_smaw_HEDP"
#define B_matsr "rhs_mag_smaw_SR"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_glsmokeyellow "rhs_mag_m716_yellow"
#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"

//Grenades
#define B_frag "rhs_mag_m67"
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
#define B_chemg "Chemlight_green"
#define B_chemr "Chemlight_red"
#define B_chemy "Chemlight_yellow"
				   
// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; \
["ACE_quikclot",3,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem; \
["ACE_CableTie",2,"uniform"] call FNC_AddItem; \
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem; \
["Chemlight_green",1,"uniform"] call FNC_AddItem;
				  
//ACE
#define Bandage "ACE_fieldDressing"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_clacker "ACE_Clacker"
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
#define B_democharge "DemoCharge_Remote_Mag"
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
#define B_default_uniform "rhs_uniform_FROG01_d"
#define B_pilot_uniform "CUP_U_B_USMC_PilotOverall"
   
//Headgear
#define B_leader_headgear "rhsusf_lwh_helmet_marpatd_headset"
#define B_default_headgear "rhsusf_lwh_helmet_marpatd","rhsusf_lwh_helmet_marpatd_ess"
#define B_pilot_headgear "rhsusf_hgu56p"
#define B_aircrew_headgear "rhsusf_hgu56p_mask"
#define B_vcrew_headgear "rhsusf_cvc_ess"
				   
//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_coy_fixed"
#define B_heavy_backpack "B_Carryall_cbr"
#define B_pilot_backpack "B_AssaultPack_rgr"
				   
//Vests
#define B_vest_default "rhsusf_spc_rifleman"
#define B_vest_light "rhsusf_spc_light"
#define B_vest_saw "rhsusf_spc_mg"
#define B_vest_iar "rhsusf_spc_iar"
#define B_vest_medic "rhsusf_spc_corpsman"
#define B_vest_leader "rhsusf_spc_squadleader"
#define B_vest_ftl_leader "rhsusf_spc_teamleader"
#define B_vest_pilot "CUP_V_B_PilotVest"
#define B_vest_vehiclecrew "rhsusf_spc_crewman"
				   
//Face
#define B_glasses "rhs_googles_clear"
#define B_scarf "rhs_scarf"
				   
//=== EQUIPMENT ===
#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "B_PC": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_gps,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_gps,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smokeg,2,"vest"] call FNC_AddItem;
	[B_smokey,2,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Platoon Messenger
case "B_RTO": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,9,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Platoon Corpsman
case "B_MED": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_smokeg,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack
	["ACE_fieldDressing",15,"backpack"] call FNC_AddItem; 
	["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",8,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",5,"backpack"] call FNC_AddItem; 
	["ACE_atropine",5,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",6,"backpack"] call FNC_AddItem;
	["ACE_personalAidKit",4,"backpack"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Squad Leader
case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_gps,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Fire Team Leader
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,8,"vest"] call FNC_AddItem;
	[B_glhedp,4,"vest"] call FNC_AddItem;
	[B_glsmoke,2,"vest"] call FNC_AddItem;
	[B_glsmokegreen,2,"vest"] call FNC_AddItem;
	[B_glsmokered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_glrifle] call FNC_AddItem;
	[B_law] call FNC_AddItem;

	//Extra Mag
	[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
};

//Rifleman
case "B_RAT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,9,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Automatic Rifleman (M249)
case "B_AR": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_armag,2,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,2,"backpack"] call FNC_AddItem;
	[B_frag,2,"backpack"] call FNC_AddItem;
	[B_smoke,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_ar] call FNC_AddItem;

	//Attachments
	[B_irls] call FNC_AddItem;
	[B_mgo] call FNC_AddItem;
};

//Assistant Autorifleman (M249)
case "B_AAR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	[B_armag,1,"vest"] call FNC_AddItem;

	//Backpack.
	[B_armag,2,"backpack"] call FNC_AddItem;
	[B_frag,2,"backpack"] call FNC_AddItem;
	[B_smoke,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Automatic Rifleman (M27)
case "B_IAR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_iar] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,13,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_iar] call FNC_AddItem;
	
	//Attachments
	[B_mgo] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_bipod] call FNC_AddItem;
};

//Assistant Automatic Rifleman (M27)
case "B_AIAR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,11,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Platoon Attachments

//Assault Squad Leader (SMAW)
case "B_AML": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_matheaa,1,"backpack"] call FNC_AddItem;
	[B_matsr,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;
	[B_smaw] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;

	//Extra Mags
	[B_mathedp,1,"backpack"] call FNC_AddItem;
};

//Assaultman (SMAW)
case "B_AMS": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_frag,2,"vest"] call FNC_AddItem;

	//Backpack
	[B_matheaa,1,"backpack"] call FNC_AddItem;
	[B_matsr,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;
	[B_smaw] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;

	//Extra Mags
	[B_mathedp,1,"backpack"] call FNC_AddItem;
};

//Assaulman Assistant (Demo)
case "B_AMA": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_heavy_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_smoke,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,9,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_democharge,2,"vest"] call FNC_AddItem;
	[B_clacker,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_matheaa,1,"backpack"] call FNC_AddItem;
	[B_mathedp,1,"backpack"] call FNC_AddItem;
	[B_matsr,2,"backpack"] call FNC_AddItem;
	[B_frag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Machine Gun Team Leader
case "B_MGTL": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_leader_headgear] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_gps,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;
	[B_mgmagap,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_mgmag,2,"vest"] call FNC_AddItem;

	[B_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,2,"backpack"] call FNC_AddItem;
	[B_mgmagap,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_mg] call FNC_AddItem;

	//Attachments
	[B_mgo] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;
	[B_mgmagap,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//AT Specialist
case "B_AT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	[B_clu] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//AT Assistant
case "B_ATA": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
};

//Vehicle Crew

//Vehicle Driver
case "B_VD": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	["rhsusf_cvc_ess"] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;

	//Backpack
	[B_toolkit,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;

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
	[B_carbine] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Commander
case "B_VC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	["rhsusf_cvc_ess"] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Air Force

//Pilot
case "B_PIL": {
	[B_pilot_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_pilot_backpack] call FNC_AddItem;
	[B_pilot_headgear] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_mgps,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_carbine] call FNC_AddItem;

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
	B_ace_default;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smokeg,2,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_carbine] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Joint Terminal Attack Controller
case "B_JTAC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_leader_headgear] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	[B_smokeo,1,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokeo,1,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_chemr,2,"vest"] call FNC_AddItem;
	[B_mgps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_glsmokered,4,"vest"] call FNC_AddItem;
	[B_glsmokegreen,4,"vest"] call FNC_AddItem;
	[B_glsmokeyellow,4,"vest"] call FNC_AddItem;

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
	[B_rifle_scope] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
};