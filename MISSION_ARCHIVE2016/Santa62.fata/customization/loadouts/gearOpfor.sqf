// Info: Afghani Militia
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST

//Almost all loadouts have randomized weapons ranging from enfields to RPKs. 
//Specific roles will always have appropriate weapons (ex. MGs will always have MGs, leaders won't ever have MGs)

//========================Equipment Definitions========================
//=== Weapons ===
#define I_rifle "CUP_arifle_Sa58V"
#define I_riflemag "CUP_30Rnd_Sa58_M_TracerR"

#define I_rifleGL ""
#define I_rifleGLmag "rhs_VOG25"

#define I_MG "rhs_weap_pkm"
#define I_MGmag "rhs_100Rnd_762x54mmR"

#define I_svd "rhs_weap_svdp_wd"
#define I_svdmag "rhs_10Rnd_762x54mmR_7N1"

#define I_frag "rhs_mag_rgd5"

#define I_RPG "rhs_weap_rpg7"
#define I_OG7 "rhs_rpg7_OG7V_mag"
#define I_TBG "rhs_rpg7_TBG7V_mag"
#define I_VL "rhs_rpg7_PG7VL_mag"


// CE equipment - what everyone should have
#define I_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
				  
//ACE
#define Bandage "ACE_fieldDressing"
#define I_morphine "ACE_morphine"
#define I_epipen "ACE_epinephrine"
#define I_ace_sparebarrel "ACE_SpareBarrel"
#define I_ace_defuse "ACE_DefusalKit"
#define I_ace_firing_device "ACE_Clacker"
#define I_ace_cabletie "ACE_CableTie"
#define I_ace_wirecutters "ACE_wirecutter"
#define I_carkeys "ACE_key_west"
#define I_carpick "ACE_key_lockpick"
				   
//Double Misc
#define I_toolkit "ToolKit"
#define I_explosive "DemoCharge_Remote_Mag"
#define I_at_mine "ATMine_Range_Mag"
#define I_ap_mine "APERSBoundingMine_Range_Mag"
#define I_minedetector "MineDetector"
#define Binoculars "Binocular"
#define I_range "ACE_Vector"
				   
//Radio
#define I_longrange "ACRE_PRC152"
#define I_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform 12       
#define I_default_uniform_r "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"


//Headgear 30
#define I_default_headgear_r "CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", \
"CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06", "CUP_H_TKI_Lungee_01", \
"CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03", "CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Lungee_06", \
"CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_02", \
"CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", \
"CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define I_headgear_medic_r "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define I_leader_headgear "CUP_H_NAPA_Fedora"
#define I_pilot_headgear "CUP_H_TK_PilotHelmet"
#define I_aircrew_headgear "CUP_H_TK_TankerHelmet"

//Backpack
#define I_backpack "CUP_B_CivPack_WDL"
#define I_RPG_Backpack "rhs_rpg_empty"
#define I_Med_Backpack "CUP_B_CivPack_WDL"

//Vests 24
#define I_vest_default_r "CUP_V_OI_TKI_Jacket1_04", "CUP_V_OI_TKI_Jacket1_01", "CUP_V_OI_TKI_Jacket1_05", "CUP_V_OI_TKI_Jacket1_02", \
"CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket4_04", "CUP_V_OI_TKI_Jacket4_05", "CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket4_06", \
"CUP_V_OI_TKI_Jacket2_06", "CUP_V_OI_TKI_Jacket3_05", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket3_01", "CUP_V_OI_TKI_Jacket2_04", \
"CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_01", "CUP_V_OI_TKI_Jacket3_04", "CUP_V_OI_TKI_Jacket3_02", "CUP_V_OI_TKI_Jacket3_03", \
"CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket2_02", "CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket2_05", "CUP_V_OI_TKI_Jacket2_01"

//Face 3
#define I_glasses_r "CUP_TK_NeckScarf", "CUP_FR_NeckScarf", "CUP_FR_NeckScarf2"


//=== EQUIPMENT ===
#define I_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define I_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Rifle and Weapons Squad Lead
case "I_WARLORD": {
	[I_leader_headgear] call FNC_AddItem;
	["CUP_O_TKI_Khet_Partug_02"] call FNC_AddItem;
	["CUP_V_OI_TKI_Jacket3_02"] call FNC_AddItem;
	["CUP_TK_NeckScarf"] call FNC_AddItem;
	
	I_ace_default;


	["CUP_30Rnd_762x39_AK47_M",1,"uniform"] call FNC_AddItem;
	["CUP_30Rnd_762x39_AK47_M",3,"vest"]  call FNC_AddItem;
	["CUP_6Rnd_45ACP_M",2,"vest"]  call FNC_AddItem;
	
	["CUP_arifle_AKS_Gold"]  call FNC_AddItem;
	["CUP_hgun_TaurusTracker455_gold"]  call FNC_AddItem;

	
	
	//[I_ace_cabletie,2,"vest"] call FNC_AddItem;
	[I_shortrange,1,"uniform"] call FNC_AddItem; 

	//Assigned Items
	I_default_equipment;
	
};

case "I_SL": {
	[I_leader_headgear] call FNC_AddItem;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	
	I_ace_default;

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
		["CUP_30Rnd_556x45_Stanag",5,"vest"],
		["CUP_arifle_M16A2"]
		],
		[ //FAL
		["CUP_20Rnd_762x51_FNFAL_M",2,"uniform"],
		["CUP_20Rnd_762x51_FNFAL_M",3,"vest"],
		["CUP_arifle_FNFAL_OSW"]
		],
		[ //AKM
		["CUP_30Rnd_762x39_AK47_M",1,"uniform"],
		["CUP_30Rnd_762x39_AK47_M",3,"vest"],
		["CUP_arifle_AKM"]
		],
		[ //AK74U
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",4,"vest"],
		["CUP_arifle_AKS74U"]
		],
		[ //AK74
		["CUP_30Rnd_545x39_AK_M",2,"uniform"],
		["CUP_30Rnd_545x39_AK_M",3,"vest"],
		["CUP_arifle_AKS74"]
		]
	] call fnc_AddItemRandom;
	
	
	//[I_ace_cabletie,2,"vest"] call FNC_AddItem;
	[I_shortrange,1,"uniform"] call FNC_AddItem; 

	//Assigned Items
	I_default_equipment;
	
};

case "I_Med": {
	[I_headgear_medic_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;

	//Uniform
	["CUP_10x_303_M", 2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	
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
	I_default_equipment;
	
	//Weapons
	["CUP_srifle_LeeEnfield"] call FNC_AddItem;
};

case "I_Mech": {
	[I_headgear_medic_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;

	I_ace_default;
	
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
		["CUP_B_CivPack_WDL"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"uniform"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"vest"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",3,"backpack"],
		["CUP_arifle_RPK74_45"]
		],
		[ //RPK Drum
		["CUP_B_CivPack_WDL"],
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"vest"],
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"backpack"],
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
		["CUP_20Rnd_762x51_FNFAL_M",2,"uniform"],
		["CUP_20Rnd_762x51_FNFAL_M",3,"vest"],
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
	
	
	
	//backpack
	["CUP_B_CivPack_WDL"] call FNC_AddItem;
	["ToolKit",1,"backpack"] call FNC_AddItem; 
	["ACE_wirecutter",1,"backpack"] call FNC_AddItem; 
	["ACE_EntrenchingTool",1,"backpack"] call FNC_AddItem; 
	["APERSBoundingMine_Range_Mag",3,"backpack"] call FNC_AddItem; 


	//Assigned Items
	I_default_equipment;

};

case "I_RIF": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;
	
	I_ace_default;
	
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
		["CUP_B_CivPack_WDL"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1,"uniform"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"vest"],
		["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",3,"backpack"],
		["CUP_arifle_RPK74_45"]
		],
		[ //RPK Drum
		["CUP_B_CivPack_WDL"],
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"vest"],
		["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,"backpack"],
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
		["CUP_20Rnd_762x51_FNFAL_M",2,"uniform"],
		["CUP_20Rnd_762x51_FNFAL_M",3,"vest"],
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
	I_default_equipment;
};

case "I_IED": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;
	I_ace_default;

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
	["IEDUrbanBig_Remote_Mag",1,"backpack"] call FNC_AddItem;
	["IEDLandBig_Remote_Mag",1,"backpack"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

};

case "I_MG": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;
	["CUP_B_CivPack_WDL"] call FNC_AddItem;

	//Uniform
	I_ace_default;

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
	I_default_equipment;
};

case "I_AMG": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;

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
	I_default_equipment;

};

case "I_MARK": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;

	I_ace_default;
	
	["ACE_Sandbag_empty"] call FNC_AddItem;
	[
		[ //CZ550
		["CUP_5x_22_LR_17_HMR_M",2,"uniform"],
		["CUP_5x_22_LR_17_HMR_M",3,"vest"],
		["CUP_srifle_CZ550"]
		],
		[ //Enfield
		["CUP_10x_303_M",2,"uniform"],
		["CUP_10x_303_M",3,"vest"],
		["CUP_srifle_LeeEnfield"]
		],
		[ //SVD
		["CUP_10Rnd_762x54_SVD_M",2,"uniform"],
		["CUP_10Rnd_762x54_SVD_M",3,"vest"],
		["CUP_optic_PSO_1"],
		["CUP_srifle_SVD"]
		],
		[ //SVD camo wrap
		["rhs_10Rnd_762x54mmR_7N1",1,"uniform"],
		["rhs_10Rnd_762x54mmR_7N1",3,"vest"],
		["rhs_acc_pso1m2"],
		["rhs_weap_svdp_wd"]
		]
	] call fnc_AddItemRandom;

	//Assigned Items
	I_default_equipment;
	
};

case "I_AT": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;


	I_ace_default;

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
	[I_RPG_Backpack] call FNC_AddItem;
	[I_OG7,2,"backpack"] call FNC_AddItem;
	[I_VL,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;

	[I_RPG] call FNC_AddItem;
};

case "I_AAT": {
	[I_default_headgear_r] call FNC_AddItemRandom;
	[I_default_uniform_r] call FNC_AddItemRandom;
	[I_vest_default_r] call FNC_AddItemRandom;
	[I_glasses_r] call FNC_AddItemRandom;

	
	I_ace_default;
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
	[I_RPG_Backpack] call FNC_AddItem;
	[I_OG7,2,"backpack"] call FNC_AddItem;
	[I_TBG,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;
	

};