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
#define B_rifle "ruPal_rhs_weap_ak74m_camo"
#define B_ar "rhs_weap_m249_pip_L_vfg"
#define B_glrifle "RHS_WEAP_MK18_M320"
#define B_dmr "rhs_weap_m16a4_carryhandle_grip_pmag"
#define B_sniper "hlc_rifle_psg1"
#define B_smg "hlc_smg_mp5n"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "RH_python"

//Launcher
#define B_rat "tf47_at4_heat"
#define B_mat "tf47_m3maaws_optic"

//Ammo
#define B_riflemag "rhs_30Rnd_545x39_AK"
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
#define B_samag "RH_6Rnd_357_Mag"

//Grenades
#define B_frag "rhs_mag_rgd5"
#define B_stun "rhs_ammo_m84"
#define B_smokewhite "rhs_mag_rdg2_white"
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
["ACE_packingBandage",2,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
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
#define B_longrange "ACRE_PRC152"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

	//Uniform              
#define B_default_uniform "rhs_chdkz_uniform_1"

//Headgear
#define B_leader_headgear_r "rhsusf_ach_helmet_ucp", "rhsusf_ach_helmet_ESS_ucp"
#define B_default_headgear "TRYK_H_Booniehat_WOOD"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
				   
//Backpack
#define B_default_backpack "TRYK_B_BAF_BAG_CYT"
#define B_Med_backpack "TRYK_B_Medbag_ucp"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "rhsusf_assault_eagleaiii_ucp_engineer"
				   
//Vests
#define B_vest_default "TAC_LBT_H_OD"
#define B_vest_grenadier "TAC_EI_RRV28L_OD"
#define B_vest_saw "TAC_LBT_H3_OD"
#define B_vest_medic "TAC_LBT_H3_OD"
#define B_vest_engineer "TAC_LBT_H_OD"
#define B_vest_sniper "TAC_LBT_H_OD"
#define B_vest_vehiclecrew_commander "TAC_LBT_H_OD"
#define B_vest_vehiclecrew "TAC_LBT_H_OD"
#define B_vest_leader "TAC_LBT_HL3_OD"
#define B_vest_ftl_leader "TAC_EI_RRV28L_OD"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses_r "TRYK_TAC_SET_MESH", "TRYK_TAC_EARMUFF_Gs", "TRYK_TAC_EARMUFF_SHADE_Gs"
				   
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Rifle and Weapons Squad Lead
case "B_PC": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TAC_EI_RRV21_OD"] call FNC_AddItem;
	["TAC_BP_LBT_HB_OD"] call FNC_AddItem;

	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	 B_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",2,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag,3,"backpack"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
};

case "B_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	["TRYK_B_Carryall_wood"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",2,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,8,"vest"] call FNC_AddItem; 
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 

	
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
	["ACE_personalAidKit",5,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;

	//Weapons
	["rhs_weap_ak74m_camo_folded"] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TAC_EI_RRV1_OD"] call FNC_AddItem;
	["TAC_BP_HSG_GLP_OD"] call FNC_AddItem;

	
	//Uniform
	["rhs_30Rnd_762x39mm",3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	
	//Vest
	["rhs_30Rnd_762x39mm",6,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	["rhs_VOG25",12,"backpack"] call FNC_AddItem;
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["rhs_weap_akm_gp25"] call FNC_AddItem;
	[B_Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
};

//Rifle Squad
case "B_FTL": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TAC_EI_RRV1_OD"] call FNC_AddItem;
	["TAC_BP_HSG_GLP_OD"] call FNC_AddItem;

	
	//Uniform
	["rhs_30Rnd_762x39mm",3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	["rhs_mag_rgd5",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	
	//Vest
	["rhs_30Rnd_762x39mm",6,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;
	["rhs_VOG25",12,"backpack"] call FNC_AddItem;
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["rhs_weap_akm_gp25"] call FNC_AddItem;
	[B_Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
};

case "B_RIF": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;

	
	//Uniform
	[B_riflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	["rhs_mag_rgd5",1,"vest"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
};

case "B_RPG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	["rhs_rpg_empty"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	["rhs_rpg7_OG7V_mag",1,"backpack"] call FNC_AddItem; 
	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;

};

case "B_RPGA": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	["rhs_rpg_empty"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	["rhs_rpg7_OG7V_mag",2,"backpack"] call FNC_AddItem; 
	["rhs_rpg7_PG7VL_mag",1,"backpack"] call FNC_AddItem; 
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_Binoculars] call FNC_AddItem;
};

case "B_MG": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TAC_LBT_H3_OD"] call FNC_AddItem;
	["TRYK_B_Alicepack"] call FNC_AddItem;
	

	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["hlc_75Rnd_762x39_m_rpk",2,"vest"] call FNC_AddItem; 
	["hlc_75Rnd_762x39_m_rpk",8,"backpack"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["hlc_rifle_rpk"] call FNC_AddItem;
};


case "B_DR": {
	["rhs_tsh4"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;

	
	//Uniform
	["rhsusf_mag_7x45acp_MHP",3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	["rhs_mag_rgd5",1,"vest"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	
	//Vest
	["rhsusf_mag_7x45acp_MHP",2,"vest"] call FNC_AddItem; 
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["rhsusf_weap_m1911a1"] call FNC_AddItem;
};
