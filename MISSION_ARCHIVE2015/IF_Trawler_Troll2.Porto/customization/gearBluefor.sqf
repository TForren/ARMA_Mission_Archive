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


//Primary
#define B_rifle "rhs_weap_m4a1_grip"
#define B_ar "rhs_weap_m249_pip_S_vfg"
#define B_glrifle "rhs_weap_m4a1_m203"
#define B_dmr "hlc_rifle_M21"
#define B_sniper "hlc_rifle_psg1"
#define B_smg "hlc_smg_mp5n"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "RH_m9"

//Launcher
#define B_rat "tf47_at4_heat"
#define B_mat "tf47_m3maaws_optic"

//Attachments
#define B_rifle_scope "rhsusf_acc_eotech_552"
#define B_holosight "FHQ_optic_HWS"
#define B_holosight_x4 "FHQ_optic_HWS_G33"
#define B_mrco "rhsusf_acc_ACOG3"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_aimpoint "rhsusf_acc_compm4"
#define B_sniper_scope "rhsusf_acc_LEUPOLDMK4"
#define B_marksman_scope "hlc_optic_artel_m14"
#define B_m4_suppressor "muzzle_snds_H"
#define B_m249_supressor "muzzle_snds_H_MG"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15_light"
#define B_mg_laser "rhsusf_acc_anpeq15A"
#define B_mat_optic "tf47_optic_m3maaws"
#define B_m4mb "rhsusf_acc_SFMB556"

//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100rnd_762x51"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_smgmag "hlc_30Rnd_9x19_B_MP5"
#define B_dmrMag "hlc_20Rnd_762x51_T_M14"
#define B_snipermag "hlc_20rnd_762x51_b_G3"
#define B_ratmag "tf47_at4_m_HEAT"
#define B_matheat "tf47_m3maaws_HEAT"
#define B_mathedp "tf47_m3maaws_hedp"
#define B_mathe "tf47_m3maaws_he"
#define B_matsmoke "tf47_m3maaws_smoke"
#define B_matillum "tf47_m3maaws_illum"
#define B_glhe "rhs_mag_M441_HE"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "rhs_mag_m585_white"
#define B_glsmoke "rhs_mag_m714_white"
#define B_samag "RH_15Rnd_9x19_M9"

//Grenades
#define B_frag "rhs_mag_m67"
#define B_stun "rhs_ammo_m84"
#define B_smokewhite "smokeshell"
#define B_smokegreen "smokeshellgreen"
#define B_smokered "smokeshellred"
#define B_flarered "ace_HandFlare_Red"
#define B_flaregreen "ace_HandFlare_Green"
#define B_flarewhite "ace_HandFlare_White"
#define B_flareyellow "ace_HandFlare_Yellow"
#define B_hot "rhs_mag_an_m14_th3"

				   
//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define B_ace_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",3,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",1,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["Chemlight_green",1,"uniform"] call FNC_AddItem; \
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
#define B_default_uniform "TRYK_U_B_PCUs"

//Headgear
#define B_leader_headgear "TRYK_H_DELTAHELM_NV"
#define B_default_headgear "TRYK_H_DELTAHELM_NV"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
#define B_sniper_headgear "TRYK_H_ghillie_over"
				   
//Backpack
#define B_default_backpack "TRYK_B_Kitbag_blk"
#define B_Med_backpack "TRYK_B_Medbag_OD"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
				   
//Vests
#define B_vest_default "TRYK_V_ArmorVest_Delta2"
#define B_vest_grenadier "TRYK_V_ArmorVest_Delta2"
#define B_vest_saw "TRYK_V_ArmorVest_Delta2"
#define B_vest_medic "TRYK_V_ArmorVest_Delta2"
#define B_vest_engineer "TRYK_V_ArmorVest_Delta2"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "TRYK_V_ArmorVest_Delta2"
#define B_vest_ftl_leader "TRYK_V_ArmorVest_Delta2"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "G_Balaclava_blk"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemGPS"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;



#define PMC_uniform_r "TRYK_shirts_DENIM_BL", "TRYK_shirts_DENIM_BWH", "TRYK_shirts_DENIM_od", "TRYK_shirts_DENIM_R", "TRYK_shirts_DENIM_RED2", \
"TRYK_shirts_DENIM_WHB", "TRYK_shirts_DENIM_ylb", "TRYK_shirts_DENIM_ylb_Sleeve", "TRYK_shirts_DENIM_BL_Sleeve", "TRYK_shirts_DENIM_BWH_Sleeve", \
"TRYK_shirts_DENIM_R_Sleeve", "TRYK_shirts_DENIM_RED2_Sleeve", "TRYK_shirts_PAD_BL", "TRYK_shirts_BLK_PAD_BL", "TRYK_shirts_OD_PAD_BL", \
"TRYK_shirts_TAN_PAD_BL", "TRYK_shirts_PAD_BLW", "TRYK_shirts_BLK_PAD_BLW", "TRYK_shirts_OD_PAD_BLW", "TRYK_shirts_PAD_BLU3", "TRYK_shirts_BLK_PAD", \
"TRYK_shirts_PAD_RED2", "TRYK_shirts_OD_PAD_RED2"

#define PMC_Rifle "hlc_rifle_ak12"
#define PMC_Rifle_Mag "hlc_30Rnd_545x39_EP_ak"
#define PMC_Rifle_Optic "rhsusf_acc_eotech_552"
#define PMC_Vest_r "TRYK_V_tacv1L_CY", "TRYK_V_tacv1L_OD", "TRYK_V_tacv10_OD", "TRYK_V_tacv10_TN"
#define PMC_headgear_r "TRYK_H_Bandana_wig", "TRYK_H_Bandana_wig_g", "TRYK_H_headset2", "TRYK_H_headsetcap_Glasses", "TRYK_H_headsetcap_od_Glasses", "TRYK_H_headsetcap_blk", \
"TRYK_H_headsetcap_od", "TRYK_H_headsetcap", "TRYK_r_cap_tan_Glasses", "TRYK_r_cap_od_Glasses", "H_Cap_headphones", "H_Cap_oli_hs"

#define PMC_ARMag "rhs_200rnd_556x45_T_SAW"
#define PMC_AR "rhs_weap_m249_pip_L_vfg"
#define PMC_pistol "RH_g17"
#define PMC_pistol_mag "RH_17Rnd_9x19_g17"
#define PMC_goggles_r "TRYK_Shemagh_mesh", "TRYK_Shemagh", "EWK_Shemag_tan_Cig6"

#define PMC_backpack "TRYK_B_Belt_CYT"


//PMCS
case "PMC_SL": {
	[PMC_headgear_r] call FNC_AddItemRandom;
	[PMC_uniform_r] call FNC_AddItemRandom;
	[PMC_Vest_r] call FNC_AddItemRandom;
	[PMC_goggles_r] call FNC_AddItemRandom;
	[PMC_backpack] call FNC_AddItem;

	//Uniform
	//[PMC_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem; 
	//Vest
	[PMC_Rifle_Mag,5,"vest"] call FNC_AddItem; 

	[PMC_Rifle_Mag,5,"backpack"] call FNC_AddItem;


	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[PMC_pistol_mag,3,"vest"] call FNC_AddItem;
	[PMC_Rifle] call FNC_AddItem;
	[PMC_pistol_mag,3,"vest"] call FNC_AddItem;
	[PMC_pistol] call FNC_AddItem;
		
	[B_range] call FNC_AddItem;
	
	//Attachments
	[PMC_Rifle_Optic] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;

};


case "PMC_RIF": {
	[PMC_headgear_r] call FNC_AddItemRandom;
	[PMC_uniform_r] call FNC_AddItemRandom;
	[PMC_Vest_r] call FNC_AddItemRandom;
	[PMC_goggles_r] call FNC_AddItemRandom;
	[PMC_backpack] call FNC_AddItem;
	
	//Uniform
	[PMC_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[PMC_Rifle_Mag,2,"vest"] call FNC_AddItem; 
	
	[PMC_Rifle_Mag,5,"backpack"] call FNC_AddItem;
	
	[B_frag,2,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[PMC_Rifle] call FNC_AddItem;
	[PMC_pistol_mag,3,"vest"] call FNC_AddItem;
	[PMC_pistol] call FNC_AddItem;

	[PMC_Rifle_Optic] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
};

case "PMC_MED": {
	[PMC_headgear_r] call FNC_AddItemRandom;
	[PMC_uniform_r] call FNC_AddItemRandom;
	[PMC_Vest_r] call FNC_AddItemRandom;
	[PMC_goggles_r] call FNC_AddItemRandom;
	["TRYK_B_Kitbag_Base"] call FNC_AddItem;
	
	//Uniform
	[PMC_Rifle_Mag,1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[PMC_Rifle_Mag,5,"vest"] call FNC_AddItem; 
	[PMC_Rifle_Mag,2,"vest"] call FNC_AddItem; 

	[B_frag,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	["ACE_fieldDressing",15,"backpack"] call FNC_AddItem; 
	["ACE_elasticBandage",20,"backpack"] call FNC_AddItem; 
	["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
	["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
	["ACE_morphine",12,"backpack"] call FNC_AddItem; 
	["ACE_epinephrine",12,"backpack"] call FNC_AddItem; 
	["ACE_atropine",10,"backpack"] call FNC_AddItem; 
	["ACE_tourniquet",5,"backpack"] call FNC_AddItem; 
	["ACE_salineIV_500",6,"backpack"] call FNC_AddItem; 
	["ACE_plasmaIV_500",6,"backpack"] call FNC_AddItem; 
	["ACE_personalAidKit",3,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[PMC_Rifle] call FNC_AddItem;
	[PMC_pistol_mag,3,"vest"] call FNC_AddItem;
	[PMC_pistol] call FNC_AddItem;
	[PMC_Rifle_Optic] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;

};


case "PMC_GRE": {
	[PMC_headgear_r] call FNC_AddItemRandom;
	[PMC_uniform_r] call FNC_AddItemRandom;
	[PMC_Vest_r] call FNC_AddItemRandom;
	[PMC_goggles_r] call FNC_AddItemRandom;
	["TRYK_B_Kitbag_Base"] call FNC_AddItem;
	
	//Uniform
	["hlc_10rnd_12g_buck_S12",1,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["hlc_10rnd_12g_buck_S12",5,"backpack"] call FNC_AddItem; 
	["hlc_10rnd_12g_buck_S12",3,"vest"] call FNC_AddItem; 
	[B_frag,4,"vest"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["hlc_rifle_saiga12k"] call FNC_AddItem;
		["6Rnd_RedSignal_F",3, "backpack"] call FNC_AddItem;
		["hgun_Pistol_Signal_F"] call FNC_AddItem;
	
	//Extra Mag
	["hlc_10rnd_12g_buck_S12",2,"backpack"] call FNC_AddItem;
	["hlc_optic_kobra"] call FNC_AddItem;
	
};

case "PMC_AR": {
	[PMC_headgear_r] call FNC_AddItemRandom;
	[PMC_uniform_r] call FNC_AddItemRandom;
	[PMC_Vest_r] call FNC_AddItemRandom;
	[PMC_goggles_r] call FNC_AddItemRandom;
	["B_Carryall_oli"] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	//
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[PMC_ARMag,1,"vest"] call FNC_AddItem; 
	["RH_19Rnd_9x19_g18",1,"uniform"] call FNC_AddItem; 
	["RH_19Rnd_9x19_g18",1,"vest"] call FNC_AddItem; 
	//Backpack
	[PMC_ARMag,5,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[PMC_AR] call FNC_AddItem;
		["RH_g18"] call FNC_AddItem;
	//Extra Mag
	[PMC_ARMag,1,"vest"] call FNC_AddItem; 
	
	[PMC_Rifle_Optic] call FNC_AddItem;
	[B_ir_laser] call FNC_AddItem;
	
};

case "PMC_PIL": {
	["TRYK_U_B_Denim_T_BK"] call FNC_AddItem;
	["TRYK_V_tacSVD_OD"] call FNC_AddItem;
	["TRYK_B_Belt_CYT"] call FNC_AddItem;
	["rhsusf_hgu56p"] call FNC_AddItem;
	["EWK_Shemag_tan_Cig6"] call FNC_AddItem;
	
	//Uniform
	B_ace_default;
	//
	
	//Vest
	["rhsusf_mag_17Rnd_9x19_JHP",3,"vest"] call FNC_AddItem; 
	["rhsusf_mag_17Rnd_9x19_JHP",1,"vest"] call FNC_AddItem; 
	["rhsusf_mag_17Rnd_9x19_JHP",2,"backpack"] call FNC_AddItem; 
	
	//Backpack
	["rhsusf_mag_17Rnd_9x19_JHP",5,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["rhsusf_weap_glock17g4"] call FNC_AddItem;	

	
};

