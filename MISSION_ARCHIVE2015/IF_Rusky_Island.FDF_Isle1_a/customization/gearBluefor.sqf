// Info: USA Mid Tech Bluefor Loadouts
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
//RAT - Rifleman (AT)
//GRE - Grenadier
//AR - Automatic Rifleman
//AT - AT Specialist
//ATA - AT Assistant
//MG - Machine Gunner
//MGA - MG Assistant
//PIL - Pilot
//AC - Air Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define B_rifle "rhs_weap_m4_grip"
#define B_ar "rhs_weap_m249_pip_S"
#define B_glrifle "rhs_weap_m4_m203"
#define B_sniper "hlc_rifle_psg1"
#define B_smg "hlc_smg_mp5n"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "RH_m9"

//Launcher
#define B_rat "tf47_at4_heat"
#define B_mat "tf47_m3maaws_optic"

//Attachments
#define B_rifle_scope "rhsusf_acc_compm4"
#define B_holosight "FHQ_optic_HWS"
#define B_holosight_x4 "FHQ_optic_HWS_G33"
#define B_mrco "rhsusf_acc_ACOG"
#define B_mgo "rhsusf_acc_ELCAN"
#define B_aimpoint "rhsusf_acc_compm4"
#define B_sniper_scope "rhsusf_acc_LEUPOLDMK4"
#define B_marksman_scope "hlc_optic_LRT_m14"
#define B_m4_suppressor "muzzle_snds_H"
#define B_m249_supressor "muzzle_snds_H_MG"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "rhsusf_acc_anpeq15_light"
#define B_mg_laser "rhsusf_acc_anpeq15side"
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
#define B_dmrMag "hlc_20Rnd_762x51_B_M14"
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
#define B_glsmokered "rhs_mag_M713_red"
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
#define B_strobe "ACE_IR_Strobe_Item"
			   
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
#define B_default_uniform "TRYK_U_B_MARPAT_WOOD_CombatUniform"
#define B_pilot_uniform "TRYK_HRP_UCP"

//Headgear
#define B_leader_headgear "rhsusf_lwh_helmet_marpatwd"
#define B_default_headgear "rhsusf_lwh_helmet_marpatwd"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "rhsusf_hgu56p"
#define B_aircrew_headgear "rhsusf_hgu56p_mask"
#define B_sniper_headgear "TRYK_H_ghillie_over"
			   
//Backpack
#define B_default_backpack "B_AssaultPack_blk"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "rhsusf_assault_eagleaiii_ucp_engineer"
			   
//Vests
#define B_vest_default "TRYK_V_tacv1L_BK"
#define B_vest_grenadier "TRYK_V_tacv1M_BK"
#define B_vest_saw "TRYK_V_tacv1MLC_BK"
#define B_vest_medic "TRYK_V_tacv1L_BK"
#define B_vest_engineer "rhsusf_iotv_ucp_repair"
#define B_vest_sniper "rhsusf_iotv_ucp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_iotv_ucp_repair"
#define B_vest_vehiclecrew "rhsusf_iotv_ucp_repair"
#define B_vest_leader "TRYK_V_tacv10LC_BK"
#define B_vest_ftl_leader "TRYK_V_tacv10LC_BK"
#define B_vest_pilot "TRYK_Hrp_vest_ucp"
			   
//Face
#define B_facecover "TRYK_kio_balaclava_BLK"
#define B_glasses "TRYK_kio_balaclava_BLK"
			   
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
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

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
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;["rhsusf_acc_SFMB556"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Platoon Sgt.
case "B_SGT": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

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
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Platoon Medic
case "B_MED": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_medic] call FNC_AddItem;
	["TRYK_B_Medbag_BK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_samag,2,"vest"] call FNC_AddItem;

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
	[B_rifle] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_samag,1,"vest"] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

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
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;

	//Attachments
	[B_mrco] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Rifle Squad

//Fire Team Leader
case "B_FTL": {
	[B_leader_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_ftl_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
	[B_armag,1,"vest"] call FNC_AddItem;

	[B_smokewhite,1,"vest"] call FNC_AddItem;
	[B_smokegreen,1,"vest"] call FNC_AddItem;
	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Rifleman (AT)
case "B_RAT": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["B_AssaultPack_blk"] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"backpack"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"backpack"] call FNC_AddItem; 
	[B_armag,1,"backpack"] call FNC_AddItem;

	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Grenadier
case "B_GRE": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_grenadier] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	["B_AssaultPack_blk"] call FNC_AddItem;

	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;

	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

	[B_glhe,8,"backpack"] call FNC_AddItem;
	[B_glhedp,6,"backpack"] call FNC_AddItem;
	[B_glsmoke,4,"backpack"] call FNC_AddItem;
	[B_glsmokered,2,"backpack"] call FNC_AddItem;
	[B_ace_cabletie,2,"backpack"] call FNC_AddItem;
	[B_shortrange,1,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_glrifle] call FNC_AddItem;

	//Extra Mag
	[B_riflemag,1,"uniform"] call FNC_AddItem;
	[B_glhe,1,"vest"] call FNC_AddItem;

	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	["rhsusf_acc_SFMB556"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

//Automatic Rifleman
case "B_AR": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	[B_vest_saw] call FNC_AddItem;
	["TRYK_B_Kitbag_blk"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;
	[B_frag,2,"uniform"] call FNC_AddItem;

	//Vest
	[B_armag,2,"vest"] call FNC_AddItem;

	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Backpack
	[B_armag,3,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;

	//Weapons
	[B_ar] call FNC_AddItem;

	//Extra Mag
	[B_armag,1,"vest"] call FNC_AddItem; 

	//Attachments
	["acc_flashlight"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
};


//Weapons Squad

//Pilots
//Crew
case "B_Crew_leader": {
	["rhsusf_cvc_green_ess"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_V_tacSVD_BK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 

	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	[B_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["rhs_weap_m4_grip2"] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};



//Crew
case "B_Crew": {
	["rhsusf_cvc_green_ess"] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_V_tacSVD_BK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_smokewhite,1,"uniform"] call FNC_AddItem;

	//Vest
	[B_riflemag,3,"vest"] call FNC_AddItem; 

	[B_ace_cabletie,2,"vest"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["rhs_weap_m4_grip2"] call FNC_AddItem;
	[Binoculars] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
	//["rhsusf_ANPVS_15"] call FNC_AddItem;
	[B_m4mb] call FNC_AddItem;
};

/*////////////////////////////////////////////////////////////////////////
*Support Roles
*//////////////////////////////////////////////////////////////////////////

#define mortar_tripod "B_mas_Tripod_Bag"
#define mortar_tube "B_mas_Tripod_Bag"

#define mortar_shell_HE "UK3CB_BAF_1Rnd_81mm_Mo_shells"

#define mortar_tube "UK3CB_BAF_L16"
#define mortar_tripod "UK3CB_BAF_L16_Tripod"

#define rangetable "ACE_RangeTable_82mm"
#define maptools "ACE_MapTools"


case "B_MT_LEAD": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_V_tacSVD_BK"] call FNC_AddItem;
	["TRYK_B_Coyotebackpack_BLK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	//Uniform
	B_ace_default;
	[rangetable,1,"uniform"] call FNC_AddItem;
	[maptools,1,"uniform"] call FNC_AddItem;
	//
	[B_flarered,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	[B_longrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem; 
	[B_riflemag,3,"backpack"] call FNC_AddItem; 

	//Backpack
	[mortar_shell_HE,2,"backpack"] call FNC_AddItem;
	
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
};

case "B_MT_GN": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_V_tacSVD_BK"] call FNC_AddItem;
	["TRYK_B_Coyotebackpack_BLK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	//Uniform
	B_ace_default;
	[rangetable,1,"uniform"] call FNC_AddItem;
	[maptools,1,"uniform"] call FNC_AddItem;
	//
	[B_flarered,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem; 
	[B_riflemag,3,"backpack"] call FNC_AddItem; 

	//Backpack
	[mortar_shell_HE,2,"backpack"] call FNC_AddItem;
	
	[mortar_tube] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
};

case "B_MT_AGN": {
	[B_default_headgear] call FNC_AddItem;
	[B_default_uniform] call FNC_AddItem;
	["TRYK_V_tacSVD_BK"] call FNC_AddItem;
	["TRYK_B_Coyotebackpack_BLK"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	//Uniform
	B_ace_default;
	[rangetable,1,"uniform"] call FNC_AddItem;
	[maptools,1,"uniform"] call FNC_AddItem;
	//
	[B_flarered,1,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,2,"vest"] call FNC_AddItem; 
	[B_riflemag,3,"backpack"] call FNC_AddItem; 

	//Backpack
	[mortar_shell_HE,2,"backpack"] call FNC_AddItem;
	
	[mortar_tripod] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
	//Attachments
	[B_rifle_scope] call FNC_AddItem;
	["acc_flashlight"] call FNC_AddItem;
};