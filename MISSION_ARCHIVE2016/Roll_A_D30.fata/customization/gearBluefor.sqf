// Info: US Army Desert Storm Bluefor Loadouts
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
//AT - Rifleman (ATGM)
//MG - Machine Gunner
//MGA - MG Assistant
//MGAB - MG Ammo Bearer
//VD - Vehicle Driver
//VG - Vehicle Gunner
//VC - Vehicle Commander
//PIL - Pilot
//AC - Air Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "CUP_arifle_M16A2"
#define B_ar "CUP_lmg_M249_E2"
#define B_glrifle "CUP_arifle_M16A2_GL"
#define B_mg "rhs_weap_m240B"
#define B_smg "CUP_smg_MP5A5"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"
#define B_mat "ACE_M47_Dragon"

//Attachments

//Ammo
#define B_riflemag "CUP_30Rnd_556x45_Stanag"
#define B_armag "CUP_200Rnd_TE4_Red_Tracer_556x45_M249"
#define B_mgmag "rhsusf_100Rnd_762x51"
#define B_smgmag "CUP_30Rnd_9x19_MP5"
#define B_glhe "CUP_1Rnd_HE_M203"
#define B_glhedp "CUP_1Rnd_HEDP_M203"
#define B_glsmoke "CUP_1Rnd_Smoke_M203"
#define B_glsmokered "CUP_1Rnd_SmokeRed_M203"
#define B_glsmokegreen "CUP_1Rnd_SmokeGreen_M203"
#define B_glflare "UGL_FlareWhite_F"
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
#define B_ace_firing_device "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"
#define B_maptools "ACE_MapTools"
#define B_card "ACE_ReportCard"

//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"
#define B_ds "ACE_M47_Daysight"

//Radio
#define B_backradio "ACRE_PRC77"


//=== Clothes ===

//Uniform              
#define B_default_uniform "usm_bdu_d"
#define B_pilot_uniform "CUP_U_B_USArmy_PilotOverall"

//Headgear
#define B_default_headgear "usm_helmet_pasgt_d", "usm_helmet_pasgt_g_d"
#define B_boonie "usm_bdu_boonie_des"
#define B_cover "usm_bdu_cap_des"
#define B_vcrew_headgear "usm_helmet_cvc"
#define B_pilot_headgear "CUP_H_USMC_Helmet_Pilot"
#define B_aircrew_headgear "CUP_H_USMC_Helmet_Pilot"

//Backpack
#define B_default_backpack "usm_pack_alice"
#define B_medic_backpack "usm_pack_m5_medic"
#define B_radio_backpack "usm_pack_st138_prc77"
#define B_barrel_bag "usm_pack_abag_m60_fixed"
#define B_belts "usm_pack_762x51_ammobelts"
#define B_bandolier "usm_pack_762x51_bandoliers"
#define B_pilot_backpack "B_AssaultPack_rgr"

//Vests
#define B_vest_default "usm_vest_pasgtdes_lbe_rm","usm_vest_pasgtdes_lbe_rm","usm_vest_pasgt_lbe_rm"
#define B_vest_grenadier "usm_vest_pasgtdes_lbe_gr","usm_vest_pasgt_lbe_gr"
#define B_vest_saw "usm_vest_pasgtdes_lbe_mg","usm_vest_pasgtdes_lbe_mg","usm_vest_pasgt_lbe_mg"
#define B_vest_vehiclecrew "usm_vest_pasgt"
#define B_vest_leader "usm_vest_pasgtdes_lbe_rmp"
#define B_vest_ftl "usm_vest_pasgtdes_lbe_rm"
#define B_vest_pilot "CUP_V_B_PilotVest"
				   
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
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_samag,3,"vest"] call FNC_AddItem;

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
	[B_sidearm] call FNC_AddItem;
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
	[B_samag,3,"vest"] call FNC_AddItem;

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
	[B_sidearm] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;
	[B_medic_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;

	[B_smoke,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;
	["ACE_personalAidKit",3,"vest"] call FNC_AddItem;

	//Backpack
	["ACE_elasticBandage",8,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",12,"backpack"] call FNC_AddItem; 
	["ACE_fieldDressing",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",10,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",2,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",2,"backpack"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
};

//Platoon RTO
case "B_RTO": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;
	[B_radio_backpack] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;

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
	[B_samag,3,"vest"] call FNC_AddItem;

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
	[B_sidearm] call FNC_AddItem
};

//Fire Team Leader
case "B_FTL": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_smokeb,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_hfy,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;

	//Vest
	[B_armag,3,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_ar] call FNC_AddItem;

	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_glhe,10,"vest"] call FNC_AddItem;
	[B_glhedp,6,"vest"] call FNC_AddItem;
	[B_glsmoke,4,"vest"] call FNC_AddItem;
	[B_glsmokered,2,"vest"] call FNC_AddItem;
	[B_glsmokegreen,2,"vest"] call FNC_AddItem;
	[B_glflare,3,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
};

//Rifleman (ATGM)
case "B_AT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_frag,2,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_ds] call FNC_AddItem;
	[B_mat] call FNC_AddItem;
};

//Machine Gunner
case "B_MG": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItemRandom;
	[B_barrel_bag] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_mgmag,4,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_ace_sparebarrel,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_mg] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;
	[B_bandolier] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
};

//Machine Gunner Ammo Bearer
case "B_MGAB": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItemRandom;
	[B_belts] call FNC_AddItem;
	[B_default_headgear] call FNC_AddItemRandom;
	
	//Uniform
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem;
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smoke,1,"vest"] call FNC_AddItem;
	[B_hfw,1,"vest"] call FNC_AddItem;
	[B_boonie,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;

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
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_smgmag,1,"vest"] call FNC_AddItem;
};

//Air Force

//Pilot
case "B_PIL": {
	[B_pilot_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_radio_backpack] call FNC_AddItem;
	[B_pilot_headgear] call FNC_AddItem;
	
	//Uniform
	[B_smgmag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_smgmag,2,"vest"] call FNC_AddItem;

	[B_smoker,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_smg] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Air Crew
case "B_AC": {
	[B_pilot_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_aircrew_headgear] call FNC_AddItem;

	//Uniform
	[B_smgmag,2,"uniform"] call FNC_AddItem;

	B_ace_default;

	//Vest
	[B_smgmag,2,"vest"] call FNC_AddItem;

	[B_smokeb,2,"vest"] call FNC_AddItem;

	//Backpack
	[B_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_smg] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};