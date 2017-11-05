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
#define O_rifle "hlc_rifle_ak74_dirty"
#define O_riflemag "hlc_30Rnd_545x39_B_AK"

#define O_rifleGL "hlc_rifle_akmgl"
#define O_rifleGLmag "hlc_VOG25_AK"

#define O_MG "rhs_weap_pkm"
#define O_MGmag "rhs_100Rnd_762x54mmR"

#define O_svd "rhs_weap_svdp_wd"
#define O_svdmag "rhs_10Rnd_762x54mmR_7N1"

#define O_frag "rhs_mag_rgd5"

#define O_RPG "rhs_weap_rpg7"
#define O_OG7 "rhs_rpg7_OG7V_mag"
#define O_TBG "rhs_rpg7_TBG7V_mag"
#define O_VL "rhs_rpg7_PG7VL_mag"


// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",1,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["Chemlight_green",1,"uniform"] call FNC_AddItem; \
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
#define O_default_uniform_r "LOP_U_AM_Fatigue_01", "LOP_U_AM_Fatigue_02", "LOP_U_AM_Fatigue_03", \
"LOP_U_AM_Fatigue_04", "LOP_U_TAK_Civ_Fatigue_01", "LOP_U_TAK_Civ_Fatigue_02", "LOP_U_TAK_Civ_Fatigue_04", \
"TRYK_U_taki_COY", "TRYK_U_taki_wh", "TRYK_U_taki_G_COY"

#define O_leader_uniform_r "TRYK_ZARATAKI", "TRYK_ZARATAKI2", "TRYK_ZARATAKI3"

//Headgear
#define O_default_headgear_r "LOP_H_Turban_mask", "LOP_H_Turban", "TRYK_H_pakol2", "LOP_H_Pakol"
#define O_leader_headgear "LOP_H_Cowboy_hat"
#define O_pilot_headgear "H_PilotHelmetHeli_B"
#define O_aircrew_headgear "H_PilotHelmetHeli_B"
				   
//Backpack
#define O_default_backpack "TRYK_O_Alicepack"
#define O_RPG_Backpack "rhs_rpg_empty"

				   
//Vests
#define O_vest_default "TRYK_LOC_AK_chestrig_OD"
				   
//Face
#define O_leader_beard "TRYK_Beard_Gr4"
#define O_glasses_r "TRYK_Beard_BK", "TRYK_Beard", "TRYK_Beard_BW", "TRYK_Beard_Gr", "TRYK_Beard_BK2", \
"TRYK_Beard2","TRYK_Beard_BW2","TRYK_Beard_Gr2","TRYK_Beard_BK3","TRYK_Beard3","TRYK_Beard_Gr2","TRYK_Beard_BW3", \
"TRYK_Beard_Gr3","TRYK_Beard_BK4","TRYK_Beard4","TRYK_Beard_BW4","TRYK_Beard_Gr4"
				   
//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Rifle and Weapons Squad Lead
case "O_LEAD": {
	[O_leader_headgear] call FNC_AddItem;
	[O_leader_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_leader_beard] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	
	
	//[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

case "O_Med": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,1,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	
	//backpack
	["TRYK_B_Alicepack"] call FNC_AddItem;
	["ACE_fieldDressing",15,"backpack"] call FNC_AddItem; 
	["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",12,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",12,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",3,"backpack"] call FNC_AddItem; 


	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

case "O_IED": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 
	["ACE_Cellphone",1,"vest"] call FNC_AddItem; 
	
	//backpack
	["B_Carryall_khk"] call FNC_AddItem;
	["IEDUrbanBig_Remote_Mag",1,"backpack"] call FNC_AddItem;
	["IEDLandBig_Remote_Mag",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

case "O_MG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	//Uniform
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_MGmag,1,"vest"] call FNC_AddItem; 
	
	//backpack
	["TRYK_B_Alicepack"] call FNC_AddItem;
	[O_MGmag,3,"backpack"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_MG] call FNC_AddItem;
};

case "O_AMG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 

	//backpack
	["TRYK_B_Alicepack"] call FNC_AddItem;
	[O_MGmag,5,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

case "O_SVD": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	["B_FieldPack_oli"] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_svdmag,6,"vest"] call FNC_AddItem; 
	["RH_20Rnd_32cal_vz61",4,"vest"] call FNC_AddItem; 
	["TRYK_H_ghillie_top",1,"backpack"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_svd] call FNC_AddItem;
	["rhs_acc_pso1m2"] call FNC_AddItem;
	["RH_vz61"] call FNC_AddItem;
};

case "O_AT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 

	//backpack
	[O_RPG_Backpack] call FNC_AddItem;
	[O_OG7,2,"backpack"] call FNC_AddItem;
	[O_VL,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_RPG] call FNC_AddItem;
};

case "O_AAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,6,"vest"] call FNC_AddItem; 

	//backpack
	[O_RPG_Backpack] call FNC_AddItem;
	[O_OG7,2,"backpack"] call FNC_AddItem;
	[O_TBG,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
};

