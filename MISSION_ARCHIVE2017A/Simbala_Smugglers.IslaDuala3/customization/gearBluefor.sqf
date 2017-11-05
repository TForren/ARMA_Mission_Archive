// Info: BAF 2010-Present Bluefor Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//RTO - Platoon Signaller (Optional)
//SGT - Platoon Sgt.
//MED - Medic
//DMR - Platoon Marksman (Optional)
//SL - Section Leader
//FTL - Section 2IC
//GRE - Grenadier
//AR - Automatic Rifleman
//DMR - Designated Marksman
//RAT - Rifleman
//MG - Machine Gunner
//MT_LEAD Mortar Team Leader
//MT_GN Mortar Gunner
//MT_AGN Mortar Assistant

//========================Equipment Definitions========================
//=== Weapons ===
 
//Primary
#define B_rifle "UK3CB_BAF_L85A2_RIS","UK3CB_BAF_L85A2_RIS_AFG"
#define B_ar "UK3CB_BAF_L110A2","UK3CB_BAF_L110A2_FIST"
#define B_glrifle "UK3CB_BAF_L85A2_UGL","UK3CB_BAF_L85A2_UGL_HWS"
#define B_lsw "UK3CB_BAF_L86A2"
#define B_dmr "UK3CB_BAF_L129A1","UK3CB_BAF_L129A1_AFG","UK3CB_BAF_L129A1_FGrip","UK3CB_BAF_L129A1_Grippod"
#define B_sniper "UK3CB_BAF_L115A3"
#define B_smg "UK3CB_BAF_L22A2"
#define B_mg "UK3CB_BAF_L7A2"
 
//Secondary
#define B_sidearm "rhsusf_weap_glock17g4"
 
//Launcher
#define B_law "rhs_weap_m72a7"
#define B_at4 "rhs_weap_M136"
#define B_nlaw "UK3CB_BAF_NLAW_Launcher"
#define B_mat "UK3CB_BAF_Javelin_Slung_Tube"
#define B_tpod "UK3CB_BAF_Tripod"
#define mortar_tube "UK3CB_BAF_L16"
#define mortar_tripod "UK3CB_BAF_L16_Tripod"

//Attachments
#define B_rifle_scope "UK3CB_BAF_TA31F"
#define B_holosight "UK3CB_BAF_Eotech"
#define B_mrco "UK3CB_BAF_TA31F"
#define B_mgo "UK3CB_BAF_SpecterLDS_Dot"
#define B_aimpoint "rhsusf_acc_compm4"
#define B_sniper_scope "UK3CB_BAF_SB31250"
#define B_marksman_scope "UK3CB_BAF_TA648_308"
#define B_m4_suppressor "muzzle_snds_H"
#define B_m249_supressor "muzzle_snds_H_MG"
#define B_flashlight "acc_flashlight"
#define B_ir_laser "UK3CB_BAF_LLM_IR_Black"
 
//Ammo
#define B_riflemag "UK3CB_BAF_556_30Rnd"
#define B_riflemag_tr "UK3CB_BAF_556_30Rnd_T"
#define B_armag "UK3CB_BAF_556_100Rnd"
#define B_armag2 "UK3CB_BAF_556_200Rnd"
#define B_mgmag "UK3CB_BAF_762_100Rnd_T"
#define B_dmrmag "UK3CB_BAF_556_30Rnd"
#define B_dmrmag_tr "UK3CB_BAF_556_30Rnd"
#define B_smgmag "UK3CB_BAF_556_30Rnd"
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
#define mortar_shell_HE "UK3CB_BAF_1Rnd_81mm_Mo_shells"
 
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
#define B_rangetable "ACE_RangeTable_82mm"
#define B_strobe "ACE_IR_Strobe_Item"
#define B_maptools "ACE_MapTools"
#define B_gps "ACE_DAGR"
                       
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
#define B_backradio "ACRE_PRC117F"

//=== Clothes ===
 
//Uniform              
#define B_default_uniform "UK3CB_BAF_U_CombatUniform_MTP","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"
       
//Headgear
#define B_default_headgear "UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F","UK3CB_BAF_H_Mk7_Net_A","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D"
#define B_vcrew_headgear "UK3CB_BAF_H_CrewHelmet_A"
#define B_pilot_headgear "H_PilotHelmetHeli_B"
#define B_aircrew_headgear "H_PilotHelmetHeli_B"
#define B_sniper_headgear "TRYK_H_ghillie_over"
#define B_beret "UK3CB_BAF_H_Beret_PR_PRR"

//Backpack
#define B_default_backpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B"
#define B_medic_backpack "UK3CB_BAF_B_Bergen_MTP_Medic_H_B"
#define B_crew_backpack "B_AssaultPack_cbr"
#define B_engineer_backpack "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A"
#define B_leader_backpack "UK3CB_BAF_B_Bergen_MTP_SL_H_A"
#define B_rto_backpack "UK3CB_BAF_B_Bergen_MTP_Radio_H_B"
                       
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
                       
//Face
#define B_glasses "UK3CB_BAF_G_Tactical_Clear","UK3CB_BAF_G_Tactical_Black","UK3CB_BAF_G_Tactical_Grey","UK3CB_BAF_G_Tactical_Orange","UK3CB_BAF_G_Tactical_Yellow"
                       
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


	//Platoon HQ
	
	//Platoon Commander
	case "B_PC": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_backpack] call FNC_AddItem;
		
		//Uniform
		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_samag,2,"vest"] call FNC_AddItem;

		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,2,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;	
		
		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_leader_equipment;

		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_range] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
		
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};

	//Platoon Signaller
	case "B_RTO": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_rto_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		
		//Uniform
		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,9,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,2,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;

		//Backpack
		[B_shortrange,1,"backpack"] call FNC_AddItem;
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		[B_backradio,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;

		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};

	//Platoon Sergeant’s Group
	
	//Platoon Sgt.
	case "B_SGT": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_backpack] call FNC_AddItem;

		//Uniform
		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,7,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;	

		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_range] call FNC_AddItem;

		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};
	
	//Platoon Medic
	case "B_MED": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_medic] call FNC_AddItemRandom;
		[B_medic_backpack] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		
		//Uniform		
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;

		[B_smokewhite,4,"vest"] call FNC_AddItem;
		[B_smokegreen,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		["ACE_personalAidKit",2,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		["ACE_elasticBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_packingBandage",15,"backpack"] call FNC_AddItem; 
		["ACE_quikclot",15,"backpack"] call FNC_AddItem; 
		["ACE_morphine",12,"backpack"] call FNC_AddItem; 
		["ACE_epinephrine",10,"backpack"] call FNC_AddItem; 
		["ACE_atropine",8,"backpack"] call FNC_AddItem; 
		["ACE_salineIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_plasmaIV_500",5,"backpack"] call FNC_AddItem; 
		["ACE_personalAidKit",3,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;

	};

	//Platoon Marksman
	case "B_DMR": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		
		//Uniform
		[B_dmrmag,1,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_dmrmag,6,"vest"] call FNC_AddItem; 
		[B_dmrmag_tr,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_dmr] call FNC_AddItemRandom;
		
		//Attachments
		[B_marksman_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};
	
	//Rifle Section

	//Section Leader

	case "B_SL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_leader] call FNC_AddItem;
		[B_glasses] call FNC_AddItemRandom;
		[B_leader_backpack] call FNC_AddItem;
		
		
		//Uniform
		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,9,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_samag,2,"vest"] call FNC_AddItem;
		
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokered,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem; 
		[B_longrange,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_law] call FNC_AddItem;
		[B_range] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;

		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;

	};
	
	//Section 2IC
	case "B_FTL": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;
		
		
		//Uniform		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_maptools,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,8,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem;
		
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_smokegreen,1,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_gps,1,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;
		[B_longrange,1,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_law] call FNC_AddItem;
		[B_range] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};
	
	//Rifleman(UGL)
	case "B_GRE": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_grenadier] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		
		//Uniform		
		B_ace_default;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,8,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,2,"vest"] call FNC_AddItem;
		[B_glhe,6,"vest"] call FNC_AddItem;
		[B_glhedp,4,"vest"] call FNC_AddItem;
		[B_glsmoke,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_beret,1,"backpack"]call FNC_AddItem;	
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_glrifle] call FNC_AddItemRandom;
		[B_law] call FNC_AddItem;
		
		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
		
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;

	};
	
	//LMG Gunner
	case "B_AR": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_saw] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		
		//Uniform
		B_ace_default;
		[B_smokewhite,2,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_shortrange,1,"vest"] call FNC_AddItem;
		[B_armag,4,"vest"] call FNC_AddItem;

		//Backpack
		[B_ace_cabletie,2,"backpack"] call FNC_AddItem;		
		[B_armag,4,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_ar] call FNC_AddItemRandom; 
		
		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;

	};

	//Rifleman
	case "B_RAT": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;

		
		//Uniform		
		B_ace_default;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_chemblue,1,"uniform"] call FNC_AddItem;
		[B_strobe,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,9,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_frag,1,"vest"] call FNC_AddItem;
		[B_smokewhite,2,"vest"] call FNC_AddItem;
		[B_ace_cabletie,2,"vest"] call FNC_AddItem;
		[B_shortrange,1,"vest"] call FNC_AddItem;

		//Backpack
		[B_riflemag,2,"backpack"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItemRandom;
		[B_nlaw] call FNC_AddItem;

		//Attachments
		[B_rifle_scope] call FNC_AddItem;
		[B_ir_laser] call FNC_AddItem;
	};

	//GPMG Gunner
	case "B_MG": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_mg] call FNC_AddItem;
		[B_default_backpack] call FNC_AddItemRandom;
		[B_glasses] call FNC_AddItemRandom;

		//Uniform
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,1,"uniform"] call FNC_AddItem;
		[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
		[B_shortrange,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_mgmag,2,"vest"] call FNC_AddItem;
		
		//Backpack
		[B_mgmag,2,"backpack"] call FNC_AddItem;
		[B_samag,2,"backpack"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_mg] call FNC_AddItem;
                [B_sidearm] call FNC_AddItem;
		
		//Extra Mag
		
		//Attachments
	};

	//Mortar Team

	//Mortar Team Leader
	case "B_MT_LEAD": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_ftl_leader] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;
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
		[B_ir_laser] call FNC_AddItem;
	};

	//Mortar Gunner
	case "B_MT_GN": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;
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
		[B_ir_laser] call FNC_AddItem;
	};

	//Mortar Assistant
	case "B_MT_AGN": {
		[B_default_headgear] call FNC_AddItemRandom;
		[B_default_uniform] call FNC_AddItemRandom;
		[B_vest_default] call FNC_AddItemRandom;
		[B_default_backpack] call FNC_AddItemRandom;
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
		[B_ir_laser] call FNC_AddItem;
	};