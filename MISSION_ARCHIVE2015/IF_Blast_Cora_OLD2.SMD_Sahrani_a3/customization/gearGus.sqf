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


//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",1,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
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
#define O_longrange "ACRE_PRC152"
#define O_shortrange "ACRE_PRC343"


//=== Clothes ===

	//Uniform              
#define O_default_uniform_r "TRYK_U_taki_G_COY", "TRYK_U_taki_G_WH", "TRYK_U_taki_wh", "TRYK_U_taki_COY", "TRYK_U_denim_jersey_blu", "TRYK_U_pad_j_blk", "TRYK_U_pad_j"

//Headgear
#define O_default_headgear_r "rds_Villager_cap1", "rds_Villager_cap2", "rds_Villager_cap3", "rds_Villager_cap4"

//Backpack
#define O_default_backpack "TRYK_B_Coyotebackpack"
#define O_Med_backpack "TRYK_O_Medbag_OD"
#define O_crew_backpack "O_AssaultPack_cbr"
#define O_engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
				   
//Vests
#define O_vest_default_r "rhs_vydra_3m"
				   
//Face
#define O_glasses_r "TRYK_Beard_BK", "TRYK_Beard_BK2", "TRYK_Beard_BK3", "TRYK_Beard_BK4"

//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;



//Rifle and Weapons Squad Lead
case "O_GUS": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;

	//Uniform
	["hlc_30Rnd_545x39_B_AK",2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	
	//Vest
	["hlc_30Rnd_545x39_B_AK",5,"vest"] call FNC_AddItem; 
	["ACE_personalAidKit",1,"vest"] call FNC_AddItem; 

	//backpack
	["IEDUrbanBig_Remote_Mag", 2, "backpack"] call FNC_AddItem;
	["IEDUrbanSmall_Remote_Mag", 2, "backpack"] call FNC_AddItem;
	["ACE_Cellphone", 1, "backpack"] call FNC_AddItem;
	
	//[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["hlc_rifle_aek971worn"] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	["rhs_acc_1p63"] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
	
};case "CIV": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;

	//Uniform
	["hlc_30Rnd_545x39_B_AK",2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	
	//Vest
	["hlc_30Rnd_545x39_B_AK",5,"vest"] call FNC_AddItem; 
	["ACE_personalAidKit",1,"vest"] call FNC_AddItem; 

	//backpack
	["IEDUrbanBig_Remote_Mag", 2, "backpack"] call FNC_AddItem;
	["IEDUrbanSmall_Remote_Mag", 2, "backpack"] call FNC_AddItem;
	["ACE_Cellphone", 1, "backpack"] call FNC_AddItem;
	
	//[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	["hlc_rifle_aek971worn"] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	["rhs_acc_1p63"] call FNC_AddItem;
	//[O_ir_laser] call FNC_AddItem;
};

