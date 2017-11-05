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


// CE equipment - what everyone should have
#define O_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",1,"uniform"] call FNC_AddItem; \
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
#define O_default_uniform_r "rhs_chdkz_uniform_3", "rhs_chdkz_uniform_5", "rhs_chdkz_uniform_4", \
"rhs_chdkz_uniform_2", "rhs_chdkz_uniform_1"

#define O_leader_uniform_r "TRYK_ZARATAKI", "TRYK_ZARATAKI2", "TRYK_ZARATAKI3"

//Headgear
#define O_default_headgear_r "LOP_H_Turban_mask", "LOP_H_Turban", "TRYK_H_pakol2", "LOP_H_Pakol"
				   
//Backpack
#define O_default_backpack "TRYK_O_Alicepack"
#define O_RPG_Backpack "rhs_rpg_empty"

				   
//Vests
#define O_vest_default "TRYK_LOC_AK_chestrig_OD","TRYK_LOC_AK_chestrig_TAN"
				   
//Face
#define O_leader_beard "TRYK_Beard_Gr4"
#define o_glasses_r "G_Bandanna_shades", "rhs_balaclava", "rhs_balaclava1_olive", "G_Balaclava_oli"
				   
#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Rifle and Weapons Squad Lead
case "O_LEAD": {
	//[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[o_glasses_r] call FNC_AddItemRandom;

	//Uniform
	
	O_ace_default;
	
	[
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_ak74_dirty"]
		],
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_aks74u"]
		],
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_aks74u"]
		]
	] call fnc_AddItemRandom;
	//Vest
	
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;

};

case "O_SVD": {
	//[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[o_glasses_r] call FNC_AddItemRandom;

	O_ace_default;

	[
		[
		["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
		["rhs_acc_pso1m2"],
		["rhs_weap_svdp_wd"]
		],
		[
		["rhs_10Rnd_762x54mmR_7N1",4,"vest"],
		["rhs_acc_pso1m2"],
		["rhs_weap_svdp_wd"]
		],
		[
		["RH_32Rnd_9x19_tec",2,"uniform"],
		["RH_32Rnd_9x19_tec",4,"vest"],
		["RH_tec9"]
		]
	] call fnc_AddItemRandom;
	
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
};

case "O_RIF": {
	//[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[o_glasses_r] call FNC_AddItemRandom;

	O_ace_default;

	[
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_ak74_dirty"]
		],
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_aks74u"]
		],
		[
		["rhs_sidor"],
		["hlc_75Rnd_762x39_m_rpk",2,"vest"],
		["hlc_75Rnd_762x39_m_rpk",4,"backpack"],
		["hlc_rifle_rpk"]
		]
	] call fnc_AddItemRandom;
	
	
	
	
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
};

case "O_RIF2": {
	//[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItemRandom;
	[o_glasses_r] call FNC_AddItemRandom;

	O_ace_default;

	[
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_ak74_dirty"]
		],
		[
		["hlc_30Rnd_545x39_B_AK",2,"uniform"],
		["hlc_30Rnd_545x39_B_AK",4,"vest"],
		["hlc_rifle_aks74u"]
		],
		[
		["RH_30Rnd_9x19_UZI",3,"uniform"],
		["RH_30Rnd_9x19_UZI",4,"vest"],
		["RH_muzi"]
		],
		[
		["RH_20Rnd_32cal_vz61",3,"uniform"],
		["RH_20Rnd_32cal_vz61",4,"vest"],
		["RH_vz61"]
		],
		[
		["RH_32Rnd_9x19_tec",2,"uniform"],
		["RH_32Rnd_9x19_tec",4,"vest"],
		["RH_tec9"]
		]
	] call fnc_AddItemRandom;
	
	[O_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
};
