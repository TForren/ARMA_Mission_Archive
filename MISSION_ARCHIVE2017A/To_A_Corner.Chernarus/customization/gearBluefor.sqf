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
#define B_rifle "rhs_weap_m4a1_d_mstock"
#define B_ar "rhs_weap_m249_pip_S_vfg"
#define B_glrifle "rhs_weap_m4a1_m203s_d"
#define B_mg "rhs_weap_m240B"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_m72a7"
#define B_rathedp "rhs_weap_m72a7"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"

//Attachments
#define B_cco "rhsusf_acc_ACOG_USMC"
#define B_rco "rhsusf_acc_eotech_552_d"
#define B_mgo "rhsusf_acc_eotech_552_d"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15"
#define B_mg_laser "rhsusf_acc_anpeq15"
#define B_m4mb "rhsusf_acc_nt4_tan"

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
#define B_smokew "SmokeShell"
#define B_smokep "rhs_mag_m18_purple"
#define B_smoker "rhs_mag_m18_red"
#define B_smokey "rhs_mag_m18_yellow"
#define B_flarered "ace_HandFlare_Red"
#define B_flaregreen "ace_HandFlare_Green"
#define B_flarewhite "ace_HandFlare_White"
#define B_flareyellow "ace_HandFlare_Yellow"
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
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
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
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
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
	[B_stun,2,"vest"] call FNC_AddItem;
	[B_stun,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
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
	[B_armag,1,"vest"] call FNC_AddItem;
	
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
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
	

};

//Rifleman (AT)
case "B_RIF": {
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
	[B_armag,1,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_stun,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
	

};

//Grenadier
case "B_GRE": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
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
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_glhe,12,"backpack"] call FNC_AddItem;
	[B_glhedp,5,"backpack"] call FNC_AddItem;
	[B_glsmoke,2,"backpack"] call FNC_AddItem;
	[B_glsmokered,2,"backpack"] call FNC_AddItem;
	[B_shortrange,1,"backpack"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	
	//Attachments
	[B_rco] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	//["rhsusf_acc_grip1"] call FNC_AddItem;
	
};
case "B_dead": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_grenadier] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	

	
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
	[B_armag,2,"vest"] call FNC_AddItem;

	[B_stun,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_armag,3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
	["rhsusf_acc_eotech_xps3"] call FNC_AddItem;
	[B_mg_laser] call FNC_AddItem;
};


//Air Force

//Pilot
case "B_PIL": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_pilot_headgear] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_chemb,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem; 
	[B_strobe,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Air Crew
case "B_AC": {
	[B_default_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_pilot_backpack] call FNC_AddItem;
	[B_aircrew_headgear] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"vest"] call FNC_AddItem;

	B_ace_default;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	[B_smoker,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem; 

	//Backpack
	[B_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};