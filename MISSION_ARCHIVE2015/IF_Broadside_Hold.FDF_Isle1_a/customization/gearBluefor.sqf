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
#define B_rifle "hlc_rifle_aks74"
#define B_ar "hlc_rifle_rpk"
#define B_glrifle "hlc_rifle_aks74_GL"
#define B_mg "rhs_weap_pkm"

//Launcher
#define B_rat "rhs_weap_rshg2"
#define B_mat "rhs_weap_rpg7"

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
#define B_riflemag "hlc_30Rnd_545x39_B_AK"
#define B_riflemag_tr "hlc_20rnd_762x51_T_G3"
#define B_armag "hlc_45Rnd_762x39_m_rpk"
#define B_mgmag "rhs_100Rnd_762x54mmR"
#define B_ratmag "rhs_rshg2_mag"
#define B_matmag "rhs_fgm148_magazine_AT"
#define B_glhe "hlc_VOG25_AK"
#define B_glhedp "rhs_mag_M433_HEDP"
#define B_glstun "rhs_mag_M4009"
#define B_glbuck "rhs_mag_m576"
#define B_glflare "rhs_mag_m585_white"
#define B_glsmoke "rhs_mag_m714_white"
#define B_samag "RH_15Rnd_9x19_M9"

//Grenades
#define B_frag "rhs_mag_rgd5"
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
#define B_default_uniform_r "UA_BTOLgnsk1_Uniform_11_SS", "UA_Pack_Flectarn_Khaki_01", "UA_Pack_Flectarn_Khaki_01_SS", \
"UA_USSRuniforms_Butan_04","UA_USSRuniforms_Butan_03", \
"UA_USSRuniforms_Butan_02", "UA_USSRuniforms_Flectarn_02", "UA_USSRuniforms_Flectarn_03"

//Headgear
#define B_leader_headgear_r "UA_ita_PatHatBlack", "UA_ita_PatHatFlecktarn", "UA_ita_PatHatKhaki"
#define B_default_headgear_r "UA_PASGTHelmet_butan1", "UA_PASGTHelmet_butan2", \
"UA_PASGTHelmet_Green1", "UA_PASGTHelmet_Green2", "LOP_H_PASGTHelmet_OLV"
#define B_vcrew_headgear "rhsusf_cvc_ess"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
#define B_sniper_headgear "TRYK_H_ghillie_over"

//Backpack
#define B_default_backpack "TRYK_B_AssaultPack_Type2camo"
#define B_Med_backpack "TRYK_B_Medbag_OD"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_RPG_backpack "LOP_RHS_RPG"

//Vests
#define B_vest_default "RNR_Rys_m_KORA_izumzel"
#define B_vest_grenadier "RNR_Rys_m_KORAgp_gr"
#define B_vest_saw "UA_Pack_BWA3_Vest_Autorifleman_Fleck"
#define B_vest_medic "RNR_Rys_m_KORA_izumzel"
#define B_vest_engineer "LOP_V_CarrierLite_WDL"
#define B_vest_vehiclecrew_commander "UA_BeltMGb_Butan"
#define B_vest_vehiclecrew "UA_p2_ak_Flectarn"
#define B_vest_leader "RNR_Rys_m_GP_black"
//Face
#define B_facecover "TRYK_Shemagh_shade"
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


//Rifle and Weapons Squad Lead
case "B_SL": {
	[B_leader_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;

};

//Rifle Squad
case "B_FTL": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_frag,2,"uniform"] call FNC_AddItem;
	[B_mgmag,1,"backpack"] call FNC_AddItem;
	
	//backpack
	[B_glhe,18,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;

};

case "B_SAP": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_leader] call FNC_AddItem;
	["SRCW_Carryall_W"] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_shortrange,1,"vest"] call FNC_AddItem;
	
	//Vest
	[B_riflemag,5,"vest"] call FNC_AddItem; 
	[B_frag,2,"uniform"] call FNC_AddItem;
	
	//backpack
	["APERSBoundingMine_Range_Mag",12,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[B_glrifle] call FNC_AddItem;

};

case "B_RIF": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_default_backpack] call FNC_AddItem;
	[B_vest_default] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_mgmag,1,"backpack"] call FNC_AddItem;
	[B_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;

};

case "B_RAT": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 
	[B_mgmag,1,"backpack"] call FNC_AddItem;
	
	[B_frag,2,"backpack"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	[B_rat] call FNC_AddItem;
	
};


case "B_MG": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_default_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[B_frag,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_mgmag,1,"vest"] call FNC_AddItem; 

	//Backpack
	[B_mgmag,3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_mg] call FNC_AddItem;
	
	//Extra Mag
	[B_mgmag,1,"vest"] call FNC_AddItem; 
	
};

case "B_MAT": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_RPG_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 

	
	[B_frag,2,"uniform"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
	
};
case "B_MATA": {
	[B_default_headgear_r] call FNC_AddItemRandom;
	[B_default_uniform_r] call FNC_AddItemRandom;
	[B_vest_default] call FNC_AddItem;
	[B_RPG_backpack] call FNC_AddItem;
	[B_glasses] call FNC_AddItem;
	
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[B_riflemag,7,"vest"] call FNC_AddItem; 

	
	[B_frag,2,"uniform"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
	
};
