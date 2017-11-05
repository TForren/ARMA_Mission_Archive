//Primary
#define B_rifle "NAM_M16_30"


//Secondary
#define B_sidearm "rhsusf_weap_m9"

//Launcher
#define B_rat "rhs_weap_M136"


//Ammo
#define B_riflemag "30Rnd_556x45_Stanag"


#define B_glhe "rhs_mag_M441_HE"

#define B_samag "rhsusf_mag_15Rnd_9x19_FMJ"


//Grenades
#define B_frag "CUP_HandGrenade_L109A2_HE"
#define B_smokew "rhs_mag_an_m8hc"

#define B_flarered "ace_HandFlare_Red"
#define B_flaregreen "ace_HandFlare_Green"
#define B_flarewhite "ace_HandFlare_White"
#define B_flareyellow "ace_HandFlare_Yellow"

//=== MISC ===


// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",8,"uniform"] call FNC_AddItem; \
["ACE_morphine",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",5,"uniform"] call FNC_AddItem; \
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
#define B_rangetable "ACE_RangeTable_82mm"

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
#define B_default_uniform "UNS_ARMY_BDU_25thIDcpt"

//Headgear
#define B_default_headgear "UNS_M1_1A","UNS_M1_2A","UNS_M1_4A","UNS_M1_5A","UNS_M1_6A","UNS_M1_7A","UNS_M1_8A","UNS_M1_9A", \
"UNS_Headband_ED", "UNS_Headband_OD", "UNS_Bandana_OD"

//Backpack
#define B_default_backpack "UNS_Alice_F5"

//Vests
#define B_vest_default "UNS_M1956_A9"
#define B_vest_grenadier "UNS_M1956_A8"
#define B_vest_saw "UNS_M1956_A6"
#define B_vest_medic "UNS_M1956_A7"
#define B_vest_leader "UNS_M1956_A2"
#define B_vest_ftl_leader "UNS_M1956_A2"

				   
//Face
#define B_glasses "UNS_Bullets", "UNS_Peace", "UNS_Scarf_OD", "UNS_Towel", "UNS_Scarf_Blue", "UNS_Scarf_Red"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Platoon

//Platoon Commander
case "B_PC": {
	["UNS_Boonie_ODF"] call FNC_AddItemRandom;
	["UNS_ARMY_BDU_25thID66sgm"] call FNC_AddItem;
	["UNS_M1956_A10"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_ARMY_RTO"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["CUP_7Rnd_45ACP_1911",3,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["SmokeShellGreen",4,"backpack"] call FNC_AddItem;
	["SmokeShellRed",4,"backpack"] call FNC_AddItem;
	["SmokeShell",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["CUP_hgun_Colt1911"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
	["UNS_Boonie_ODF"] call FNC_AddItem;
	["UNS_ARMY_BDU_25thID66sgm"] call FNC_AddItem;
	["UNS_M1956_A10"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_ARMY_RTO"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["CUP_7Rnd_45ACP_1911",3,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["SmokeShellGreen",4,"backpack"] call FNC_AddItem;
	["SmokeShellRed",4,"backpack"] call FNC_AddItem;
	["SmokeShell",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["CUP_hgun_Colt1911"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};


//Platoon Medic
case "B_MED": {
	[B_default_headgear] call FNC_AddItemRandom;
	["UNS_ARMY_BDU_25thIDFlakcpl"] call FNC_AddItem;
	["UNS_M1956_A4"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_ARMY_MED"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	["ACE_elasticBandage",14,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",12,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",12,"backpack"] call FNC_AddItem; 
	["ACE_morphine",10,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",8,"backpack"] call FNC_AddItem; 
	["ACE_atropine",8,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",5,"backpack"] call FNC_AddItem; 
	["CUP_7Rnd_45ACP_1911",3,"backpack"] call FNC_AddItem;
	["SmokeShell",3,"backpack"] call FNC_AddItem;
	["UNS_Band_H",5,"backpack"] call FNC_AddItem;
	["UNS_Band_L",5,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["CUP_hgun_Colt1911"] call FNC_AddItem;


};

//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_default_headgear] call FNC_AddItemRandom;
	["UNS_ARMY_BDU_25thID66spc5"] call FNC_AddItem;
	["UNS_M1956_A4"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_ARMY_RTO"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["CUP_7Rnd_45ACP_1911",3,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["SmokeShellGreen",4,"backpack"] call FNC_AddItem;
	["SmokeShellRed",4,"backpack"] call FNC_AddItem;
	["SmokeShell",4,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["CUP_hgun_Colt1911"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_default_headgear] call FNC_AddItemRandom;
	["UNS_ARMY_BDU_25thID66pfc"] call FNC_AddItem;
	["UNS_M1956_A10"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F8"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["CUP_7Rnd_45ACP_1911",3,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["SmokeShellGreen",2,"backpack"] call FNC_AddItem;
	["SmokeShellRed",2,"backpack"] call FNC_AddItem;
	["SmokeShell",3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["CUP_hgun_Colt1911"] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F8"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["NAM_M72"] call FNC_AddItem;
	["M72",1,"backpack"] call FNC_AddItem;
	
};

//Rifleman
case "B_RIF": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F8"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	[B_riflemag,5,"backpack"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

	
};

//Grenadier
case "B_GRE": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	["UNS_M1956_A8"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F9"] call FNC_AddItem;
	
	//Uniform
	["30Rnd_556x45_Stanag",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	["30Rnd_556x45_Stanag",6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	["1Rnd_HE_Grenade_shell",20,"backpack"] call FNC_AddItem;
	
	//Weapons
	["NAM_M16_GL_30"] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	["UNS_M1956_M15"] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F6"] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	
	//Vest
	["M60_Magazine",2,"vest"] call FNC_AddItem;
	[B_frag,2,"vest"] call FNC_AddItem;
	
	//Backpack
	["M60_Magazine",6,"backpack"] call FNC_AddItem;
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["NAM_M60"] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AAR": {
	[B_default_headgear] call FNC_AddItemRandom;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItemRandom;
	["UNS_Alice_F8"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_frag,2,"vest"] call FNC_AddItem;
	
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem;
	[B_riflemag,2,"backpack"] call FNC_AddItem; 
	["M60_Magazine",6,"backpack"] call FNC_AddItem;
	["ACE_Sandbag_empty",15,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
};

