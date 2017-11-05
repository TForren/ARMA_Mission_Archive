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
#define O_rifle "CUP_arifle_FNFAL5061"
#define O_ar "CUP_arifle_RPK74"
#define O_glrifle "CUP_arifle_M16A2_GL"
#define O_mg "rhs_weap_m240G"
#define O_iar "rhs_weap_m27iar"

//Secondary
#define O_sidearm "rhsusf_weap_m9"

#define O_rat "rhs_weap_rpg26"

#define O_ratmag "rhs_rpg26_mag"


//Attachments
#define O_rifle_scope "rhsusf_acc_compm4"
#define O_mrco "rhsusf_acc_ACOG"
#define O_mgo "rhsusf_acc_ELCAN"
#define O_flashlight "SMA_SFFL_BLK"
#define O_ir_laser "acc_flashlight"
#define O_mg_laser "rhsusf_acc_anpeq15side"
#define O_m4mb "rhsusf_acc_SFMB556"
#define O_bipod "rhsusf_acc_harris_bipod"
#define O_ato "rhs_weap_optic_smaw"



//Ammo
#define O_riflemag "CUP_20Rnd_762x51_FNFAL_M"
#define O_riflemag_tr "CUP_20Rnd_762x51_FNFAL_M"
#define O_armag "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"
#define O_armag2 "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"
#define O_mgmag "rhsusf_100rnd_762x51"
#define O_mgmagap "rhsusf_100Rnd_762x51_m993"
#define O_matheaa "rhs_mag_smaw_HEAA"
#define O_mathedp "rhs_mag_smaw_HEDP"
#define O_matsr "rhs_mag_smaw_SR"
#define O_glhe "1Rnd_HE_Grenade_shell"
#define O_glhedp "rhs_mag_M433_HEDP"
#define O_glstun "rhs_mag_M4009"
#define O_glbuck "rhs_mag_m576"
#define O_glflare "rhs_mag_m662_red"
#define O_glsmoke "rhs_mag_m714_white"
#define O_glsmokered "rhs_mag_M713_red"
#define O_glsmokegreen "rhs_mag_m715_Green"
#define O_samag "rhsusf_mag_15Rnd_9x19_FMJ"

//Grenades
#define O_frag "rhs_mag_m67"
#define O_stun "rhs_ammo_m84"
#define O_smokewhite "rhs_mag_an_m8hc"
#define O_smokepurple "rhs_mag_m18_purple"
#define O_smokered "rhs_mag_m18_red"
#define O_flarered "ace_HandFlare_Red"
#define O_hot "rhs_mag_an_m14_th3"

//=== MISC ===
				   
//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define O_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
				  
//ACE
#define Bandage "ACE_fieldDressing"
#define O_morphine "ACE_morphine"
#define O_epipen "ACE_epinephrine"
#define O_ace_sparebarrel "ACE_SpareBarrel"
#define O_ace_defuse "ACE_DefusalKit"
#define O_ace_firing_device "ACE_Clacker"
#define O_ace_cabletie "ACE_CableTie"
#define O_ace_wirecutters "ACE_wirecutter"
#define O_carkeys "ACE_key_west"
#define O_carpick "ACE_key_lockpick"
				   
//Double Misc
#define O_toolkit "ToolKit"
#define O_explosive "DemoCharge_Remote_Mag"
#define O_at_mine "ATMine_Range_Mag"
#define O_ap_mine "APERSBoundingMine_Range_Mag"
#define O_minedetector "MineDetector"
#define Binoculars "Binocular"
#define O_range "ACE_Vector"
				   
//Radio
#define O_longrange "ACRE_PRC148"
#define O_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define O_default_uniform "CUP_U_O_SLA_MixedCamo"
   
//Headgear
#define O_leader_headgear "CUP_H_SLA_Helmet"
#define O_default_headgear "CUP_H_SLA_Helmet"
				   
//Backpack
#define O_default_backpack "CUP_B_CivPack_WDL"
#define O_heavy_backpack "CUP_B_CivPack_WDL"
				   
//Vests
#define O_vest_default "CUP_V_O_SLA_Carrier_Belt"
#define O_vest_light "CUP_V_O_SLA_Carrier_Belt"
#define O_vest_saw "CUP_V_O_SLA_Carrier_Belt02"
#define O_vest_iar "CUP_V_O_SLA_Carrier_Belt"
#define O_vest_medic "CUP_V_O_SLA_Carrier_Belt02"
#define O_vest_leader "CUP_V_O_SLA_Carrier_Belt"
#define O_vest_ftl_leader "CUP_V_O_SLA_Carrier_Belt"
				   
//Face
#define O_facecover "TRYK_Shemagh_shade"
#define O_glasses "rhs_googles_clear"
				   
//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemGPS"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "O_PC": {
	[O_leader_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	
	[O_shortrange,1,"uniform"] call FNC_AddItem; 
	[O_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};

//Platoon Sgt.
case "O_SGT": {
	[O_leader_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	
	[O_shortrange,1,"uniform"] call FNC_AddItem; 
	[O_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};

//Platoon Medic
case "O_MED": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_medic] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 

	[O_shortrange,1,"vest"] call FNC_AddItem;
	
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
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "O_SL": {
	[O_leader_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_leader] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 

	[O_frag,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem; 
	[O_longrange,1,"uniform"] call FNC_AddItem;

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "O_FTL": {
	[O_leader_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_ftl_leader] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,4,"vest"] call FNC_AddItem; 

	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};

//Rifleman (AT)
case "O_RAT": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_light] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	//[O_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	//[O_riflemag_tr,2,"vest"] call FNC_AddItem;
	
	[O_frag,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	["CUP_B_CivPack_WDL"] call FNC_addItem;
	["DemoCharge_Remote_Mag",1,"backpack"] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;

};

//Automatic Rifleman (M249)
case "O_AR": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_saw] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	//[O_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_armag,2,"vest"] call FNC_AddItem;

	
	//Backpack
	[O_armag,1,"backpack"] call FNC_AddItem;
	[O_flarered,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_ar] call FNC_AddItem;
	
	//Extra Mag
	[O_armag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
	//[O_ir_laser] call FNC_AddItem;
};

//Assistant Autorifleman (M249)
case "O_AAR": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	//[O_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	//[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[O_armag,1,"vest"] call FNC_AddItem;

	[O_frag,1,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack.
	[O_armag,3,"backpack"] call FNC_AddItem;
	[O_flarered,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;


};

//Automatic Rifleman (M27)
case "O_IAR": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_iar] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,12,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,4,"vest"] call FNC_AddItem;

	[O_frag,1,"vest"] call FNC_AddItem;
	[O_flarered,2,"vest"] call FNC_AddItem;
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_iar] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
	[O_bipod] call FNC_AddItem;

};

//Assistant Automatic Rifleman (M27)
case "O_AIAR": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,10,"vest"] call FNC_AddItem; 
	[O_riflemag_tr,4,"vest"] call FNC_AddItem;

	[O_frag,1,"vest"] call FNC_AddItem;
	[O_flarered,2,"vest"] call FNC_AddItem;
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;

};

//Weapons Squad

//AT Specialist
case "O_AT": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_light] call FNC_AddItem;
	[O_heavy_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	//[O_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	//[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[O_flarered,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_matheaa,2,"backpack"] call FNC_AddItem;
	[O_matsr,3,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_mat] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
	[O_ato] call FNC_AddItem;
};

//AT Assistant
case "O_ATA": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_heavy_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;

	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;

	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	//[O_riflemag_tr,2,"vest"] call FNC_AddItem;

	[O_flarered,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Backpack
	[O_matheaa,1,"backpack"] call FNC_AddItem;
	[O_mathedp,1,"backpack"] call FNC_AddItem;
	[O_matsr,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};

//Machine Gunner
case "O_MG": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_saw] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	//[O_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem;
	[O_flarered,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_mgmag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_mgmag,2,"backpack"] call FNC_AddItem;
	[O_mgmagap,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_mg] call FNC_AddItem;
	
	//Extra Mag
	[O_mgmag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
};

//Machine Gunner Assistant
case "O_MGA": {
	[O_default_headgear] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	//[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_smokewhite,1,"uniform"] call FNC_AddItem;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	//[O_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[O_mgmag,1,"vest"] call FNC_AddItem;

	[O_flarered,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem;
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_mgmag,3,"backpack"] call FNC_AddItem;
	[O_mgmagap,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	//[O_rifle_scope] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	//[O_m4mb] call FNC_AddItem;
};


//Vehicle Gunner
case "O_VG": {
	["rhs_tsh4_bala"] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	

	O_ace_default;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	["rhs_mag_9x18_12_57N181S",3,"uniform"] call FNC_AddItem;
	

	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["rhs_weap_makarov_pmm"] call FNC_AddItem;
	

};

//Vehicle Driver
case "O_VD": {
	["rhs_tsh4_bala"] call FNC_AddItem;
	[O_default_uniform] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	

	O_ace_default;
	//[O_frag,1,"uniform"] call FNC_AddItem;
	["rhs_mag_9x18_12_57N181S",3,"uniform"] call FNC_AddItem;

	
	[O_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["rhs_weap_makarov_pmm"] call FNC_AddItem;
	

};