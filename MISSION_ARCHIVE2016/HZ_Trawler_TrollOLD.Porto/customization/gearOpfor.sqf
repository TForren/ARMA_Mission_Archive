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
#define O_rifle1 "CUP_arifle_Sa58V"
#define O_rifle1mag "CUP_30Rnd_Sa58_M_TracerR"

#define O_rifleGL "hlc_rifle_akmgl"
#define O_rifleGLmag "rhs_VOG25"

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
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
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

//Uniform 12       
#define O_default_uniform_r "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"


//Headgear 30
#define O_default_headgear_r "CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", \
"CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06", "CUP_H_TKI_Lungee_01", \
"CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03", "CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Lungee_06", \
"CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_02", \
"CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", \
"CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define O_headgear_medic_r "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define O_leader_headgear "CUP_H_TK_Lungee"
#define O_pilot_headgear "CUP_H_TK_PilotHelmet"
#define O_aircrew_headgear "CUP_H_TK_TankerHelmet"

//Backpack
#define O_backpack "CUP_B_CivPack_WDL"
#define O_RPG_Backpack "rhs_rpg_empty"
#define O_Med_Backpack "CUP_B_CivPack_WDL"

//Vests 24
#define O_vest_default_r "CUP_V_OI_TKI_Jacket1_04", "CUP_V_OI_TKI_Jacket1_01", "CUP_V_OI_TKI_Jacket1_05", "CUP_V_OI_TKI_Jacket1_02", \
"CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket4_04", "CUP_V_OI_TKI_Jacket4_05", "CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket4_06", \
"CUP_V_OI_TKI_Jacket2_06", "CUP_V_OI_TKI_Jacket3_05", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket3_01", "CUP_V_OI_TKI_Jacket2_04", \
"CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_01", "CUP_V_OI_TKI_Jacket3_04", "CUP_V_OI_TKI_Jacket3_02", "CUP_V_OI_TKI_Jacket3_03", \
"CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket2_02", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket2_05", "CUP_V_OI_TKI_Jacket2_01"

//Face 3
#define O_glasses_r "CUP_TK_NeckScarf", "CUP_FR_NeckScarf", "CUP_FR_NeckScarf2"


//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

case "O_WARLORD": {
	["CUP_H_NAPA_Fedora"] call FNC_AddItem;
	["CUP_O_TKI_Khet_Partug_02"] call FNC_AddItem;
	["CUP_V_OI_TKI_Jacket3_02"] call FNC_AddItem;
	["CUP_TK_NeckScarf"] call FNC_AddItem;
	
	O_ace_default;


	["CUP_30Rnd_762x39_AK47_M",1,"uniform"] call FNC_AddItem;
	["CUP_30Rnd_762x39_AK47_M",3,"vest"]  call FNC_AddItem;
	["CUP_6Rnd_45ACP_M",2,"vest"]  call FNC_AddItem;
	
	["CUP_arifle_AKS_Gold"]  call FNC_AddItem;
	["CUP_hgun_TaurusTracker455_gold"]  call FNC_AddItem;

	
	
	//[I_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"uniform"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
};
//Rifle and Weapons Squad Lead
case "O_SL": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	
	O_ace_default;

	[
		[ //SA-58 Fixed Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //SA-58 skeleton Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //M16 A2
		["CUP_30Rnd_556x45_Stanag",2,"uniform"],
		["CUP_30Rnd_556x45_Stanag",3,"vest"],
		["CUP_arifle_M16A2"]
		],
		[ //FAL
		["CUP_20Rnd_762x51_FNFAL_M",1,"uniform"],
		["CUP_20Rnd_762x51_FNFAL_M",2,"vest"],
		["CUP_arifle_FNFAL_OSW"]
		],
		[ //AKM
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",2,"vest"],
		["CUP_arifle_AKM"]
		],
		[ //AK74U
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74U"]
		],
		[ //AK74
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74"]
		]
	] call fnc_AddItemRandom;
	
	
	//[O_ace_cabletie,2,"vest"] call FNC_AddItem;
	[O_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
};

case "O_Med": {
	[O_headgear_medic_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_glasses_r] call FNC_AddItemRandom;

	//Uniform
	["CUP_10x_303_M", 2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	["CUP_10x_303_M",6,"vest"] call FNC_AddItem; 
	
	//backpack
	["CUP_B_CivPack_WDL"] call FNC_AddItem;
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
	["CUP_srifle_LeeEnfield"] call FNC_AddItem;
};

case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_glasses_r] call FNC_AddItemRandom;
	
	O_ace_default;
	
	[
		[ //SA-58 Fixed Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //SA-58 skeleton Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //RPK
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"uniform"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"vest"],
		["CUP_arifle_RPK74_45"]
		],
		[ //RPK Drum
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"vest"],
		["CUP_arifle_RPK74"]
		],
		[ //M16 A2
		["CUP_30Rnd_556x45_Stanag",2,"uniform"],
		["CUP_30Rnd_556x45_Stanag",3,"vest"],
		["CUP_arifle_M16A2"]
		],
		[ //Enfield
		["CUP_10x_303_M",2,"uniform"],
		["CUP_10x_303_M",4,"vest"],
		["CUP_srifle_LeeEnfield"]
		],
		[ //FAL
		["CUP_20Rnd_762x51_FNFAL_M",1,"uniform"],
		["CUP_20Rnd_762x51_FNFAL_M",2,"vest"],
		["CUP_arifle_FNFAL_OSW"]
		],
		[ //AKM
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",2,"vest"],
		["CUP_arifle_AKM"]
		],
		[ //AK74U
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74U"]
		],
		[ //AK74
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74"]
		],
		[ //AKS
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",3,"vest"],
		["CUP_arifle_AKS"]
		]
	] call fnc_AddItemRandom;
	

	//Assigned Items
	O_default_equipment;
};

case "O_IED": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_glasses_r] call FNC_AddItemRandom;
	O_ace_default;

	//Vest
	["ACE_Cellphone",1,"vest"] call FNC_AddItem; 
	
	[
		[ //SA-58 Fixed Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //SA-58 skeleton Stock
		["CUP_30Rnd_Sa58_M_TracerR",2,"uniform"],
		["CUP_30Rnd_Sa58_M_TracerR",2,"vest"],
		["CUP_arifle_Sa58V"]
		],
		[ //M16 A2
		["CUP_30Rnd_556x45_Stanag",2,"uniform"],
		["CUP_30Rnd_556x45_Stanag",3,"vest"],
		["CUP_arifle_M16A2"]
		],
		[ //Enfield
		["CUP_10x_303_M",2,"uniform"],
		["CUP_10x_303_M",4,"vest"],
		["CUP_srifle_LeeEnfield"]
		],
		[ //AKM
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",2,"vest"],
		["CUP_arifle_AKM"]
		],
		[ //AK74U
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74U"]
		],
		[ //AK74
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74"]
		]
	] call fnc_AddItemRandom;
	
	
	//backpack
	["CUP_B_CivPack_WDL"] call FNC_AddItem;
	["IEDLandSmall_Remote_Mag",1,"backpack"] call FNC_AddItem;
	["IEDUrbanSmall_Remote_Mag",2,"backpack"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

};
case "O_MG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_glasses_r] call FNC_AddItemRandom;
	["CUP_B_CivPack_WDL"] call FNC_AddItem;

	//Uniform
	O_ace_default;

	[
		[ //RPK Drum
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"vest"],
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",3,"backpack"],
		["CUP_arifle_RPK74"]
		],
		[ //PKM
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1,"vest"],
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3,"backpack"],
		["CUP_lmg_PKM"]
		]
	] call fnc_AddItemRandom;
	

	//Assigned Items
	O_default_equipment;
};

case "O_AMG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	[O_glasses_r] call FNC_AddItemRandom;

	[
		[ //AK74U
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74U"]
		],
		[ //AK74
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74"]
		],
		[ //AKS
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",3,"vest"],
		["CUP_arifle_AKS"]
		]
	] call fnc_AddItemRandom;

	//backpack
	["CUP_B_CivPack_WDL"] call FNC_AddItem;
	["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;

};

case "O_SVD": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
	["B_FieldPack_oli"] call FNC_AddItem;
	[O_glasses_r] call FNC_AddItemRandom;

	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	[O_frag,2,"vest"] call FNC_AddItem;
	
	//Vest
	[O_svdmag,6,"vest"] call FNC_AddItem; 
	["TRYK_H_ghillie_top",1,"backpack"] call FNC_AddItem; 

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[O_svd] call FNC_AddItem;
	["rhs_acc_pso1m2"] call FNC_AddItem;
};

case "O_AT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default_r] call FNC_AddItemRandom;
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
	[O_vest_default_r] call FNC_AddItemRandom;
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

