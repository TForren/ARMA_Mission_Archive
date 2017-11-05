// Info: USMC High Tech Bluefor Loadouts
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
#define B_rifle "rhs_weap_m16a4_carryhandle_grip"
#define B_ar "rhs_weap_m249_pip_L"
#define B_glrifle "rhs_weap_m16a4_carryhandle_M203"
#define B_mg "rhs_weap_m240G"
#define B_iar "rhs_weap_m27iar"

//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"
#define B_rathedp "rhs_weap_M136_hedp"
#define B_mat "rhs_weap_smaw_green"

//Attachments
#define B_rifle_scope "UK3CB_BAF_Eotech"
#define B_rifle_scope "rhsusf_acc_ACOG_USMC"
#define B_mrco "rhsusf_acc_ACOG_USMC"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_ir_laser "rhsusf_acc_anpeq15_light"
#define B_mg_laser "rhsusf_acc_anpeq15side"
#define B_m4mb "rhsusf_acc_SFMB556"
#define B_bipod "rhsusf_acc_harris_bipod"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100rnd_762x51"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_ratmag "tf47_at4_m_HEAT"
#define B_matheaa "tf47_smaw_heaa"
#define B_mathedp "tf47_smaw_hedp"
#define B_matsr "tf47_smaw_sr"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "rhs_mag_m662_red"
#define B_glsmoke "rhs_mag_m714_white"
#define B_glsmokered "rhs_mag_M713_red"
#define B_glsmokegreen "rhs_mag_m715_Green"
#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"

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
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
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
#define B_strobe "ACE_IR_Strobe_Item"
#define B_gps "ACE_DAGR"
#define B_mgps "ACE_microDAGR"

#define B_chemblue "Chemlight_blue"
#define B_chemr "Chemlight_red"
#define B_chemy "Chemlight_yellow"
				   
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
#define B_default_uniform "rhs_uniform_FROG01_m81"
   
//Headgear
#define B_leader_headgear "rhsusf_mich_bare_alt"
#define B_default_headgear "rhsusf_mich_bare_headset"
				   
//Backpack
#define B_default_backpack "rhsusf_assault_eagleaiii_coy_fixed"
#define B_heavy_backpack "B_Carryall_cbr"
				   
//Vests
#define B_vest_default "rhsusf_spc_rifleman"
#define B_vest_light "rhsusf_spc_light"
#define B_vest_saw "rhsusf_spc_mg"
#define B_vest_iar "rhsusf_spc_iar"
#define B_vest_medic "rhsusf_spc_corpsman"
#define B_vest_leader "rhsusf_spc_squadleader"
#define B_vest_ftl_leader "rhsusf_spc_teamleader"

#define B_vest_pilot "CUP_V_B_PilotVest"
#define B_pilot_uniform "U_I_pilotCoveralls"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
		   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "rhs_googles_clear"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ACE_DAGR"] call FNC_AddItem; \
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
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_smokered,1,"vest"] call FNC_AddItem;
	[B_smokepurple,1,"vest"] call FNC_AddItem;
	[B_hot,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
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
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
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
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_smokered,1,"vest"] call FNC_AddItem;
	[B_smokepurple,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

case "B_JTAC": {
	[B_leader_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	["ACE_MapTools",1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	["rhs_mag_m18_red",1,"vest"] call FNC_AddItem;
	["rhs_mag_m18_yellow",2,"vest"] call FNC_AddItem;
	["rhs_mag_m18_purple",2,"vest"] call FNC_AddItem;
	[B_flarered,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_chemblue,2,"vest"] call FNC_AddItem;
	[B_chemr,2,"vest"] call FNC_AddItem;
	[B_chemy,2,"vest"] call FNC_AddItem;
	[B_mgps,1,"vest"] call FNC_AddItem;
	["ACE_ReportCard",1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	[B_glsmokered,5,"vest"] call FNC_AddItem;
	[B_glsmokegreen,5,"vest"] call FNC_AddItem;

	//Backpack
	[B_range,1,"backpack"] call FNC_AddItem;
	[B_longrange,1,"backpack"] call FNC_AddItem;
	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_glrifle] call FNC_AddItem;
	["laserbatteries",1,"backpack"] call FNC_AddItem;
	["UK3CB_BAF_Soflam_Laserdesignator",1,"backpack"] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;

	//Attachments
	[B_cco] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItemRandom;
};

//Platoon Medic
case "B_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;

	[B_smokewhite,4,"vest"] call FNC_AddItem;
	[B_smokepurple,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
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
	["ACE_personalAidKit",4,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
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
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_smokered,2,"vest"] call FNC_AddItem;
	[B_smokepurple,2,"vest"] call FNC_AddItem;
	[B_hot,2,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem; 
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	["ACE_Sandbag_empty",10,"backpack"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,10,"vest"] call FNC_AddItem;
	[B_glhedp,8,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,1,"vest"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_mg_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	["ACE_Sandbag_empty",15,"backpack"] call FNC_AddItem;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,8,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//marksman
case "B_MARK": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	["ACE_Sandbag_empty",15,"backpack"] call FNC_AddItem;
	//Uniform
	["rhsusf_20Rnd_762x51_m118_special_Mag",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"vest"] call FNC_AddItem;
	
	//Vest
	["rhsusf_20Rnd_762x51_m118_special_Mag",3,"vest"] call FNC_AddItem; 
	["rhsusf_20Rnd_762x51_m993_Mag",3,"vest"] call FNC_AddItem;
	
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhs_weap_m14ebrri"] call FNC_AddItem;
	
	//Attachments
	["rhsusf_acc_LEUPOLDMK4"] call FNC_AddItem;
	["rhsusf_acc_harris_bipod"] call FNC_AddItem;
	["rhsusf_acc_anpeq15A"] call FNC_AddItem;
};

//Automatic Rifleman (M249)
case "B_AR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_armag,2,"vest"] call FNC_AddItem;

	
	//Backpack
	[B_armag,1,"backpack"] call FNC_AddItem;
	[B_strobe,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem; 

	//Attachments
	[B_mg_laser] call FNC_AddItem;
	[B_mgo] call FNC_AddItem;
};

//Assistant Autorifleman (M249)
case "B_AAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack.
	[B_armag,3,"backpack"] call FNC_AddItem;
	[B_strobe,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;


	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Automatic Rifleman (M27)
case "B_IAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_iar] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,12,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_iar] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_mg_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
	[B_bipod] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Assistant Automatic Rifleman (M27)
case "B_AIAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,10,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem;

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
};

//Weapons Squad

//AT Specialist
case "B_AT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack


	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["UK3CB_BAF_Javelin_Slung_Tube"] call FNC_AddItem;
	["UK3CB_BAF_Javelin_CLU"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["rhs_weap_optic_smaw"] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//AT Assistant
case "B_ATA": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["ace_entrenchingtool",1,'backpack'] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Backpack
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	["UK3CB_BAF_Javelin_Slung_Tube"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};


//AT Specialist
case "B_SMAW": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_light] call FNC_AddItem;
	[B_heavy_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Backpack
	["rhs_mag_smaw_HEAA",2,"backpack"] call FNC_AddItem;
	["rhs_mag_smaw_SR",3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["rhs_weap_smaw_green"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["rhs_weap_optic_smaw"] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//AT Assistant
case "B_ASMAW": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_heavy_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;

	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Backpack
	["rhs_mag_smaw_HEDP",1,"backpack"] call FNC_AddItem;
	["rhs_mag_smaw_HEAA",1,"backpack"] call FNC_AddItem;
	["rhs_mag_smaw_SR",3,"backpack"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Machine Gunner
case "B_MG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_strobe,1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_mgmag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,2,"backpack"] call FNC_AddItem;
	[B_mgmagap,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_mg] call FNC_AddItem;
	
	//Extra Mag
	[B_mgmag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
	[B_mgo] call FNC_AddItem;
};

//Machine Gunner Assistant
case "B_MGA": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	[B_mgmag,1,"vest"] call FNC_AddItem;

	[B_strobe,1,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;
	[B_mgmagap,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Pilot
case "B_PIL": {
	[B_pilot_headgear] call FNC_AddItem;
	[B_pilot_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["CUP_B_AssaultPack_Coyote"] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	//[B_smokered,2,"vest"] call FNC_AddItem;
	[B_chemgreen,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem; 
	[B_strobe,1,"vest"] call FNC_AddItem; 
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	["CUP_NVG_PVS7"] call FNC_AddItem;
};

//Air Crew
case "B_AC": {
	[B_aircrew_headgear] call FNC_AddItem;
	[B_pilot_uniform] call FNC_AddItem;
	[B_vest_pilot] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;

	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem;

	//[B_smokered,2,"vest"] call FNC_AddItem;
	[B_chemgreen,2,"vest"] call FNC_AddItem;
	[B_flarered,1,"vest"] call FNC_AddItem; 
	[B_strobe,1,"vest"] call FNC_AddItem; 
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_leader_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	["CUP_NVG_PVS7"] call FNC_AddItem;
};	

//Air Crew
case "B_Crew": {
	["CUP_H_USMC_Crew_Helmet"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["rhsusf_iotv_ocp"] call FNC_AddItem;
	["CUP_B_AssaultPack_Coyote"] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;

	//Vest
	[B_riflemag,2,"backpack"] call FNC_AddItem;

	//[B_smokered,2,"vest"] call FNC_AddItem;
	[B_chemgreen,2,"backpack"] call FNC_AddItem;
	[B_flarered,1,"backpack"] call FNC_AddItem; 
	[B_strobe,1,"backpack"] call FNC_AddItem; 
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;


	//Assigned Items
	B_leader_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	["CUP_NVG_PVS7"] call FNC_AddItem;
};


case "B_specLead": {
	["rhsusf_opscore_rg_cover_pelt"] call FNC_AddItem;
	["CUP_U_B_FR_SpecOps"] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,8,"vest"] call FNC_AddItem;
	[B_glhe,8,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;
	
	["ACE_HuntIR_M203",4,"backpack"] call FNC_AddItem;
	["ACE_HuntIR_monitor",1,"backpack"] call FNC_AddItem;
	["CUP_15Rnd_9x19_M9",3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["CUP_hgun_M9"] call FNC_AddItem;
	["rhs_weap_m4_m320"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;

	//Extra Mag
	
	//Attachments
	["rhsusf_acc_nt4_black"] call FNC_AddItem;
	["UK3CB_BAF_LLM_IR_Black"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["rhsusf_ANPVS_14"] call FNC_AddItem;
	["CUP_muzzle_snds_M9"] call FNC_AddItem;
};

case "B_specDemo": {
	["rhsusf_opscore_rg_cover_pelt"] call FNC_AddItem;
	["CUP_U_B_FR_SpecOps"] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	["ACE_DeadManSwitch",1,"backpack"] call FNC_AddItem;
	["DemoCharge_Remote_Mag",3,"backpack"] call FNC_AddItem;
	["CUP_15Rnd_9x19_M9",3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["CUP_hgun_M9"] call FNC_AddItem;
	["rhs_weap_m4_grip2"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;

	//Attachments
	["rhsusf_acc_nt4_black"] call FNC_AddItem;
	["UK3CB_BAF_LLM_IR_Black"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["rhsusf_ANPVS_14"] call FNC_AddItem;
	["CUP_muzzle_snds_M9"] call FNC_AddItem;
};

case "B_specAR": {
	["rhsusf_opscore_rg_cover_pelt"] call FNC_AddItem;
	["CUP_U_B_FR_SpecOps"] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;
	
	//Uniform
	["UK3CB_BAF_100Rnd",1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	["UK3CB_BAF_100Rnd",2,"vest"] call FNC_AddItem; 
	["CUP_15Rnd_9x19_M9",2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	["UK3CB_BAF_100Rnd",2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["CUP_hgun_M9"] call FNC_AddItem;
	["UK3CB_BAF_L110A2"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;

	//Attachments
	["UK3CB_BAF_Silencer_L110"] call FNC_AddItem;
	["UK3CB_BAF_SpecterLDS_3D"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["rhsusf_ANPVS_14"] call FNC_AddItem;
	["CUP_muzzle_snds_M9"] call FNC_AddItem;
};

case "B_specRAT": {
	["rhsusf_opscore_rg_cover_pelt"] call FNC_AddItem;
	["CUP_U_B_FR_SpecOps"] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	[B_rat] call FNC_AddItem;
	["CUP_15Rnd_9x19_M9",3,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["CUP_hgun_M9"] call FNC_AddItem;
	["rhs_weap_m4_grip2"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;

	//Attachments
	["rhsusf_acc_nt4_black"] call FNC_AddItem;
	["UK3CB_BAF_LLM_IR_Black"] call FNC_AddItem;
	["rhsusf_ANPVS_14"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["CUP_muzzle_snds_M9"] call FNC_AddItem;
};

case "B_specMed": {
	["rhsusf_opscore_rg_cover_pelt"] call FNC_AddItem;
	["CUP_U_B_FR_SpecOps"] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_smokewhite,4,"vest"] call FNC_AddItem;
	[B_smokepurple,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	["ACE_personalAidKit",1,"vest"] call FNC_AddItem;
	["CUP_15Rnd_9x19_M9",2,"vest"] call FNC_AddItem;
	
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
	["CUP_hgun_M9"] call FNC_AddItem;
	["rhs_weap_m4_grip2"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;

	//Attachments
	["rhsusf_acc_nt4_black"] call FNC_AddItem;
	["UK3CB_BAF_LLM_IR_Black"] call FNC_AddItem;
	["rhsusf_acc_compm4"] call FNC_AddItem;
	["rhsusf_ANPVS_14"] call FNC_AddItem;
	["CUP_muzzle_snds_M9"] call FNC_AddItem;
};