// Info: Boko Haram - SPECIAL LOADOUT
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers/Rifleman

//Infantry Loadouts
//I_SPG_GUNNER - SPG Gunner
//I_SPG_ASST - SPG Asst
//I_WARLORD - Warlord

//=== Weapons ===

// Primary

//Weapons
#define O_m16a1 "RH_M16a1"
#define O_m16a1mag "rhs_mag_30Rnd_556x45_Mk318_Stanag"

#define O_fal "UK3CB_BAF_L1A1"
#define O_falmag "UK3CB_BAF_762_20Rnd"

#define O_akm "rhs_weap_akm"
#define O_ak47 "hlc_rifle_ak47"
#define O_akmag "rhs_30Rnd_762x39mm"

#define I_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

// CE equipment - what everyone should have
//["MOLOTOV_MAG",1,"uniform"] call FNC_AddItem;
#define O_ace_default \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
//=== Clothes ===

//Uniform              
#define O_default_uniform_r "LOP_U_BH_Fatigue_CHOCO","LOP_U_BH_Fatigue_CHOCO_TRI","LOP_U_BH_Fatigue_CHOCO_ACU","LOP_U_BH_Fatigue_CHOCO_FWDL","LOP_U_BH_Fatigue_CHOCO_LIZ","LOP_U_BH_Fatigue_CHOCO_M81","LOP_U_BH_Fatigue_ACU","LOP_U_BH_Fatigue_ACU_TRI","LOP_U_BH_Fatigue_ACU_CHOCO","LOP_U_BH_Fatigue_ACU_FWDL","LOP_U_BH_Fatigue_ACU_LIZ","LOP_U_BH_Fatigue_ACU_M81","LOP_U_BH_Fatigue_FWDL","LOP_U_BH_Fatigue_FWDL_TRI","LOP_U_BH_Fatigue_FWDL_CHOCO","LOP_U_BH_Fatigue_FWDL_ACU","LOP_U_BH_Fatigue_FWDL_LIZ","LOP_U_BH_Fatigue_FWDL_M81","LOP_U_BH_Fatigue_GUE_TRI_TAN","LOP_U_BH_Fatigue_GUE_FWDL","LOP_U_BH_Fatigue_GUE_M81_OLV","LOP_U_BH_Fatigue_M81","LOP_U_BH_Fatigue_M81_TRI","LOP_U_BH_Fatigue_M81_CHOCO","LOP_U_BH_Fatigue_M81_ACU","LOP_U_BH_Fatigue_M81_FWDL","LOP_U_BH_Fatigue_M81_LIZ"

#define O_warlord_uniform_r "LOP_U_BH_Fatigue_OFI_TRI","LOP_U_BH_Fatigue_OFI_ACU","LOP_U_BH_Fatigue_OFI_FWDL","LOP_U_BH_Fatigue_OFI_LIZ","LOP_U_BH_Fatigue_OFI_M81"

#define O_vest_r "V_Chestrig_blk","V_TacVest_blk","V_BandollierB_blk","V_Chestrig_oli"

#define O_headgear_r "LOP_H_Shemag_BLK","H_ShemagOpen_khk","H_ShemagOpen_tan","LOP_H_Shemag_GRE","H_Shemag_olive","LOP_H_Shemag_BLU","LOP_H_Turban","H_Hat_Pagri_B","H_Hat_Pagri_C","H_Hat_Pagri","H_Hat_Turban_A","H_Hat_Turban_C","H_Hat_Turban_D"
#define O_warlord_hat "LOP_H_Cowboy_hat"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_spg_gun_bag "RHS_SPG9_Gun_Bag"
#define O_spg_tripod_bag "RHS_SPG9_Tripod_Bag"

case "I_LEAD": {
	[O_default_uniform_r] call FNC_AddItemRandom;  
	[O_vest_r] call FNC_AddItemRandom;  
	[O_warlord_hat] call FNC_AddItem;
	["ACRE_PRC148"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
	O_ace_default 
	
	//Assigned Items
	
	[
   
	[
	[O_akmag,1],
	[O_akm],
	[O_akmag,3,"vest"]
	],[30],
   
	[
	[O_m16a1mag,1],
	[O_m16a1],
	[O_m16a1mag,6,"vest"]
	],[30],
	
	[
	[O_akmag,1],
	[O_ak47],
	[O_akmag,3,"vest"]
	],[30],
	
	[
	[O_falmag,1],
	[O_fal],
	[O_falmag,4,"vest"]
	],[10]
		   
	] call FNC_AddItemRandomPercent;
	
	I_default_equipment;
	
};
case "I_SPG_GUNNER": {
	[O_default_uniform_r] call FNC_AddItemRandom;  
	[O_vest_r] call FNC_AddItemRandom;  
	[O_headgear_r] call FNC_AddItemRandom;
	[O_spg_gun_bag] call FNC_AddItem;
	
	O_ace_default 
	
	//Assigned Items
	
	[
   
	[
	[O_akmag,1],
	[O_akm],
	[O_akmag,3,"vest"]
	],[30],
   
	[
	[O_m16a1mag,1],
	[O_m16a1],
	[O_m16a1mag,6,"vest"]
	],[30],
	
	[
	[O_akmag,1],
	[O_ak47],
	[O_akmag,3,"vest"]
	],[30],
	
	[
	[O_falmag,1],
	[O_fal],
	[O_falmag,4,"vest"]
	],[10]
		   
	] call FNC_AddItemRandomPercent;
	I_default_equipment;
	
};

case "I_SPG_ASST": {
	[O_default_uniform_r] call FNC_AddItemRandom;  
	[O_vest_r] call FNC_AddItemRandom;  
	[O_headgear_r] call FNC_AddItemRandom;
	["ACRE_PRC148"] call FNC_AddItem;
	[O_spg_tripod_bag] call FNC_AddItem;
	
	O_ace_default 
	
	//Assigned Items
	
	[
   
	[
	[O_akmag,1],
	[O_akm],
	[O_akmag,3,"vest"]
	],[30],
   
	[
	[O_m16a1mag,1],
	[O_m16a1],
	[O_m16a1mag,6,"vest"]
	],[30],
	
	[
	[O_akmag,1],
	[O_ak47],
	[O_akmag,3,"vest"]
	],[30],
	
	[
	[O_falmag,1],
	[O_fal],
	[O_falmag,4,"vest"]
	],[10]
		   
	] call FNC_AddItemRandomPercent;
	
	I_default_equipment;
	
};