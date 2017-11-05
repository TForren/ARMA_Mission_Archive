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
#define B_rifle "CUP_srifle_LeeEnfield"
#define B_ar "rhs_weap_m249_pip_S"
#define B_glrifle "rhs_weap_m4_m203"
#define B_dmr "hlc_rifle_M21"
#define B_sniper "hlc_rifle_psg1"
#define B_smg "hlc_smg_mp5n"
#define B_mg "rhs_weap_m240B_CAP"

//Secondary
#define B_sidearm "CUP_hgun_Colt1911"

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
#define B_riflemag "CUP_10x_303_M"
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
#define B_samag "CUP_7Rnd_45ACP_1911"

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

//=== MISC ===
				   
//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"
				   
// CE equipment - what everyone should have
#define B_ace_default \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; 

				  
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
				   
//=== Clothes ===

//Uniform              
#define B_default_uniform "rhs_uniform_m88_patchless"
#define B_pilot_uniform "TRYK_HRP_UCP"
   
//Headgear
#define B_default_headgear "LOP_H_SSh68Helmet_TAN"

			
				   
//Vests
#define B_vest_default "TAC_LBT_H3_Khaki"

				   
//Face
#define B_glasses "EWK_Cig5"
				   

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

//Platoon

//Platoon Commander
case "B_PC": {
	["UK3CB_BAF_H_Beret_SAS"] call FNC_AddItem;
	["CUP_U_O_TK_Green"] call FNC_AddItem;
	["rhs_vest_commander"] call FNC_AddItem;

	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_smokewhite,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_samag,2,"vest"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
};

case "B_RIF": {
	["CUP_H_TK_Helmet"] call FNC_AddItem;
	["CUP_U_O_TK_Green"] call FNC_AddItem;
	["CUP_V_RUS_Smersh_1"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	
	[B_smokewhite,5,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
};

case "O_PC": {
	["UK3CB_BAF_H_Beret_PWRR"] call FNC_AddItem;
	["CUP_U_O_TK_Green"] call FNC_AddItem;
	["rhs_vest_commander"] call FNC_AddItem;

	B_ace_default;
	[B_frag,1,"uniform"] call FNC_AddItem;
	[B_smokewhite,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[B_samag,2,"vest"] call FNC_AddItem;
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[Binoculars] call FNC_AddItem;
	[B_sidearm] call FNC_AddItem;
};

case "O_RIF": {
	["CUP_H_SLA_Helmet"] call FNC_AddItem;
	["CUP_U_O_TK_Green"] call FNC_AddItem;
	["CUP_V_O_SLA_Carrier_Belt"] call FNC_AddItem;
	
	//Uniform
	[B_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;

	
	//Vest
	[B_riflemag,4,"vest"] call FNC_AddItem; 
	
	[B_smokewhite,1,"vest"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[B_rifle] call FNC_AddItem;
};