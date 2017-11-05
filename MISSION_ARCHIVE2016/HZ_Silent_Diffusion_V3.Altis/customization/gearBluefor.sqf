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
#define B_smg "hlc_smg_MP5N"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "RH_20Rnd_57x28_FN"

//Launcher
#define B_rat "tf47_at4_heat"
#define B_mat "tf47_m3maaws_optic"

//Attachments
#define B_rifle_scope "rhsusf_acc_eotech_552"
#define B_supressor "hlc_muzzle_Tundra"
#define B_ir_laser "acc_pointer_IR"


//Ammo
#define B_riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define B_riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define B_armag "rhsusf_200Rnd_556x45_soft_pouch"
#define B_armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define B_mgmag "rhsusf_100rnd_762x51"
#define B_mgmagap "rhsusf_100Rnd_762x51_m993"
#define B_smgmag "hlc_30Rnd_9x19_SD_MP5"
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
#define B_samag "RH_20Rnd_57x28_FN"

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
				   
//Radio
#define B_longrange "ACRE_PRC152"
#define B_shortrange "ACRE_PRC343"


//=== Clothes ===

	//Uniform              
#define B_default_uniform "U_B_Wetsuit"

//Headgear
#define B_leader_headgear "TRYK_H_PASGT_BLK"
#define B_default_headgear "TRYK_H_PASGT_BLK"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
				   
//Backpack
#define B_default_backpack "TRYK_B_Kitbag_Base"
#define B_Med_backpack "TRYK_B_Medbag_OD"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
				   
//Vests
#define B_vest_default "TRYK_V_ArmorVest_Delta"
#define B_vest_grenadier "TRYK_V_ArmorVest_Delta"
#define B_vest_saw "TRYK_V_ArmorVest_Delta2"
#define B_vest_medic "TRYK_V_ArmorVest_Delta"
#define B_vest_engineer "TRYK_V_ArmorVest_Delta"
#define B_vest_sniper "rhsusf_iotv_ocp_rifleman"
#define B_vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
#define B_vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define B_vest_leader "TRYK_V_ArmorVest_Delta"
#define B_vest_ftl_leader "TRYK_V_ArmorVest_Delta"
				   
//Face
#define B_facecover "TRYK_kio_balaclava_BLK"
#define B_glasses_r "TRYK_kio_balaclava_BLK", "TRYK_kio_balaclava_ESS"
				   
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
case "B_TL": {
	[B_default_uniform] call FNC_AddItem;
	["V_RebreatherB"] call FNC_AddItem;
	["G_B_Diving"] call FNC_AddItem;
	["B_AssaultPack_blk"] call FNC_AddItem;

	
	//Uniform
	["30Rnd_9x21_Mag",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["30Rnd_9x21_Mag",5,"backpack"] call FNC_AddItem; 
	["16Rnd_9x21_Mag",5,"backpack"] call FNC_AddItem; 
	["UGL_FlareCIR_F",8,"backpack"] call FNC_AddItem; 
	
	[B_shortrange,1,"uniform"] call FNC_AddItem; 
	[B_longrange,1,"uniform"] call FNC_AddItem;

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["SMG_02_F"] call FNC_AddItem;
	["rhs_weap_M320"] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	
	//Attachments
	["muzzle_snds_L"] call FNC_AddItem;
	["rhsusf_acc_anpeq15_bk"] call FNC_AddItem;
	["CUP_optic_ZDDot"] call FNC_AddItem;
	["CUP_NVG_PVS7"] call FNC_AddItem;
};
case "B_RIF": {
	[B_default_uniform] call FNC_AddItem;
	["V_RebreatherB"] call FNC_AddItem;
	["G_B_Diving"] call FNC_AddItem;
	["B_AssaultPack_blk"] call FNC_AddItem;
	
	//Uniform
	["30Rnd_9x21_Mag",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	["30Rnd_9x21_Mag",5,"backpack"] call FNC_AddItem; 
	

	[B_shortrange,1,"uniform"] call FNC_AddItem; 

	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	["SMG_02_F"] call FNC_AddItem;
	[B_range] call FNC_AddItem;
	["hgun_P07_F"] call FNC_AddItem;
	
	//Attachments
	["muzzle_snds_L"] call FNC_AddItem;
	["rhsusf_acc_anpeq15_bk"] call FNC_AddItem;
	["CUP_optic_ZDDot"] call FNC_AddItem;
	["muzzle_snds_L"] call FNC_AddItem;
	["CUP_NVG_PVS7"] call FNC_AddItem;
};
