// Info: US Army Late 1980s Bluefor Loadouts (Updated 10/03/17)
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
//RAT - Rifleman (LAT)
//MG - Machine Gunner
//MGA - MG Assistant
//MGAB - MG Ammo Bearer
//VD - Vehicle Driver
//VG - Vehicle Gunner
//VC - Vehicle Commander
//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "UK3CB_BAF_L1A1_Wood"
#define B_ar "rhs_weap_m249"
#define B_glrifle "RH_M16A2gl"
#define B_mg "hlc_lmg_m60"
#define B_sg "rhs_weap_M590_8RD"
#define B_smg "UK3CB_BAF_L91A1"

//Secondary
#define B_sidearm "rhsusf_weap_m1911a1"

//Launcher
#define B_rat "rhs_weap_m72a7"

//Attachments

//Ammo
#define B_riflemag "UK3CB_BAF_762_20Rnd"
#define B_riflemag_tr "UK3CB_BAF_762_20Rnd_T"
#define B_armag "rhs_200rnd_556x45_M_SAW"
#define B_mgmag "rhsusf_100Rnd_762x51"
#define B_glhe "rhs_mag_M441_HE"
#define B_glsmoke "rhs_mag_m714_White"
#define B_glsmokered "rhs_mag_m713_Red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_glflare "rhs_mag_M585_white"
#define B_samag "rhsusf_mag_7x45acp_MHP"
#define B_buck "rhsusf_8Rnd_00Buck"
#define B_slug "rhsusf_8Rnd_Slug"
#define B_smgmag "UK3CB_BAF_9_30Rnd"

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
#define B_hfw "ACE_HandFlare_White"
#define B_hfy "ACE_HandFlare_Yellow"
#define B_hfr "ACE_HandFlare_Red"
#define B_hfg "ACE_HandFlare_Green"

//=== MISC ===

// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",1,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define Bandage "ACE_fieldDressing"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_ace_clacker "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"
#define B_maptools "ACE_MapTools"
#define B_card "ACE_ReportCard"
#define B_paint "ACE_SpraypaintBlack"

//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"

//Radio
#define B_backradio "ACRE_PRC77"


//=== Clothes ===

//Uniform              
#define B_default_uniform "rhsgref_uniform_ERDL"

//Headgear
#define B_default_headgear "rhsgref_helmet_M1_bare", "rhsgref_helmet_M1_bare_alt01", "rhsgref_helmet_M1_painted","rhsgref_helmet_M1_painted_alt01"
#define B_boonie "usm_bdu_boonie_wdl"
#define B_cover "usm_bdu_cap_wdl"
#define B_vcrew_headgear "usm_helmet_cvc"

//Backpack
#define B_default_backpack "rhsgref_hidf_alicepack"
#define B_medic_backpack "usm_pack_m5_medic"
#define B_radio_backpack "usm_pack_st138_prc77"
#define B_barrel_bag "usm_pack_abag_m60_fixed"
#define B_belts "usm_pack_762x51_ammobelts"
#define B_bandolier "usm_pack_762x51_bandoliers"

//Vests
#define B_vest_default "rhsgref_alice_webbing"
#define B_vest_light "rhsgref_alice_webbing"
#define B_vest_grenadier "rhsgref_alice_webbing"
#define B_vest_saw "rhsgref_alice_webbing"
#define B_vest_vehiclecrew "rhsgref_alice_webbing"
#define B_vest_leader "rhsgref_alice_webbing"
				   
//Face
#define B_glasses "rhs_googles_clear","rhs_googles_black"
#define B_scarf "rhs_scarf", "G_Bandanna_khk"
				   
//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon  HQ

//Platoon Leader
case "B_PC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_radio_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_smokeo,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_hfy,1,"vest"] call FNC_AddItem;
	[B_cover,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
};

//Platoon Sergeant
case "B_SGT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_hfr,1,"vest"] call FNC_AddItem;
	[B_hfg,1,"vest"] call FNC_AddItem;
	[B_cover,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_medic_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;
	["ACE_personalAidKit",5,"vest"] call FNC_AddItem; 

	//Backpack
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",10,"backpack"] call FNC_AddItem; 
	["ACE_fieldDressing",20,"backpack"] call FNC_AddItem; 
	["ACE_morphine",10,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem; 


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
};

//Platoon RTO
case "B_RTO": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_radio_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
};

//Rifle Squad

//Squad Leader
case "B_SL": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_radio_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_smokeg,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_hfr,1,"vest"] call FNC_AddItem;
	[B_hfg,1,"vest"] call FNC_AddItem;
	[B_paint,1,"vest"] call FNC_AddItem;
	[B_cover,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
};

//Fire Team Leader
case "B_FTL": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_hfy,1,"vest"] call FNC_AddItem;
	[B_paint,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,1,"backpack"] call FNC_AddItem;
	[B_mgmag,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;

	//Vest
	[B_armag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_ar] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,8,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_glhe,12,"vest"] call FNC_AddItem;
	[B_glflare,4,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,1,"backpack"] call FNC_AddItem;
	[B_mgmag,1,"backpack"] call FNC_AddItem;

	[B_glsmoke,4,"backpack"] call FNC_AddItem;
	[B_glsmokered,2,"backpack"] call FNC_AddItem;
	[B_glsmokegreen,2,"backpack"] call FNC_AddItem;
	[B_boonie,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,10,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,1,"backpack"] call FNC_AddItem;
	[B_mgmag,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_belts] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;

	//Vest
	[B_mgmag,2,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_mg] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_barrel_bag] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,8,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_ace_sparebarrel,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
};

//Machine Gunner Ammo Bearer
case "B_MGAB": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_bandolier] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,8,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
};
//Vehicle Crew

//Vehicle Driver
case "B_VD": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_vcrew_headgear] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_smgmag,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_toolkit,1,"backpack"] call FNC_AddItem;
	[B_smgmag,10,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_smg] call FNC_AddItem;
};

//Vehicle Gunner
case "B_VG": {
	[B_vcrew_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	
	//Vest
	[B_smgmag,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_smg] call FNC_AddItem;

	//Extra Mag
	[B_smgmag,1,"vest"] call FNC_AddItem;
};

//Vehicle Commander
case "B_VC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_vehiclecrew] call FNC_AddItem;
	[B_radio_backpack] call FNC_AddItem;
	[B_vcrew_headgear] call FNC_AddItem;
	[B_scarf] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_smgmag,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_smg] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_smgmag,1,"vest"] call FNC_AddItem;
};