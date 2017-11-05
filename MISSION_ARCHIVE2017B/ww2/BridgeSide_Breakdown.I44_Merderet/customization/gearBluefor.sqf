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
#define B_rifle "rhs_weap_m4a1"
#define B_ar "rhs_weap_m249_pip_L"
#define B_glrifle "rhs_weap_m4a1_m203"
#define B_mg "rhs_weap_m240B"
#define B_dmr "rhs_weap_m14ebrri"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"
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
#define B_smoke "LIB_US_M18"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "LIB_US_M18_Green"
#define B_smokeo "SmokeShellOrange"
#define B_smokep "SmokeShellPurple"
#define B_smoker "LIB_US_M18_Red"
#define B_smokey "LIB_US_M18_Yellow"
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
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem;

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

#define B_default_headgear "H_LIB_US_Helmet", "H_LIB_US_Helmet_Net_ns","H_LIB_US_Helmet_Net_os","H_LIB_US_Helmet_Net","H_LIB_US_Helmet_ns","H_LIB_US_Helmet_os","fow_h_us_m1_net","fow_h_us_m1"
//Face
#define B_glasses "G_LIB_Dienst_Brille","G_LIB_Dienst_Brille2","G_LIB_Dust_Goggles","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3"
#define B_scarf "rhs_scarf", "G_Bandanna_khk"
				   
//=== EQUIPMENT ===

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

//Platoon  HQ

//Platoon Leader
case "B_PC": {
	["H_LIB_US_Helmet_First_lieutenant"] call FNC_AddItem;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Carbine_nco"] call FNC_AddItem;
	["B_LIB_US_Radio"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};

	//Uniform
	["LIB_US_M18",1,"uniform"] call FNC_AddItem;
	["LIB_15Rnd_762x33",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_15Rnd_762x33",3,"vest"] call FNC_AddItem; 
	["LIB_M1_Carbine"] call FNC_AddItem;
	
	["LIB_US_M18_Red",1,"vest"] call FNC_AddItem;
	["LIB_US_M18_Yellow",1,"vest"] call FNC_AddItem;
	["LIB_US_M18_Green",1,"vest"] call FNC_AddItem;
	["LIB_30Rnd_45ACP",2] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_Binocular_GER"] call FNC_AddItem;
	["LIB_Colt_M1911"] call FNC_AddItem;
};

//Platoon Sergeant
case "B_SGT": {
	["H_LIB_US_Helmet_Second_lieutenant"] call FNC_AddItem;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Thompson_nco"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	//Uniform
	["LIB_30Rnd_45ACP",1,"uniform"] call FNC_AddItem;
	["LIB_7Rnd_45ACP",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_30Rnd_45ACP",4,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	
	//backpack
	["LIB_US_M18_Red",1,"backpack"] call FNC_AddItem;
	["LIB_US_M18_Yellow",1,"backpack"] call FNC_AddItem;
	["LIB_US_M18_Green",1,"backpack"] call FNC_AddItem;
	["LIB_7Rnd_45ACP",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1A1_Thompson"] call FNC_AddItem;
	["LIB_Binocular_GER"] call FNC_AddItem;
	["LIB_Colt_M1911"] call FNC_AddItem;
};

//Platoon Messenger
case "B_MSG": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};

	//Uniform
	["LIB_US_M18",1,"uniform"] call FNC_AddItem;
	["LIB_15Rnd_762x33",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_15Rnd_762x33",3,"vest"] call FNC_AddItem; 
	["LIB_M1_Carbine"] call FNC_AddItem;
	
	["LIB_US_M18",1,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["LIB_15Rnd_762x33",3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
};

//Medic
case "B_MED": {
	["H_LIB_US_Helmet_Med_ns","H_LIB_US_Helmet_Med_os"] call FNC_AddItemRandom;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Medic","V_LIB_US_Vest_Medic2"] call FNC_AddItemRandom;
	["B_LIB_US_MedicBackpack_Empty"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};

	//Uniform
	["LIB_US_M18",1,"uniform"] call FNC_AddItem;
	["LIB_7Rnd_45ACP",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_7Rnd_45ACP",3,"vest"] call FNC_AddItem; 
	
	["LIB_Colt_M1911"] call FNC_AddItem;

	["ACE_fieldDressing",15,"backpack"] call FNC_AddItem; 
	["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",8,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",5,"backpack"] call FNC_AddItem; 
	["ACE_atropine",5,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",3,"uniform"] call FNC_AddItem;
	["ACE_personalAidKit",4,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
};

//Rifle Squad

//Squad Leader
case "B_SL": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_8Rnd_762x63",8,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem; 
	["LIB_US_M18",1,"vest"] call FNC_AddItem; 
	["LIB_US_M18",1,"uniform"] call FNC_AddItem; 
	
	//backpack
	["LIB_US_M18_Red",2,"backpack"] call FNC_AddItem;
	["LIB_US_M18_Yellow",2,"backpack"] call FNC_AddItem;
	["LIB_US_M18_Green",2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
	["LIB_Binocular_GER"] call FNC_AddItem;
};

//Assistant Squad Leader
case "B_ASL": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m41_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_5Rnd_762x63",2,"uniform"] call FNC_AddItem; 
	["LIB_7Rnd_45ACP",1,"uniform"] call FNC_AddItem; 
	["LIB_Colt_M1911"] call FNC_AddItem;
	//Vest
	
	["LIB_5Rnd_762x63",5,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_M18",1,"uniform"] call FNC_AddItem; 
	["LIB_7Rnd_45ACP",2,"vest"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1903A4_Springfield"] call FNC_AddItem;
	["LIB_Binocular_GER"] call FNC_AddItem;
	
};


//Automatic Rifleman
case "B_AR": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Bar"] call FNC_AddItem;
	["B_LIB_US_MGbag"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_20Rnd_762x63",5,"vest"] call FNC_AddItem; 
	["LIB_US_M18",1,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_20Rnd_762x63",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1918A2_BAR"] call FNC_AddItem;
	["LIB_M1918A2_BAR_Bipod"] call FNC_AddItem;
};

//Assistant Automatic Rifleman
case "B_AAR": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",5,"uniform"] call FNC_AddItem; 
	
	//Vest
	["ACE_Sandbag_empty",1,"vest"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",4,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_20Rnd_762x63",8,"backpack"] call FNC_AddItem;
	["ACE_Sandbag_empty",2,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
	["LIB_Binocular_GER"] call FNC_AddItem;
};

//Ammo Bearer
case "B_AB": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Bar"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",5,"uniform"] call FNC_AddItem; 
	
	//Vest
	["ACE_Sandbag_empty",1,"vest"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",5,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_20Rnd_762x63",8,"backpack"] call FNC_AddItem;
	["ACE_Sandbag_empty",5,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
};


//Rifleman
case "B_RIF": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Bar"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",5,"uniform"] call FNC_AddItem; 
	
	//Vest
	["ACE_Sandbag_empty",1,"vest"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",6,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_8Rnd_762x63",3,"vest"] call FNC_AddItem; 
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
};

//Rifleman
case "B_HTC": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Bar"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",5,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_8Rnd_762x63",6,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_8Rnd_762x63",3,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_headgear] call FNC_AddItemRandom;
	["fow_u_us_m37_01_private"] call FNC_AddItem;
	["V_LIB_US_Vest_Grenadier"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	if (random 1 > 0.5) then {
		[B_glasses] call FNC_AddItemRandom;
	};
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_8Rnd_762x63",4,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_8Rnd_762x63",6,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["LIB_rpg6",1,"backpack"] call FNC_AddItem; 
	["LIB_US_Mk_2",4,"backpack"] call FNC_AddItem; 
	//Assigned Items
	B_default_equipment;

	//Weapons
	["LIB_M1_Garand"] call FNC_AddItem;
};


//Vehicle Driver
case "B_VD": {
	["U_LIB_US_Tank_Crew","U_LIB_US_Tank_Crew2"] call FNC_AddItemRandom;
	["H_LIB_US_Helmet_Tank"] call FNC_AddItem;
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;
	["B_LIB_US_Backpack"] call FNC_AddItem;
	["G_LIB_Dust_Goggles","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3","G_LIB_Headwrap_gloves","G_LIB_Headwrap"] call FNC_AddItemRandom;
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_7Rnd_45ACP",4,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_7Rnd_45ACP",4,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//backpack
	["ToolKit",1,"backpack"] call FNC_AddItem; 
	//Assigned Items
	B_default_equipment;

	["LIB_Colt_M1911"] call FNC_AddItem;
	
};

//Vehicle Crew
case "B_VG": {
	["U_LIB_US_Tank_Crew","U_LIB_US_Tank_Crew2"] call FNC_AddItemRandom;
	["H_LIB_US_Helmet_Tank"] call FNC_AddItem;
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;
	["G_LIB_Dust_Goggles","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3","G_LIB_Headwrap_gloves","G_LIB_Headwrap"] call FNC_AddItemRandom;
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_7Rnd_45ACP",4,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_7Rnd_45ACP",4,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	["LIB_Colt_M1911"] call FNC_AddItem;

};

//Vehicle Commander
case "B_VC": {
	["U_LIB_US_Tank_Crew","U_LIB_US_Tank_Crew2"] call FNC_AddItemRandom;
	["H_LIB_US_Helmet_Tank"] call FNC_AddItem;
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;
	["B_LIB_US_Radio"] call FNC_AddItem;
	["G_LIB_Dust_Goggles","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3","G_LIB_Headwrap_gloves","G_LIB_Headwrap"] call FNC_AddItemRandom;
	
	//Uniform
	["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
	["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; 
	["LIB_7Rnd_45ACP",4,"uniform"] call FNC_AddItem; 
	
	//Vest
	["LIB_7Rnd_45ACP",4,"vest"] call FNC_AddItem; 
	["LIB_US_M18",2,"vest"] call FNC_AddItem; 
	["LIB_US_Mk_2",2,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	["LIB_Colt_M1911"] call FNC_AddItem;

};

