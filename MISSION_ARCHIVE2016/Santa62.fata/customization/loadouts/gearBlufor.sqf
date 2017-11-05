// Info: USA High Tech Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//RAT - Rifleman (AT)
//GRE - Grenadier
//AR - Automatic Rifleman
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
//PIL - Pilot
//AC - Air Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "rhs_weap_hk416d10"
#define B_ar "rhs_weap_m249_pip_L_vfg"
#define B_glrifle "rhs_weap_hk416d145_m320"
#define B_mg "rhs_weap_m240B"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_m72a7"
#define B_rathedp "rhs_weap_m72a7"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "UK3CB_BAF_Eotech"
#define B_rco "UK3CB_BAF_Eotech"
#define B_mgo "UK3CB_BAF_Eotech"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15A"
#define B_mg_laser "rhsusf_acc_anpeq15A"
#define B_m4mb "rhsusf_acc_SFMB556"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100Rnd_762x51_m80a1epr"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_matheat "tf47_m3maaws_HEAT"
#define B_mathedp "tf47_m3maaws_hedp"
#define B_mathe "tf47_m3maaws_he"
#define B_matsmoke "tf47_m3maaws_smoke"
#define B_matillum "tf47_m3maaws_illum"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "rhs_mag_m662_red"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"

//Grenades
#define B_frag "rhs_mag_m67"
#define B_stun "ACE_M84"
#define B_smokew "rhs_mag_an_m8hc"
#define B_smokep "rhs_mag_m18_purple"
#define B_smoker "rhs_mag_m18_red"
#define B_smokey "rhs_mag_m18_yellow"
#define B_flarered "ace_HandFlare_Red"
#define B_flaregreen "ace_HandFlare_Green"
#define B_flarewhite "ace_HandFlare_White"
#define B_flareyellow "ace_HandFlare_Yellow"
#define B_hot "rhs_mag_an_m14_th3"

#define B_chemb "Chemlight_blue"
#define B_chemg "Chemlight_green"
#define B_chemr "Chemlight_red"
#define B_chemy "Chemlight_yellow"
#define B_smoke "SmokeShell"
#define B_smokeb "SmokeShellBlue"
#define B_smokeg "SmokeShellGreen"
#define B_smokeo "SmokeShellOrange"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_glsmokeyellow "rhs_mag_m716_yellow"


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

//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"
#define B_range "ACE_Vector"
#define B_clu "UK3CB_BAF_Javelin_CLU"

//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define B_default_uniform "rhs_uniform_g3_mc"
#define B_pilot_uniform "CUP_U_B_USMC_PilotOverall"

//Headgear
#define B_leader_headgear "rhsusf_opscore_mc_cover_pelt_cam"
#define B_default_headgear_R "rhsusf_opscore_mc_cover_pelt","rhsusf_opscore_mc_cover_pelt_nsw", "rhsusf_opscore_mc_cover_pelt_cam"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"

//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_ocp_fixed"

//Vests
#define B_vest_default "rhsusf_spcs_ocp_rifleman"
#define B_vest_grenadier "rhsusf_spcs_ocp_rifleman"
#define B_vest_saw "rhsusf_spcs_ocp_rifleman"
#define B_vest_medic "rhsusf_spcs_ocp_rifleman"
#define B_vest_engineer "rhsusf_spcs_ocp_rifleman"
#define B_vest_sniper "rhsusf_spcs_ocp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_spcs_ocp_rifleman"
#define B_vest_vehiclecrew "rhsusf_spcs_ocp_rifleman"
#define B_vest_leader "rhsusf_spcs_ocp_rifleman"
#define B_vest_ftl_leader "rhsusf_spcs_ocp_rifleman"
#define B_vest_pilot "rhsusf_spcs_ocp_rifleman"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "rhs_ess_black"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemGPS"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem; \
["rhsusf_ANPVS_14"] call FNC_AddItem; 

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem; \
["rhsusf_ANPVS_14"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "B_PC": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
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
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_hot,2,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_leader_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;

	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;

	[B_smokew,4,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
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
	["ACE_personalAidKit",6,"backpack"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem;

	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;

	[B_smokew,1,"vest"] call FNC_AddItem;
	[B_smoker,1,"vest"] call FNC_AddItem;
	[B_smokey,1,"vest"] call FNC_AddItem;
	[B_smokep,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
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
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};
case "B_UAV": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	["B_rhsusf_B_BACKPACK"] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,12,"vest"] call FNC_AddItem;
	[B_glhedp,5,"vest"] call FNC_AddItem;
	[B_glsmoke,2,"vest"] call FNC_AddItem;
	[B_glsmokered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	["rhsusf_acc_grip1"] call FNC_AddItem;
};

//MARK
case "B_MARK": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	["rhsusf_20Rnd_762x51_m118_special_Mag",4,"vest"] call FNC_AddItem; 
	["rhsusf_20Rnd_762x51_m62_Mag",2,"vest"] call FNC_AddItem; 

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_sr25_ec_d"] call FNC_AddItem;
	
	//Attachments
	[B_ir_laser] call FNC_AddItem;
	["rhsusf_acc_LEUPOLDMK4_2_d"] call FNC_AddItem;
	["CUP_bipod_VLTOR_Modpod"] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,12,"vest"] call FNC_AddItem;
	[B_glhedp,5,"vest"] call FNC_AddItem;
	[B_glsmoke,2,"vest"] call FNC_AddItem;
	[B_glsmokered,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear_R] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	["rhs_mag_30Rnd_556x45_Mk318_Stanag",2,"vest"] call FNC_AddItem;

	[B_stun,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_Mk318_Stanag",5,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
	
	//Backpack
	["rhs_mag_30Rnd_556x45_Mk318_Stanag",3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_m27iar"] call FNC_AddItem;
	

	//Attachments
	["rhsusf_acc_SF3P556"] call FNC_AddItem;
	["rhsusf_acc_anpeq15A"] call FNC_AddItem;
	["UK3CB_BAF_Eotech"] call FNC_AddItem;
	["rhsusf_acc_harris_bipod"] call FNC_AddItem;
};



case "B_PIL": {
	["rhsusf_hgu56p"] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	["rhsusf_spcs_ocp"] call FNC_AddItem;
	["UKAF_PackCom"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokew,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;
	[B_chemblue,1,"uniform"] call FNC_AddItem;

	[B_shortrange,1,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,"vest"] call FNC_AddItem;
	["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;

	//Assigned Items

	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["rhsusf_ANPVS_15"] call FNC_AddItem;

	
	//Weapons
	["rhs_weap_m4_carryhandle"] call FNC_AddItem;
	
};


case "B_JTAC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	["UK3CB_BAF_B_Bergen_MTP_JTAC_L_A"] call FNC_AddItem;
	[B_leader_headgear] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	B_ace_default;
	[B_smokeo,1,"uniform"] call FNC_AddItem;
	[B_maptools,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	["Laserbatteries",1,"vest"] call FNC_AddItem;
	[B_smokeo,1,"vest"] call FNC_AddItem;
	[B_smokep,2,"vest"] call FNC_AddItem;
	[B_smokeb,2,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_chemr,2,"vest"] call FNC_AddItem;
	["ACE_microDAGR",1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_glsmokered,4,"vest"] call FNC_AddItem;
	[B_glsmokegreen,4,"vest"] call FNC_AddItem;
	[B_glsmokeyellow,4,"vest"] call FNC_AddItem;

	//Backpack
	["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_glrifle] call FNC_AddItemRandom;
	["Laserdesignator"] call FNC_AddItem;
	["Laserdesignator"] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;

	//Attachments
	["UK3CB_BAF_Eotech"] call FNC_AddItem;
	["rhsusf_acc_anpeq15_top"] call FNC_AddItem;
};

