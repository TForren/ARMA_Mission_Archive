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
#define B_rifle "BWA3_G36"
#define B_ar "BWA3_MG4"
#define B_glrifle "BWA3_G36_AG"
#define B_mg "rhs_weap_m240B"
#define B_dmr "BWA3_G28_Standard"

//Secondary
#define B_sidearm "BWA3_P8"

//Launcher
#define B_rat "BWA3_Pzf3"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "BWA3_optic_ZO4x30"
#define B_rco "rhsusf_acc_ACOG3"
#define B_mgo "BWA3_optic_ZO4x30_Single"
#define B_dmo "BWA3_optic_20x50"
#define B_bipod "rhsusf_acc_harris_bipod" 
#define B_fl "acc_flashlight"
#define B_irlt "BWA3_acc_VarioRay_irlaser"
#define B_irls "rhsusf_acc_anpeq15side"
#define B_irfl "rhsusf_acc_anpeq15"
#define B_m4mb "rhsusf_acc_SFMB556","rhsusf_acc_SF3P556"
#define B_gp "rhsusf_acc_grip1"
#define B_afg "rhsusf_acc_grip2"
#define B_vg "rhsusf_acc_grip3"

//Ammo
#define B_riflemag "BWA3_30Rnd_556x45_G36"
#define B_riflemag_tr "BWA3_30Rnd_556x45_G36_Tracer"
#define B_armag "BWA3_200Rnd_556x45"
#define B_mgmag "rhsusf_100Rnd_762x51_m80a1epr"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_dmrmag "BWA3_10Rnd_762x51_G28"
#define B_glhe "1Rnd_HE_Grenade_shell"
#define B_glhedp "1Rnd_HE_Grenade_shell"
#define B_glsmoke "1Rnd_Smoke_Grenade_shell"
#define B_glsmokered "1Rnd_SmokeRed_Grenade_shell"
#define B_glsmokegreen "1Rnd_SmokeGreen_Grenade_shell"
#define B_glsmokeyellow "1Rnd_SmokeYellow_Grenade_shell"
#define B_samag "BWA3_15Rnd_9x19_P8"

//Grenades
#define B_frag "BWA3_DM51A1"
#define B_smoke "BWA3_DM25"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "SmokeShellGreen"
#define B_smokeo "BWA3_DM32_Orange"
#define B_smokep "SmokeShellPurple"
#define B_smoker "SmokeShellRed"
#define B_smokey "BWA3_DM32_Yellow"
#define B_hot "ACE_M14"

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
#define B_shortrange "ACRE_SEM52SL"
//#define B_backradio "ACRE_SEM70"
#define B_backradio "ACRE_PRC117F"


//=== Clothes ===

//Uniform              
#define B_default_uniform_r "BWA3_Uniform_idz_Fleck","BWA3_Uniform3_idz_Fleck"
#define B_default_uniform_AR_r "BWA3_Uniform_idz_Fleck","BWA3_Uniform3_idz_Fleck","BWA3_Uniform2_idz_Fleck"
#define B_pilot_uniform "BWA3_Uniform_Crew_Fleck"

//Headgear
#define B_leader_headgear "BWA3_OpsCore_Fleck"
#define B_default_headgear_r "BWA3_OpsCore_Fleck_Camera","BWA3_OpsCore_Fleck","BWA3_OpsCore_Fleck_Patch"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "BWA3_Knighthelm"
#define B_aircrew_headgear "BWA3_Knighthelm"

//Backpack
#define B_default_backpack "BWA3_PatrolPack_Fleck"
#define B_medic_backpack "BWA3_Kitbag_Fleck_Medic"
#define B_pilot_backpack "B_AssaultPack_rgr"

//Vests
#define B_vest_default "BWA3_Vest_Rifleman1_Fleck"
#define B_vest_grenadier "BWA3_Vest_Grenadier_Fleck"
#define B_vest_saw "BWA3_Vest_Autorifleman_Fleck"
#define B_vest_medic "BWA3_Vest_Medic_Fleck"
#define B_vest_engineer "rhsusf_iotv_ocp_repair"
#define B_vest_sniper "BWA3_Vest_Marksman_Fleck"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "BWA3_Vest_Leader_Fleck"
#define B_vest_ftl_leader "BWA3_Vest_Leader_Fleck"
#define B_vest_pilot "V_AFGH_6b23wint"
                       
//Face
#define B_glasses "BWA3_G_Combat_Black","BWA3_G_Combat_Black"
#define B_scarf "rhs_scarf", "G_Bandanna_khk"
                       
//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon  HQ

//Platoon Leader
case "B_PC": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon Sergeant
case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon Medic
case "B_MED": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_smokey,2,"vest"] call FNC_AddItem;
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

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Platoon RTO
case "B_RTO": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	["BWA3_Kitbag_Fleck"] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Rifle Squad

//Squad Leader
case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	[B_samag,2,"vest"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokeo,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	["ACE_SpraypaintGreen",1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_gps,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//backpack
	[B_armag, 2, "backpack"] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Fire Team Leader
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	["ACE_SpraypaintGreen",1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;

	//backpack
	[B_armag, 1, "backpack"] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_AR_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_armag,3,"vest"] call FNC_AddItem;
	[B_samag,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//backpack
	[B_armag, 1, "backpack"] call FNC_AddItem;

	//Weapons
	[B_ar] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_mgo] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_grenadier] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;

	B_ace_default;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,12,"vest"] call FNC_AddItem;
	[B_glhedp,6,"vest"] call FNC_AddItem;
	[B_glsmoke,2,"backpack"] call FNC_AddItem;
	[B_glsmokered,1,"backpack"] call FNC_AddItem;
	[B_glsmokegreen,1,"backpack"] call FNC_AddItem;
	[B_glsmokeyellow,1,"backpack"] call FNC_AddItem;
	
	//backpack
	[B_armag, 1, "backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
	
	//BW CAN'T INTO ACE DISPOSABLE LAUNCHERS
	[B_default_backpack] call FNC_AddItem;
	["BWA3_Pzf3_IT",1,"backpack"] call FNC_addItem;
	[B_rat] call FNC_AddItem;
	removebackpack _unit;
};

//Rifleman
case "B_RIF": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_chemb,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//backpack
	[B_armag, 1, "backpack"] call FNC_AddItem;
	
	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Combat Life Saver
case "B_CLS": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_medic] call FNC_AddItem;
	[B_medic_backpack] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	//Weapons
	[B_rifle] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_smokey,2,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	["ACE_personalAidKit",1,"vest"] call FNC_AddItem;

	//Backpack
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",10,"backpack"] call FNC_AddItem; 
	["ACE_morphine",10,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",8,"backpack"] call FNC_AddItem; 
	["ACE_atropine",6,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",4,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",4,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",2,"backpack"] call FNC_AddItem; 
	[B_armag, 1, "backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;	

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Designated Marksman
case "B_MARK": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_dmrmag,1,"uniform"] call FNC_AddItem;
	
	//Weapons
	[B_dmr] call FNC_AddItem;

	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_dmrmag,6,"vest"] call FNC_AddItem; 

	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//backpack
	[B_armag, 3, "backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;

	//Attachments
	[B_dmo] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
};

//Weapons Squad

//AT Specialist
case "B_AT": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
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
	[B_irlt] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//AT Assistant
case "B_ATA": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
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
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
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

	//Attachments
	[B_mgo] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_glasses] call FNC_AddItemRandom;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smoke,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemb,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
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
	[B_cco] call FNC_AddItem;
	[B_irlt] call FNC_AddItem;
	[B_vg] call FNC_AddItem;
	//[B_m4mb] call FNC_AddItemRandom;
};

//Vehicle Crew

//Pilot
case "B_PIL": {
	["BWA3_Knighthelm"] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	["BWA3_Kitbag_Fleck"] call FNC_AddItem;
	["BWA3_Uniform_Helipilot"] call FNC_AddItem;
	
	//Uniform
	["BWA3_40Rnd_46x30_MP7",2,"uniform"] call FNC_AddItem;
	["BWA3_40Rnd_46x30_MP7",2,"vest"] call FNC_AddItem;
	
	B_ace_default;
	
	[B_smokeo,2,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_maptools,1,"vest"] call FNC_AddItem;
	[B_card,1,"vest"] call FNC_AddItem;
	[B_gps,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_backradio,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["BWA3_MP7"] call FNC_AddItem;
	
	["BWA3_optic_RSAS"] call FNC_AddItem;
};
