// Info: USMC Low Tech Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - For Woodland camo change the d in uniform and helmets to wd

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//RAT - Rifleman (AT)
//AR - Automatic Rifleman (M249)
//AAR - Assistant Automatic Rifleman (M249)
//IAR - Automatic Rifleman (M27)
//AIAR - Assistant Automatic Rifleman (M27)
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
				   


//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "CUP_arifle_XM8_Carbine_FG"
#define B_ar "CUP_arifle_xm8_SAW"
#define B_glrifle "CUP_arifle_XM8_Carbine_GL"
#define B_mg "rhs_weap_m240G"
#define B_iar "rhs_weap_m27iar"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"
#define B_rathedp "rhs_weap_M136_hedp"
#define B_mat "rhs_weap_smaw_green"

//Attachments
#define B_rifle_scope "CUP_optic_CompM2_Black"
#define B_mrco "rhsusf_acc_ACOG"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_flashlight "UK3CB_BAF_LLM_Flashlight_Black"
#define B_ir_laser "acc_flashlight"
#define B_mg_laser "rhsusf_acc_anpeq15side"
#define B_m4mb "rhsusf_acc_SFMB556"
#define B_bipod "rhsusf_acc_harris_bipod"
#define B_ato "rhs_weap_optic_smaw"

//Ammo
#define B_riflemag "CUP_30Rnd_556x45_Stanag"
#define B_riflemag_tr "30Rnd_556x45_Stanag_Tracer_Yellow"
#define B_armag "CUP_100Rnd_556x45_BetaCMag"
#define B_armag2 "CUP_100Rnd_556x45_BetaCMag"
#define B_mgmag "rhsusf_100rnd_762x51"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_matheaa "rhs_mag_smaw_HEAA"
#define B_mathedp "rhs_mag_smaw_HEDP"
#define B_matsr "rhs_mag_smaw_SR"
#define B_glhe "CUP_1Rnd_HE_M203"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "CUP_1Rnd_StarFlare_White_M203"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"

//Grenades
#define B_frag "rhs_mag_m67"
#define B_stun "rhs_ammo_m84"
#define B_smokewhite "rhs_mag_an_m8hc"
#define B_smokepurple "rhs_mag_m18_purple"
#define B_smokered "rhs_mag_m18_red"
#define B_flarered "ace_HandFlare_Red"
#define B_hot "rhs_mag_an_m14_th3"

//=== MISC ===
				   
//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define B_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
				  
//ACE
#define Bandage "ACE_fieldDressing"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_ace_firing_device "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"
				   
//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"
#define B_range "ACE_Vector"
				   
//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define B_default_uniform_R "U_BG_Guerilla2_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_3"
   
//Headgear
#define B_leader_headgear_R "H_Watchcap_blk", "H_Watchcap_cbr", \
"rhsusf_Bowman", "rhsusf_bowman_cap", "H_Cap_blk_ION", "H_Cap_oli_hs", "CUP_H_PMC_Cap_PRR_Tan"
#define B_default_headgear_R "H_Watchcap_blk", "H_Watchcap_cbr", \
"rhsusf_Bowman", "rhsusf_bowman_cap", "H_Cap_blk_ION", "H_Cap_oli_hs", "CUP_H_PMC_Cap_PRR_Tan"
				   

//Backpack
#define B_default_backpack "CUP_B_USMC_MOLLE_WDL"
#define B_heavy_backpack "B_Carryall_cbr"
				   
//Vests
#define B_vest_default "rhsusf_spc_rifleman"
#define B_vest_light "rhsusf_spc_light"
#define B_vest_saw "rhsusf_spc_mg"
#define B_vest_iar "rhsusf_spc_iar"
#define B_vest_medic "rhsusf_spc_corpsman"
#define B_vest_leader "rhsusf_spc_squadleader"
#define B_vest_ftl_leader "rhsusf_spc_teamleader"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "G_Balaclava_blk"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemGPS"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "PMC_PC": {
	[B_leader_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Platoon Sgt.
case "PMC_SGT": {
	[B_leader_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Platoon Medic
case "PMC_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;

	[B_smokewhite,4,"vest"] call FNC_AddItem;
	[B_smokepurple,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",12,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
	["ACE_atropine",8,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",4,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "PMC_SL": {
	[B_leader_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	
	[B_hot,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	//[B_samag,1,"vest"] call FNC_AddItem; 
};

//Rifle Squad

//Fire Team Leader
case "PMC_FTL": {
	[B_leader_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Rifleman (AT)
case "PMC_RIF": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	//[B_rat] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};


//Grenadier
case "PMC_GRE": {
	[B_leader_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,1,"uniform"] call FNC_AddItem; 
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,12,"backpack"] call FNC_AddItem;
	[B_glflare,3,"backpack"] call FNC_AddItem;
	["CUP_FlareWhite_M203",8,"backpack"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	//[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Automatic Rifleman (M249)
case "PMC_AR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_armag,1,"vest"] call FNC_AddItem;

	
	//Backpack
	[B_armag,4,"backpack"] call FNC_AddItem;
	[B_flarered,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
	//[B_flashlight] call FNC_AddItem;
};

//Assistant Autorifleman (M249)
case "PMC_AAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack.
	[B_armag,3,"backpack"] call FNC_AddItem;
	[B_flarered,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;


	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Automatic Rifleman (M27)
case "PMC_IAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_iar] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,12,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_iar] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
	[B_bipod] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Assistant Automatic Rifleman (M27)
case "PMC_AIAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,10,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Weapons Squad

//AT Specialist
case "PMC_AT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_light] call FNC_AddItem;
	[B_heavy_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_matheaa,2,"backpack"] call FNC_AddItem;
	[B_matsr,3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
	[B_ato] call FNC_AddItem;
};

//AT Assistant
case "PMC_ATA": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_heavy_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Backpack
	[B_matheaa,1,"backpack"] call FNC_AddItem;
	[B_mathedp,1,"backpack"] call FNC_AddItem;
	[B_matsr,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Machine Gunner
case "PMC_MG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	
	//Vest
	[B_mgmag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,2,"backpack"] call FNC_AddItem;
	[B_mgmagap,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_mg] call FNC_AddItem;
	
	//Extra Mag
	[B_mgmag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
};

//Machine Gunner Assistant
case "PMC_MGA": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;
	[B_mgmagap,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Pilot
case "PMC_PIL": {
	["rhs_gssh18"] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	["V_TacVest_blk"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["rhsusf_mag_17Rnd_9x19_JHP",5,"vest"] call FNC_AddItem; 

	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	

	//Assigned Items
	B_default_equipment;

	//Attachments
	["rhsusf_weap_glock17g4"] call FNC_AddItem;

};

case "hostage": {
	["CUP_U_C_Villager_03"] call FNC_AddItem;
	

	["ACE_HandFlare_Red", 3, "uniform"] call FNC_AddItem;

};