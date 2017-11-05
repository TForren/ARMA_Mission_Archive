// Info: USA Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//SL - Squad Leader
//MED - Medic
//FTL - Fire Team Leader
//RAT - Rifleman (AT)
//RIF - Rifleman
//GRE - Grenadier
//AR - Automatic Rifleman
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
				   


//========================Equipment Definitions========================
//=== Weapons ===


// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",3,"uniform"] call FNC_AddItem; \
["ACE_CableTie",2,"vest"] call FNC_AddItem;

				  
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
	   

#define O_uniform_r "LOP_U_AFR_Civ_01", "LOP_U_AFR_Civ_02", "LOP_U_AFR_Civ_03", "LOP_U_AFR_Civ_04", "LOP_U_AFR_Civ_05", \
"LOP_U_AFR_Civ_06"

#define O_Rifle "hlc_rifle_ak74_dirty"
#define O_Rifle_Mag "hlc_30Rnd_545x39_B_AK"
#define O_Rifle_Optic "rhsusf_acc_eotech_552"
#define O_Vest_r "TRYK_LOC_AK_chestrig_OD", "TRYK_LOC_AK_chestrig_TAN"
#define O_headgear_r "H_Bandanna_gry", "H_Bandanna_blu", "H_Bandanna_cbr", "H_Bandanna_khk", "H_Bandanna_sgg", "H_Bandanna_sand", \
"H_Bandanna_surfer", "H_Bandanna_surfer_blk", "H_Bandanna_surfer_grn", "rds_Profiteer_cap3", "rds_Profiteer_cap4", "rds_Profiteer_cap1" 
#define O_headgear_leader "LOP_H_Cowboy_hat"

#define O_ARMag "rhs_200rnd_556x45_T_SAW"
#define O_AR "rhs_weap_m249_pip_L_vfg"
#define O_pistol "RH_g17"
#define O_pistol_mag "RH_17Rnd_9x19_g17"
#define O_goggles_r "TRYK_Shemagh_mesh", "TRYK_Shemagh", "EWK_Shemag_tan_Cig6"

#define O_backpack "rhs_sidor"
#define O_flare "rhs_weap_rsp30_red"


//Face
#define O_facecover "TRYK_Shemagh_shade"
#define O_glasses "G_Balaclava_blk"
				   
//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//OS
case "O_SL": {
	[O_headgear_leader] call FNC_AddItem;
	[O_uniform_r] call FNC_AddItemRandom;
	[O_Vest_r] call FNC_AddItemRandom;
	[O_goggles_r] call FNC_AddItemRandom;

	//Uniform
	//[O_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//
	[O_shortrange,1,"uniform"] call FNC_AddItem; 
	//Vest
	[O_Rifle_Mag,6,"vest"] call FNC_AddItem; 



	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[O_Rifle] call FNC_AddItem;
	["UK3CB_BAF_L131A1"] call FNC_AddItem;
	["UK3CB_BAF_17Rnd_9mm",2,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_Flashlight_L131A1"] call FNC_AddItem;
	
	

};


case "O_RIF": {
	[O_headgear_r] call FNC_AddItemRandom;
	[O_uniform_r] call FNC_AddItemRandom;
	[O_Vest_r] call FNC_AddItemRandom;
	[O_goggles_r] call FNC_AddItemRandom;

	//Uniform
	//[O_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//
	[O_shortrange,1,"uniform"] call FNC_AddItem; 
	//Vest
	[O_Rifle_Mag,6,"vest"] call FNC_AddItem; 



	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["hlc_rifle_ak74_dirty2"] call FNC_AddItem;
	["UK3CB_BAF_L131A1"] call FNC_AddItem;
	["UK3CB_BAF_17Rnd_9mm",2,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_Flashlight_L131A1"] call FNC_AddItem;
	

};


case "O_AR": {
	[O_headgear_r] call FNC_AddItemRandom;
	[O_uniform_r] call FNC_AddItemRandom;
	[O_Vest_r] call FNC_AddItemRandom;
	[O_goggles_r] call FNC_AddItemRandom;
	[O_backpack] call FNC_AddItem;

	//Uniform

	
	O_ace_default;
	//
	//Vest
	["hlc_75Rnd_762x39_m_rpk",2,"vest"] call FNC_AddItem; 
	["hlc_75Rnd_762x39_m_rpk",4,"backpack"] call FNC_AddItem; 



	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["hlc_rifle_rpk"] call FNC_AddItem;
	["UK3CB_BAF_L131A1"] call FNC_AddItem;
	["UK3CB_BAF_17Rnd_9mm",2,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_Flashlight_L131A1"] call FNC_AddItem;
	

};

case "O_MAT": {
	[O_headgear_r] call FNC_AddItemRandom;
	[O_uniform_r] call FNC_AddItemRandom;
	[O_Vest_r] call FNC_AddItemRandom;
	[O_goggles_r] call FNC_AddItemRandom;
	["rhs_rpg_empty"] call FNC_AddItem;

	//Uniform
	//[O_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//
	//Vest
	["hlc_30Rnd_545x39_B_AK",6,"vest"] call FNC_AddItem; 
	
	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem; 
	["rhs_rpg7_OG7V_mag",1,"backpack"] call FNC_AddItem; 

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["hlc_rifle_aks74u"] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
	
	["UK3CB_BAF_L131A1"] call FNC_AddItem;
	["UK3CB_BAF_17Rnd_9mm",2,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_Flashlight_L131A1"] call FNC_AddItem;
	

};

case "O_MARK": {
	[O_headgear_r] call FNC_AddItemRandom;
	[O_uniform_r] call FNC_AddItemRandom;
	[O_Vest_r] call FNC_AddItemRandom;
	[O_goggles_r] call FNC_AddItemRandom;

	//Uniform
	//[O_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	//
	//Vest
	["rhs_10Rnd_762x54mmR_7N1",6,"vest"] call FNC_AddItem; 

	

	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["rhs_weap_svds"] call FNC_AddItem;
	["UK3CB_BAF_L131A1"] call FNC_AddItem;
	
	["rhs_acc_pso1m2"] call FNC_AddItem;
	["UK3CB_BAF_17Rnd_9mm",2,"vest"] call FNC_AddItem; 
	["UK3CB_BAF_Flashlight_L131A1"] call FNC_AddItem;
	
	
	

};
