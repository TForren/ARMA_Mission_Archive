// Info: US Army Rifle Platoon Blufor Loadouts - Updated 07/03/17
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
#define B_rifle "rhs_weap_m4a1"
#define B_ar "rhs_weap_m249_pip_L"
#define B_glrifle "rhs_weap_m4a1_m203"
#define B_mg "rhs_weap_m240B"
#define B_dmr "rhs_weap_m14ebrri"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_law "rhs_weap_m72a7"
#define B_rat "rhs_weap_M136_hedp"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "rhsusf_acc_compm4"
#define B_rco "rhsusf_acc_ACOG3"
#define B_mgo "rhsusf_acc_ELCAN_ard"
#define B_dmo "rhsusf_acc_LEUPOLDMK4"
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
#define B_smoke "SmokeShell"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "SmokeShellGreen"
#define B_smokeo "SmokeShellOrange"
#define B_smokep "SmokeShellPurple"
#define B_smoker "SmokeShellRed"
#define B_smokey "SmokeShellYellow"
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
#define B_shortrange "ACRE_PRC343"
#define B_backradio "ACRE_PRC117F"


//=== Clothes ===

//Uniform              
#define B_default_uniform "rds_uniform_Profiteer1","rds_uniform_Profiteer2","rds_uniform_Profiteer3","rds_uniform_Profiteer4","rds_uniform_Functionary1","rds_uniform_Functionary2"

//Headgear
#define B_leader_headgear "rhsusf_ach_helmet_headset_ocp"
#define B_default_headgear "H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_brown","H_Hat_checker","H_Hat_grey","H_Hat_tan"
#define B_vcrew_headgear "rhsusf_cvc_ess"

//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_ocp"

//Vests
#define B_vest_default "rhsusf_iotv_ocp_rifleman"
#define B_vest_grenadier "rhsusf_iotv_ocp_grenadier"
#define B_vest_saw "rhsusf_iotv_ocp_SAW"
#define B_vest_medic "rhsusf_iotv_ocp_medic"
#define B_vest_engineer "rhsusf_iotv_ocp_repair"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "rhsusf_spcs_ocp_rifleman"
#define B_vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
				   
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
case "DICK": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItemRandom;
	["LOP_6sh46"] call FNC_AddItem;

	//Uniform
	["rhsgref_1Rnd_00Buck",8,"uniform"] call FNC_AddItem;

	//Vest
	["rhsgref_1Rnd_00Buck",20,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["rhs_weap_Izh18"] call FNC_AddItem;
};
