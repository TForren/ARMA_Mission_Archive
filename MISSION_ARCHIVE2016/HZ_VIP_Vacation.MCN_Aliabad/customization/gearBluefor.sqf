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
#define B_rifle "CUP_arifle_XM8_Carbine"
#define B_rifle2 "CUP_arifle_XM8_Carbine_FG"
#define B_ar "CUP_arifle_xm8_SAW"
#define B_glrifle "CUP_arifle_XM8_Carbine_GL"
#define B_mg "rhs_weap_m240G"
#define B_iar "rhs_weap_m27iar"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_m72a7"
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
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
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
#define Binoculars "ACE_Yardage450"
#define B_range "ACE_Vector"
				   
//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define B_default_uniform_r "U_BG_Guerilla2_2", "U_BG_Guerilla2_1", "U_BG_Guerilla2_3", "U_I_G_Story_Protagonist_F"
   
//Headgear
#define B_leader_headgear "rhsusf_lwh_helmet_marpatd_headset"

#define B_default_headgear_r "CUP_H_PMC_Cap_PRR_Burberry", "CUP_H_PMC_Cap_EP_Tan",\
"CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_PRR_Tan","H_Cap_blk_ION","rhsusf_bowman_cap", \
"rhsusf_Bowman", "rhs_booniehat2_marpatd", "CUP_H_PMC_Cap_Tan","H_Cap_tan_specops_US", \
"CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan", "CUP_H_PMC_Cap_Back_PRR_Burberry", \
"CUP_H_PMC_Cap_Back_PRR_Grey", "CUP_H_PMC_Cap_Back_PRR_Tan", "CUP_H_PMC_Cap_EP_Grey"

//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_coy_fixed"
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
#define B_glasses "UK3CB_BAF_G_Tactical_Clear"
				   
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
case "B_PC": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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
	//[B_flarered,2,"vest"] call FNC_AddItem;
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

//Platoon Medic
case "B_MED": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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
	[B_rifle2] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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
	[B_longrange,1,"vest"] call FNC_AddItem;
	
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
case "B_RAT": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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
	[B_rat] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	[B_flashlight] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};
//Marksman
case "B_MARK": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	["CUP_20Rnd_762x51_B_M110",5,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["CUP_srifle_M110"] call FNC_AddItem;
	
	//Attachments
	["CUP_bipod_VLTOR_Modpod"] call FNC_AddItem;
	["CUP_optic_LeupoldMk4_MRT_tan"] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//CQB
case "B_CQB": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;

	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,3,"uniform"] call FNC_AddItem;
	["ACE_M84",4,"backpack"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	["UK3CB_BAF_L128A1_Pellets",4,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_L128A1_Slugs",4,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_L128A1_Pellets",4,"backpack"] call FNC_AddItem; 
	["UK3CB_BAF_L128A1_Slugs",4,"backpack"] call FNC_AddItem; 
	["rhsusf_mag_17Rnd_9x19_JHP",3,"backpack"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["UK3CB_BAF_L128A1"] call FNC_AddItem;
	["rhsusf_weap_glock17g4"] call FNC_AddItem;
	
	//Attachments
	["UK3CB_BAF_Eotech"] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;

	//Extra Mag
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
};


//Grenadier
case "B_GRE": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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

	[B_glhe,20,"backpack"] call FNC_AddItem;
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
case "B_AR": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
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

//Machine Gunner
case "B_M32": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	//[B_flarered,2,"vest"] call FNC_AddItem;
	
	//Vest
	["rhsusf_mag_6Rnd_M441_HE",5,"vest"] call FNC_AddItem;
	
	//Backpack
	["rhsusf_mag_6Rnd_M433_HEDP",5,"backpack"] call FNC_AddItem;
	["rhsusf_mag_17Rnd_9x19_JHP",3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_m32"] call FNC_AddItem;
	["rhsusf_weap_glock17g4"] call FNC_AddItem;
	
	//Attachments
};

//Machine Gunner Assistant
case "B_AM32": {
[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["B_Carryall_khk"] call FNC_AddItem;

	//Uniform
	//[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	
	["rhsusf_mag_6Rnd_M441_HE",4,"backpack"] call FNC_AddItem;
	["rhsusf_mag_6Rnd_M576_Buckshot",2,"backpack"] call FNC_AddItem;
	["rhsusf_mag_6Rnd_M433_HEDP",4,"backpack"] call FNC_AddItem;
	["rhsusf_mag_6Rnd_M714_white",3,"backpack"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle2] call FNC_AddItem;
	["ACE_Yardage450"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItem;
};


case "vip": {
	["U_Marshal"] call FNC_AddItem;
	["CUP_H_TKI_SkullCap_05"] call FNC_AddItem;
	["G_Squares_Tinted"] call FNC_AddItem;

	["rhs_mag_9x18_12_57N181S", 2, "uniform"] call FNC_AddItem;
	["rhs_weap_makarov_pmm"] call FNC_AddItem;
	
	B_default_equipment;

};


#define civ_headgear_r "CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", \
"CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06", \
"CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_02", \
"CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", \
"CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define civ_uniform_r "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"


case "CIV": {
	[civ_uniform_r] call FNC_AddItemRandom;
	[civ_headgear_r] call FNC_AddItemRandom;
	B_default_equipment;
};