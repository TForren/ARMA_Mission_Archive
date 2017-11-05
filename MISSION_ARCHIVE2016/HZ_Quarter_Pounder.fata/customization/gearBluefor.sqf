// Info: BAF Low Tech Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//GRE - Grenadier
//AR - Automatic Rifleman
//RAT - Rifleman (AT)
//LSW - Light Support Weapon
//WSL - Weapons Squad Leader
//WTL - Weapons Team Leader
//MG - Machine Gunner
//MGA - MG Assistant
//AT - AT Specialist
//ATA - AT Assistant
//MT_LEAD Mortar Team Leader
//MT_GN Mortar Gunner
//MT_AGN Mortar Assistant

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "UK3CB_BAF_L85A2","UK3CB_BAF_L85A2_EMAG"
#define B_ar "UK3CB_BAF_L110A2"
#define B_glrifle "UK3CB_BAF_L85A2_UGL"
#define B_lsw "UK3CB_BAF_L86A2"
#define B_sniper "UK3CB_BAF_L115A3"
#define B_smg "UK3CB_BAF_L22"
#define B_mg "UK3CB_BAF_L7A2"

//Secondary
#define B_sidearm "rhsusf_weap_glock17g4"

//Launcher
#define B_rat "rhs_weap_M136"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"
#define B_tpod "UK3CB_BAF_Tripod"

//Attachments
#define B_rifle_scope "UK3CB_BAF_Eotech"
#define B_holosight "UK3CB_BAF_Eotech"
#define B_mrco "UK3CB_BAF_SUSAT"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_aimpoint "rhsusf_acc_compm4"
#define B_sniper_scope "rhsusf_acc_LEUPOLDMK4"
#define B_marksman_scope "hlc_optic_LRT_m14"
#define B_m4_suppressor "muzzle_snds_H"
#define B_m249_supressor "muzzle_snds_H_MG"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15_light"
#define B_mg_laser "rhsusf_acc_anpeq15A"
#define B_mat_optic "tf47_optic_m3maaws"
#define B_m4mb "rhsusf_acc_SFMB556"

//Ammo
#define B_riflemag "UK3CB_BAF_30Rnd"
#define B_riflemag_tr "UK3CB_BAF_30Rnd_T"
#define B_armag "UK3CB_BAF_100Rnd"
#define B_armag2 "UK3CB_BAF_200Rnd"
#define B_mgmag "UK3CB_BAF_75Rnd"
#define B_smgmag "UK3CB_BAF_30Rnd"
#define B_snipermag "UK3CB_BAF_L115A3_Mag"
#define B_matheat "tf47_m3maaws_HEAT"
#define B_mathedp "tf47_m3maaws_hedp"
#define B_mathe "tf47_m3maaws_he"
#define B_matsmoke "tf47_m3maaws_smoke"
#define B_matillum "tf47_m3maaws_illum"
#define B_glhe "1Rnd_HE_Grenade_shell"
#define B_glhedp "UK3CB_BAF_1Rnd_HEDP_Grenade_shell"
#define B_glflare "rhs_mag_m585_white"
#define B_glsmoke "1Rnd_Smoke_Grenade_shell"
#define B_glsmokered "1Rnd_SmokeRed_Grenade_shell"
#define B_samag "rhsusf_mag_17Rnd_9x19_FMJ"

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

//=== MISC ===
			   
//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"
			   
// CE equipment - what everyone should have
#define B_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; \
["ACE_Flashlight_XL50",1,"uniform"] call FNC_AddItem; \
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
#define B_clu "UK3CB_BAF_Javelin_CLU"
			   
//Radio
#define B_longrange "ACRE_PRC148"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

//Uniform              
#define B_default_uniform "UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"
#define B_special_uniform "UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve","UK3CB_BAF_U_CombatUniform_MTP_TShirt","UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM"

//Headgear
#define B_default_headgear "UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"
#define B_vcrew_headgear "UK3CB_BAF_H_CrewHelmet_A"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
#define B_sniper_headgear "TRYK_H_ghillie_over"
			   
//Backpack
#define B_default_backpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A"
#define B_medic_backpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_A","UK3CB_BAF_B_Bergen_MTP_Medic_L_B"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A"
			   
//Vests
#define B_vest_default "UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F"
#define B_vest_grenadier "UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"
#define B_vest_saw "UK3CB_BAF_V_Osprey_MG_A"
#define B_vest_mg "UK3CB_BAF_V_Osprey_MG_B"
#define B_vest_medic "UK3CB_BAF_V_Osprey_Medic_B","UK3CB_BAF_V_Osprey_Medic_C","UK3CB_BAF_V_Osprey_Medic_D"
#define B_vest_engineer "rhsusf_iotv_ocp_repair"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "UK3CB_BAF_V_Osprey_SL_D"
#define B_vest_ftl_leader "UK3CB_BAF_V_Osprey_SL_A","UK3CB_BAF_V_Osprey_SL_B"
#define B_vest_wleader "UK3CB_BAF_V_Osprey_SL_C"
			   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses "UK3CB_BAF_G_Tactical_Clear","UK3CB_BAF_G_Tactical_Black","UK3CB_BAF_G_Tactical_Grey","UK3CB_BAF_G_Tactical_Orange","UK3CB_BAF_G_Tactical_Yellow"
			   
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


//Platoon

//Platoon Commander
case "B_PC": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_samag,3,"vest"] call FNC_AddItem;
	   
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_longrange,1,"vest"] call FNC_AddItem;

	   
		//Assigned Items
		B_leader_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[Binoculars] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
	   
		//Attachments
		[B_mrco] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
	   
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_longrange,1,"vest"] call FNC_AddItem;

	   
		//Assigned Items
		B_leader_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[Binoculars] call FNC_AddItem;

		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_medic] call FNC_AddItemRandom;
		[B_medic_backpack] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_samag,3,"vest"] call FNC_AddItem;

		[B_smokewhite,4,"vest"] call FNC_AddItem;
		[B_smokegreen,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		["ACE_personalAidKit",2,"vest"] call FNC_AddItem;
	   
		//Backpack
["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
["ACE_morphine",12,"backpack"] call FNC_AddItem; 
["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
["ACE_atropine",8,"backpack"] call FNC_AddItem; 
["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem; 
["ACE_personalAidKit",4,"backpack"] call FNC_AddItem; 
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_sidearm] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;

};

//Rifle Squad

//Squad Leader
case "B_SL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_special_uniform] call FNC_AddItemRandom;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_samag,3,"vest"] call FNC_AddItem;
		[B_armag,1,"vest"] call FNC_AddItem;
	   
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_longrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		B_leader_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[Binoculars] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;

};

//Fire Team Leader
case "B_FTL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_special_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,6,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_armag,1,"vest"] call FNC_AddItem;
	   
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		B_leader_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[Binoculars] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_grenadier] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_glhe,10,"vest"] call FNC_AddItem;
		[B_glhedp,10,"vest"] call FNC_AddItem;
		[B_glsmoke,5,"vest"] call FNC_AddItem;
		[B_glsmokered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_glrifle] call FNC_AddItem;
	   
		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;

};

//Automatic Rifleman
case "B_AR": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_special_uniform] call FNC_AddItemRandom;
		[B_vest_saw] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_armag,5,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_ar] call FNC_AddItem;
	   
		//Extra Mag
		[B_armag,1,"vest"] call FNC_AddItem;
	   
		//Attachments

};

//RAT (AT)
case "B_RAT": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_armag,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_rat] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//LSW
case "B_LSW": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_armag,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_lsw] call FNC_AddItem;
	   
		//Attachments
		[B_mrco] call FNC_AddItem;
};

//Weapons Squad

//Squad Leader

case "B_WSL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_wleader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,1,"uniform"] call FNC_AddItem;
[B_samag,1,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_glhe,10,"vest"] call FNC_AddItem;
		[B_glhedp,8,"vest"] call FNC_AddItem;
		[B_glsmoke,5,"vest"] call FNC_AddItem;
		[B_glsmokered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_longrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_glrifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
	   
		//Extra Mag
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;

};

case "B_WTL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_grenadier] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_glhe,10,"vest"] call FNC_AddItem;
		[B_glhedp,10,"vest"] call FNC_AddItem;
		[B_glsmoke,5,"vest"] call FNC_AddItem;
		[B_glsmokered,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_glrifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
	   
		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;

};


//Machine Gunner
case "B_MG": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_special_uniform] call FNC_AddItemRandom;
		[B_vest_mg] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;

		//Uniform
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_mgmag,3,"vest"] call FNC_AddItem;
[B_samag,3,"vest"] call FNC_AddItem;
	   
		//Backpack
		[B_mgmag,3,"backpack"] call FNC_AddItem;
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_mg] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
	   
		//Extra Mag
		[B_mgmag,1,"vest"] call FNC_AddItem;
	   
		//Attachments
};

//Machine Gunner Assistant
case "B_MGA": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,4,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_mgmag,1,"vest"] call FNC_AddItem;

		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	   
		//Backpack
		[B_mgmag,3,"backpack"] call FNC_AddItem;
	   
		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[Binoculars] call FNC_AddItem;
[B_tpod] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"vest"] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//Anti Tank
case "B_AT": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_mat] call FNC_AddItem;
[B_clu] call FNC_AddItem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//Anti Tank Assistant
case "B_ATA": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
	   
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
	   
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
	   
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem;
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
	   
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_mat] call FNC_AddItem;
[Binoculars] call FNC_Additem;
	   
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
};

//Mortar Team

//Mortar Team Leader
case "B_MT_LEAD": {
[B_default_headgear] call FNC_AddItemRandom;
[B_default_uniform] call FNC_AddItemRandom;
[B_vest_ftl_leader] call FNC_AddItemRandom;
[B_default_backpack] call FNC_Additem;
[B_glasses] call FNC_AddItemRandom;

//Uniform
[B_riflemag,2,"uniform"] call FNC_AddItem;

B_ace_default;
[B_smokewhite,1,"uniform"] call FNC_AddItem;
[rangetable,1,"uniform"] call FNC_AddItem;
[maptools,1,"uniform"] call FNC_AddItem;

//Vest
[B_riflemag,2,"vest"] call FNC_AddItem; 
[B_riflemag_tr,2,"vest"] call FNC_AddItem;
[B_ace_cabletie,2,"vest"] call FNC_AddItem;
[B_shortrange,1,"vest"] call FNC_AddItem;
[B_longrange,1,"vest"] call FNC_AddItem;

//Backpack
[mortar_shell_HE,2,"backpack"] call FNC_AddItem;

//Assigned Items
B_default_equipment;

//Weapons
[B_rifle] call FNC_AddItemRandom;
[B_range] call FNC_AddItem;

//Attachments
[B_rifle_scope] call FNC_AddItem;
};

//Mortar Gunner
case "B_MT_GN": {
[B_default_headgear] call FNC_AddItemRandom;
[B_default_uniform] call FNC_AddItemRandom;
[B_vest_default] call FNC_AddItemRandom;
[B_default_backpack] call FNC_Additem;
[B_glasses] call FNC_AddItemRandom;

//Uniform
[B_riflemag,2,"uniform"] call FNC_AddItem;
[rangetable,1,"uniform"] call FNC_AddItem;
[maptools,1,"uniform"] call FNC_AddItem;

B_ace_default;
[B_smokewhite,1,"uniform"] call FNC_AddItem;

//Vest
[B_riflemag,2,"vest"] call FNC_AddItem; 
[B_riflemag_tr,2,"vest"] call FNC_AddItem;
[B_ace_cabletie,2,"vest"] call FNC_AddItem;
[B_shortrange,1,"vest"] call FNC_AddItem;

//Backpack
[mortar_shell_HE,2,"backpack"] call FNC_AddItem;

//Assigned Items
B_default_equipment;

//Weapons
[B_rifle] call FNC_AddItemRandom;
[mortar_tube] call FNC_AddItem;

//Attachments
[B_rifle_scope] call FNC_AddItem;
};

//Mortar Assistant
case "B_MT_AGN": {
[B_default_headgear] call FNC_AddItemRandom;
[B_default_uniform] call FNC_AddItemRandom;
[B_vest_default] call FNC_AddItemRandom;
[B_default_backpack] call FNC_Additem;
[B_glasses] call FNC_AddItemRandom;

//Uniform
[B_riflemag,2,"uniform"] call FNC_AddItem;
[rangetable,1,"uniform"] call FNC_AddItem;
[maptools,1,"uniform"] call FNC_AddItem;

B_ace_default;
[B_smokewhite,1,"uniform"] call FNC_AddItem;

//Vest
[B_riflemag,2,"vest"] call FNC_AddItem; 
[B_riflemag_tr,2,"vest"] call FNC_AddItem;
[B_ace_cabletie,2,"vest"] call FNC_AddItem;
[B_shortrange,1,"vest"] call FNC_AddItem;

//Backpack
[mortar_shell_HE,2,"backpack"] call FNC_AddItem;

//Assigned Items
B_default_equipment;

//Weapons
[B_rifle] call FNC_AddItemRandom;
[mortar_tripod] call FNC_AddItem;

//Attachments
[B_rifle_scope] call FNC_AddItem;
};


#define civ_headgear_r "CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", \
"CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_06", \
"CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_02", \
"CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", \
"CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", \
"CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06"

#define civ_uniform_r "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_01", \
"CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_01", \
"CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", \
"CUP_O_TKI_Khet_Partug_03"


case "CIV": {
[civ_uniform_r] call FNC_AddItemRandom;
[civ_headgear_r] call FNC_AddItemRandom;
};