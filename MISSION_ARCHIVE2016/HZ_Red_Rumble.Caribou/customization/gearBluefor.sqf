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
#define B_rifle "rhs_weap_akm"
#define B_ar "CUP_lmg_M60E4"
#define B_glrifle "rhs_weap_akm_gp25"
#define B_mg "rhs_weap_pkm"

//Secondary
#define B_sidearm "rhs_weap_makarov_pm"

//Launcher
#define B_rat "CUP_launch_RPG18"
#define B_rathedp "CUP_launch_RPG18"
#define B_mat "rhs_weap_smaw_green"

//Attachments
#define B_rifle_scope "rhsusf_acc_compm4"
#define B_mrco "rhsusf_acc_ACOG"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_flashlight "SMA_SFFL_BLK"
#define B_ir_laser "acc_flashlight"
#define B_mg_laser "rhsusf_acc_anpeq15side"
#define B_m4mb "rhsusf_acc_SFMB556"
#define B_bipod "rhsusf_acc_harris_bipod"
#define B_ato "rhs_weap_optic_smaw"

//Ammo
#define B_riflemag "rhs_30Rnd_762x39mm"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
#define B_armag2 "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
#define B_mgmag "rhs_100Rnd_762x54mmR_green"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_matheaa "rhs_mag_smaw_HEAA"
#define B_mathedp "rhs_mag_smaw_HEDP"
#define B_matsr "rhs_mag_smaw_SR"
#define B_glhe "rhs_VOG25"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "rhs_mag_m662_red"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_samag "rhs_mag_9x18_8_57N181S"

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
#define B_default_uniform_R "CUP_U_O_CHDKZ_Kam_02", "CUP_U_O_CHDKZ_Kam_04"
   
//Headgear
#define B_leader_headgear "CUP_H_SLA_Beret"
#define B_default_headgear "CUP_H_SLA_Helmet"
				   
//Backpack
#define B_default_backpack "CUP_B_AlicePack_Bedroll"
#define B_heavy_backpack "CUP_B_AlicePack_Bedroll"
				   
//Vests
#define B_vest_default "CUP_V_RUS_Smersh_1"
#define B_vest_light "CUP_V_RUS_Smersh_1"
#define B_vest_saw "CUP_V_RUS_Smersh_1"
#define B_vest_iar "CUP_V_RUS_Smersh_1"
#define B_vest_medic "CUP_V_RUS_Smersh_1"
#define B_vest_leader "CUP_V_RUS_Smersh_2"
#define B_vest_ftl_leader "CUP_V_RUS_Smersh_2"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "rhs_googles_clear"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "B_PC": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,4,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;

	
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

	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	["CUP_B_ACRScout_m95"] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_glhe,7,"vest"] call FNC_AddItem;
	
	["rhs_VG40OP_red",8,"backpack"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;

};

//Automatic Rifleman (M249)
case "B_MG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	//Vest
	[B_mgmag,2,"vest"] call FNC_AddItem;

	
	//Backpack
	[B_mgmag,2,"backpack"] call FNC_AddItem;
	[B_flarered,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_mg] call FNC_AddItem;
	
	//Attachments
	//[B_ir_laser] call FNC_AddItem;
};

//Assistant Autorifleman (M249)
case "B_AMG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_mgmag,4,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Weapons Squad

//AT Specialist
case "B_AT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	["CUP_B_RPGPack_Khaki"] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;
	
	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_akms"] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//AT Assistant
case "B_AAT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	["CUP_B_RPGPack_Khaki"] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;
	
	["rhs_rpg7_PG7VL_mag",3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_akms"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;
};

//Rifleman
case "B_RIF": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	["rhs_acc_2dpZenit"] call FNC_AddItem;

};

//Pilot
case "B_PIL": {
	["CUP_H_TK_PilotHelmet"] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	["rhs_mag_9x18_8_57N181S",2,"uniform"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem; 
	
	B_ace_default;
	
	//Vest
	["rhs_mag_9x18_8_57N181S",2,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_makarov_pm"] call FNC_AddItem;
	
	//Attachments
	//[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;

};
//Pilot
case "B_crew": {
	["CUP_H_TK_PilotHelmet"] call FNC_AddItem;
	[B_default_uniform_R] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	//[B_glasses] call FNC_AddItem;
	
	//Uniform
	["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"uniform"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem; 
	
	B_ace_default;
	
	//Vest
	["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",4,"vest"] call FNC_AddItem; 
	//[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	["ACE_HandFlare_Red",3,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["CUP_arifle_RPK74"] call FNC_AddItem;
	

};

