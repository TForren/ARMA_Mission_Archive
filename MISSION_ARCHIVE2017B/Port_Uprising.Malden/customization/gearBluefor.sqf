// Info: MARSOC Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Team Leader
//SGT - Team Chief
//MED - SARC
//SL - Element Leader / Operations Sergeant
//FTL - Assistant Element Leader / Assistant Operations Sergeant
//AR - Automatic Rifleman
//RAT - Operator
//PM - Pointman

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "rhs_weap_mk18_KAC"
#define B_ar "rhs_weap_m27iar_grip"
#define B_glrifle "rhs_weap_mk18_m320"
#define B_pump "rhs_weap_M590_8RD"

//Secondary
#define B_sidearm "rhsusf_weap_glock17g4"

//Launcher
#define B_law "rhs_weap_m72a7"

//Attachments
#define B_cco "rhsusf_acc_eotech_xps3"
#define B_rco "rhsusf_acc_SpecterDR_D"
#define B_rco2 "rhsusf_acc_SpecterDR_A"
#define B_bipod "rhsusf_acc_harris_bipod" 
#define B_fl "acc_flashlight"
#define B_irlt "rhsusf_acc_anpeq15_top"
#define B_irls "rhsusf_acc_anpeq15side"
#define B_irfl "rhsusf_acc_anpeq15"
#define B_gp "rhsusf_acc_grip1"
#define B_afg "rhsusf_acc_grip2"
#define B_vg "rhsusf_acc_grip3"
#define B_grip "rhsusf_acc_grip1", "rhsusf_acc_grip2", "rhsusf_acc_grip3"
#define B_sup "rhsusf_acc_nt4_tan"
#define B_supb "rhsusf_acc_nt4_black"
#define B_psup "rhsusf_acc_omega9k"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define B_buck "rhsusf_8Rnd_00Buck"
#define B_slug "rhsusf_8Rnd_Slug"
#define B_glhet "rhs_mag_M397_HET"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_m4009"
#define B_glsmoke "1Rnd_Smoke_Grenade_shell"
#define B_glsmokered "1Rnd_SmokeRed_Grenade_shell"
#define B_glsmokegreen "1Rnd_SmokeGreen_Grenade_shell"
#define B_glsmokeblue "1Rnd_SmokeBlue_Grenade_shell"
#define B_samag "rhsusf_mag_17Rnd_9x19_JHP"

//Grenades
#define B_frag "HandGrenade"
#define B_smoke "SmokeShell"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "SmokeShellGreen"
#define B_smoker "SmokeShellRed"
#define B_hot "ACE_M14"
#define B_flare "ACE_HandFlare_Red"
#define B_stun "ACE_M84"

//=== MISC ===

//Chemical lights
#define B_chemb "Chemlight_blue"

// CE equipment - what everyone should have
#define B_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem;

//ACE
#define Bandage "ACE_quikclot"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_defuse "ACE_DefusalKit"
#define B_clacker "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_strobe "ACE_IR_Strobe_Item"
#define B_maptools "ACE_MapTools"
#define B_gps "ACE_DAGR"
#define B_clay "ClaymoreDirectionalMine_Remote_Mag"
#define B_slam "SLAMDirectionalMine_Wire_Mag"
#define B_demo "DemoCharge_Remote_Mag"

//Double Misc
#define B_toolkit "ToolKit"
#define Binoculars "Binocular"
#define B_range "ACE_Vector"
#define B_lased "Laserdesignator"
#define B_nvg "rhsusf_ANPVS_15"
#define B_to "ACE_MX2A"

//Radio
#define B_longrange "ACRE_PRC152"
#define B_shortrange "ACRE_PRC343"
#define B_backradio "ACRE_PRC117F"


//=== Clothes ===

//Uniform              
#define B_default_uniform "rhs_uniform_g3_m81"

//Headgear
#define B_default_headgear "rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_nsw_cam"

//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_coy"

//Vests
#define B_vest_default "rhsusf_spc_light"
#define B_vest_saw "rhsusf_spc_iar"
#define B_vest_medic "rhsusf_spc_corpsman"
#define B_vest_leader "rhsusf_spc_squadleader"
#define B_vest_ftl "rhsusf_spc_teamleader"
#define B_vest_heavy "rhsusf_spc_rifleman"

//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon  HQ

//Team Leader
case "B_PC": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;
	[B_gps,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;


	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_to] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Team Chief
case "B_SGT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//SARC
case "B_MED": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;

	//Backpack
	["ACE_elasticBandage",12,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",12,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",12,"backpack"] call FNC_AddItem; 
	["ACE_morphine",8,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",6,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",6,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Element Leader
case "B_SL": {		
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_glhedp,5,"vest"] call FNC_AddItem;
	[B_glstun,4,"vest"] call FNC_AddItem;

	//Backpack
	[B_glhedp,6,"backpack"] call FNC_AddItem;
	[B_glhet,6,"backpack"] call FNC_AddItem;
	[B_glsmoke,4,"backpack"] call FNC_AddItem;
	[B_glsmokegreen,1,"backpack"] call FNC_AddItem;
	[B_glsmokered,1,"backpack"] call FNC_AddItem;
	[B_glsmokeblue,1,"backpack"] call FNC_AddItem;
	[B_flare,1,"backpack"] call FNC_AddItem;
	[B_ace_wirecutters,1,"backpack"] call FNC_AddItem;
	[B_hot,1,"backpack"] call FNC_AddItem;
	[B_smoke,1,"backpack"] call FNC_AddItem;
	[B_chemb,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_glrifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_rco] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Assistant Element Leader
case "B_FTL": {
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_clacker,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_law,1,"backpack"] call FNC_AddItem;
	[B_slam,1,"backpack"] call FNC_AddItem;
	[B_flare,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_law] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_flare,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,13,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	[B_law] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_rco2] call FNC_AddItem;
	[B_irls] call FNC_AddItem;
	[B_bipod] call FNC_AddItem;
	[B_supb] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Operator
case "B_RAT": {
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_flare,1,"uniform"] call FNC_AddItem;
	[B_clacker,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_frag,1,"backpack"] call FNC_AddItem;
	[B_stun,1,"backpack"] call FNC_AddItem;
	[B_smoke,1,"backpack"] call FNC_AddItem;
	[B_law,1,"backpack"] call FNC_AddItem;
	[B_clay,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_law] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};

//Pointman
case "B_PM": {
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_heavy] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_flare,1,"uniform"] call FNC_AddItem;
	[B_clacker,1,"uniform"] call FNC_AddItem;
	[B_stun,1,"uniform"] call FNC_AddItem;
	[B_smoke,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;
	[B_buck,1,"vest"] call FNC_AddItem;
	
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;
	[B_demo,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_pump,1,"backpack"] call FNC_AddItem;
	[B_buck,4,"backpack"] call FNC_AddItem;
	[B_slug,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irfl] call FNC_AddItem;
	[B_grip] call FNC_AddItemRandom;
	[B_sup] call FNC_AddItem;
	[B_psup] call FNC_AddItem;
};



//SOC Crew Officer
case "B_CRO": {		
	[B_default_backpack] call FNC_AddItem;
	["rhsusf_cvc_green_ess"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl] call FNC_AddItem;
	["G_Bandanna_khk"] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_samag,3,"vest"] call FNC_AddItem;

	//Backpack
	[B_flare,1,"backpack"] call FNC_AddItem;
	[B_smoke,1,"backpack"] call FNC_AddItem;
	[B_chemb,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_sidearm] call FNC_AddItem;

};

//SOC Crew
case "B_CR": {		
	["rhsusf_cvc_green_ess"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	["G_Bandanna_khk"] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 

	//Vest
	[B_samag,3,"vest"] call FNC_AddItem;
	[B_flare,1,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	[B_nvg] call FNC_AddItem;

	//Weapons
	[B_sidearm] call FNC_AddItem;

};