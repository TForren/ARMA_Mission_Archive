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
#define B_rifle "rhs_weap_m16a4_grip"
#define B_ar "rhs_weap_m249_pip_L_vfg"
#define B_glrifle "rhs_weap_m16a4_carryhandle_M203"
#define B_dmr "rhs_weap_m16a4_carryhandle_grip_pmag"
#define B_sniper "hlc_rifle_psg1"
#define B_smg "hlc_smg_mp5n"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "RH_m9"

//Launcher
#define B_rat "tf47_at4_heat"
#define B_mat "tf47_m3maaws_optic"

//Attachments
#define B_rifle_scope "rhsusf_acc_ACOG"
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
#define B_riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
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
#define B_longrange "ACRE_PRC152"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

	//Uniform              
#define B_default_uniform "rhs_uniform_FROG01_wd"

//Headgear
#define B_leader_headgear "rhsusf_lwh_helmet_marpatwd"
#define B_default_headgear "rhsusf_lwh_helmet_marpatwd"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
				   
//Backpack
#define B_default_backpack "TRYK_B_Kitbag_Base"
#define B_Med_backpack "TRYK_B_Medbag_OD"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
				   
//Vests
#define B_vest_default "TRYK_V_ArmorVest_Brown2"
#define B_vest_grenadier "TRYK_V_ArmorVest_Brown2"
#define B_vest_saw "TRYK_V_ArmorVest_Brown2"
#define B_vest_medic "TRYK_V_ArmorVest_Brown2"
#define B_vest_engineer "TRYK_V_ArmorVest_Brown2"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "TRYK_V_ArmorVest_Brown2"
#define B_vest_ftl_leader "TRYK_V_ArmorVest_Brown2"
				   
//Face
#define B_facecover "TRYK_Shemagh_shade"
#define B_glasses_r "TRYK_TAC_SET_MESH", "TRYK_TAC_EARMUFF_Gs", "TRYK_TAC_EARMUFF_SHADE_Gs"
				   
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


//Rifle and Weapons Squad Lead
case "B_PC": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;

	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_JTAC": {
	["H_HelmetB_light"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	["G_Aviator"] call FNC_AddItem;

	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};


case "B_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	[B_Med_backpack] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	//["rhsusf_ANPVS_14"] call FNC_AddItem;
	
		//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	
	[B_frag,1,"vest"] call FNC_AddItem;
	[B_smokewhite,4,"vest"] call FNC_AddItem;
	[B_smokegreen,2,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
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
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,3,"vest"] call FNC_AddItem;
	

	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	[B_longrange,1,"vest"] call FNC_AddItem;

	[B_glhe,10,"backpack"] call FNC_AddItem;
	[B_glhedp,10,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

//Rifle Squad
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	
	[B_frag,2,"vest"] call FNC_AddItem;
	//
	[B_flaregreen,1,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_AAR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	//
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,4,"backpack"] call FNC_AddItem;
	
	[B_frag,2,"vest"] call FNC_AddItem;
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_GRE": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,8,"vest"] call FNC_AddItem;
	[B_glhedp,8,"vest"] call FNC_AddItem;
	////[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,20,"backpack"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_AT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	["B_Carryall_khk"] call FNC_AddItem;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 


	////[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["tf47_smaw_green"] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	["tf47_smaw_HEDP",1,"backpack"] call FNC_AddItem;
	["tf47_smaw_HEAA",1,"backpack"] call FNC_AddItem;
	["tf47_smaw_SR",2,"backpack"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["tf47_optic_smaw"] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};
case "B_AAT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	["B_Carryall_khk"] call FNC_AddItem;
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 


	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	["tf47_smaw_HEDP",1,"backpack"] call FNC_AddItem;
	["tf47_smaw_HEAA",1,"backpack"] call FNC_AddItem;
	["tf47_smaw_SR",2,"backpack"] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	//[B_ir_laser] call FNC_AddItem;
};

case "B_AR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	//Uniform
	B_ace_default;
	//
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_armag,2,"vest"] call FNC_AddItem; 
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_armag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_ar] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem; 
	
	//Attachments
	[B_mgo] call FNC_AddItem;
	[B_mg_laser] call FNC_AddItem;
};

case "B_DM": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses_r] call FNC_AddItemRandom;
	//Uniform
	B_ace_default;
	//
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,6,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,4,"vest"] call FNC_AddItem; 
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	
	//Backpack
	[B_armag,2,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_dmr] call FNC_AddItem;
	
	//Extra Mag
	[B_armag,1,"backpack"] call FNC_AddItem; 
	
	//Attachments
	["ACE_optic_SOS_2D"] call FNC_AddItem;
	["bipod_03_F_blk"] call FNC_AddItem;
};

case "B_P": {
	["rhsusf_hgu56p"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_Hrp_vest_od"] call FNC_AddItem;
	//Uniform
	B_ace_default;
	//
	[B_flarered,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_longrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["hlc_30Rnd_9x19_B_MP5",4,"vest"] call FNC_AddItem; 
	//[B_ace_cabletie,2,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["hlc_smg_MP5N"] call FNC_AddItem;
	

};

