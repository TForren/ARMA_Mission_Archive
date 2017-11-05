class USA {
			// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]	
			// 'MERICA BlueFor Gear Script by Jords
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 			- Radio Operator
			//		SL 			- Squad Leader
			//		MED 			- Medic
			//		FTL			- Fire Team Leader
			//		RIF 			- Rifleman
			//		RAT			- Rifleman (AT)
			//		GRE			- Grenadier
			//		AR 			- Automatic Rifleman 
			//		AT			- AT Specialist
			//		ATA			- AT Assistant
			//		WSL			- Weapons Squad Leader
			//		MARK			- Marksman
			//		SN			- Sniper
			//		SP			- Spotter (for sniper)
			//		MG			- Machine Gunner
			//		MGA			- MG Assistant
			//		VC			- Vehicle Commander 
			//		VG			- Vehicle Gunner 
			//		VD			- Vehicle Driver (repair) 
			//		PIL			- Pilot / Co-Pilot 
			//		CC			- Crew Chief (repair) 
			//		AIRCR			- Air Vehicle Crew
			//		ENG			- Engineer 
			//		ENGDEMO			- Engineer (demo) 
			//		ENGMINE			- Engineer (mines) 
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- car/4x4/jeep
			//		V_TR		- truck
			//		V_IFV		- ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===

			//Primary
			#define rifle "rhs_weap_mk18_grip2"
			#define ar "rhs_weap_m249_pip"
			#define glrifle "rhs_m4a1_m320"
			#define dmr "hlc_rifle_M21"
			#define sniper "hlc_rifle_psg1"
			#define smg "hlc_smg_mp5n"
			#define mg "rhs_weap_m240B"

			//Secondary

			//Launcher
			#define rat "rhs_weap_M136"
			#define mat "rhs_weap_fgm148"

			//Attachments
			#define rifle_scope "rhsusf_acc_ACOG_pip"
			#define holosight "FHQ_optic_HWS"
			#define holosight_x4 "FHQ_optic_HWS_G33"
			#define mrco "rhsusf_acc_ACOG3"
			#define mgo "rhsusf_acc_ELCAN"
			#define aimpoint "rhsusf_acc_compm4"
			#define sniper_scope "rhsusf_acc_LEUPOLDMK4"
			#define marksman_scope "hlc_optic_LRT_m14"
			#define m4_suppressor "muzzle_snds_H"
			#define m249_supressor "muzzle_snds_H_MG"
			#define flashlight "acc_flashlight"
			#define ir_laser "FHQ_acc_ANPEQ15_black"

			//Ammo
			#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red" 
			#define armag "rhsusf_100Rnd_556x45_soft_pouch"
			#define mgmag "rhsusf_100rnd_762x51"
			#define smgmag "hlc_30Rnd_9x19_B_MP5"
			#define dmrMag "hlc_20Rnd_762x51_B_M14"
			#define snipermag "hlc_20rnd_762x51_b_G3"
			#define ratmag "rhs_m136_mag"
			#define matmag "rhs_fgm148_magazine_AT"
			#define glhe "rhs_mag_M441_HE"
			#define glhedp "rhs_mag_M433_HEDP"
			#define glstun "rhs_mag_M4009"
			#define glbuck "rhs_mag_m576"
			#define glflare "rhs_mag_m585_white"
			#define glsmoke "rhs_mag_m714_white"

			//Grenades
			#define frag "HandGrenade"
			#define stun "rhs_ammo_m84"
			#define smokewhite "SmokeShell"
			#define smokegreen "SmokeShellGreen"
			#define smokered "SmokeShellRed"
			#define flarered "AGM_HandFlare_Red"
			#define flaregreen "AGM_HandFlare_Green"
			#define flarewhite "AGM_HandFlare_White"
			#define flareyellow "AGM_HandFlare_Yellow"

			//GL Mags
			#define glmag 	{"rhs_mag_M441_HE",6}, \
							{"rhs_mag_M433_HEDP",4}

			#define glsl {"rhs_mag_M714_white",3},  \
								{"rhs_mag_M715_green",2}, \
								{"rhs_mag_M713_red",2}, \
								{"rhs_mag_M585_white",3}

			

			//=== MISC ===
			
			//Chemical lights
			#define chemblue "Chemlight_blue"
			
			// AGM equipment - what everyone should have
			#define agm_default	{"AGM_Bandage",5}, \
								{"AGM_Morphine",2}, \
								{"AGM_EarBuds",1}

			//Override for a Medic					
			#define agm_medic	{"AGM_Bandage",20}, \
								{"AGM_Morphine",10}, \
								{"AGM_Epipen",10}, \
								{"AGM_Bloodbag",3}, \
								{"AGM_EarBuds",1}
			
			//AGM
			#define agm_epipen "AGM_Epipen" // For PC, SL, FTL
			#define agm_sparebarrel "AGM_SpareBarrel"
			#define agm_defuse "AGM_DefusalKit"
			#define agm_firing_device "AGM_Clacker"
			
			//Double Misc
			#define toolkit "ToolKit"
			#define explosive "DemoCharge_Remote_Mag"
			#define at_mine "ATMine_Range_Mag"
			#define ap_mine "APERSBoundingMine_Range_Mag"
			#define minedetector "MineDetector"
			#define binoculars "Binocular"
			
			//Radio 
			#define long_range "tf_anprc152" //Long range - Short-wave
					
			//=== Clothes ===

			//Uniform		
			#define default_uniform "rhs_uniform_FROG01_d"
				
			//Headgear
			#define leader_headgear "rhsusf_patrolcap_ocp", "rhs_Booniehat_ocp"
			#define default_headgear "rhsusf_opscore_02", "rhsusf_opscore_02_tan", "rhsusf_opscore_01_tan", "rhsusf_opscore_04_ocp", "rhsusf_opscore_03_ocp"
			#define vcrew_headgear "rhsusf_cvc_ess"
			#define pilot_headgear "H_PilotHelmetHeli_B"
			#define aircrew_headgear "H_PilotHelmetHeli_B"
			#define sniper_headgear "TRYK_H_ghillie_over" 
			
			//Backpack
			#define default_backpack "rhsusf_assault_eagleaiii_ocp"
			#define crew_backpack "B_AssaultPack_cbr"
			#define engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
			#define long_range_backpack "tf_rt1523g_big_rhs"
			#define squad_lead_radio "tf_rt1523g_big_rhs"
			
			//Vests
			#define vest_default "rhsusf_iotv_ocp_rifleman"
			#define vest_grenadier "rhsusf_iotv_ocp_grenadier"
			#define vest_medic "rhsusf_iotv_ocp_medic"
			#define vest_engineer "rhsusf_iotv_ocp_repair"
			#define vest_sniper "rhsusf_iotv_ocp_rifleman"
			#define vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
			#define vest_vehiclecrew "rhsusf_iotv_ocp_repair"
			#define vest_leader "rhsusf_iotv_ocp_squadleader"
			#define vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
			
			//Face
			#define facecover "TRYK_Shemagh_shade"
			#define glasses  "G_Bandanna_tan", "RNR_SharfBandanna_Oli", "RNR_rhs_scarf", "rhs_scarf", "TRYK_Shemagh_ESS", "TRYK_Shemagh_shade"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_rf7800str","tf_microdagr" //With GPS
			#define default_equipment "ItemMap","ItemCompass","tf_rf7800str","tf_microdagr"
			
			//========================Class Loadouts Definitions========================
			//================Platoon Leader==================
			class PC {
				weapons[] = {rifle,binoculars};
				magazines[] = { };
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						{smokewhite,2}
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						agm_default,
						{agm_epipen,1},
						{frag,1}
					};
				goggles[] = {"RNR_Tac_smallBeardD"};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope,ir_laser};
				secKit[] = {};
			};
			//================Platoon Sgt. (RTO)==================
			class RTO {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {long_range_backpack};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						{smokewhite,1},

					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						agm_default,
						{agm_epipen,1},
						{frag,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope,ir_laser};
				secKit[] = {};
			};
			//================Raven==================
			class RAV {
				weapons[] = {"hlc_smg_mp5a3","lerca_1200_black"};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {"B_rhsusf_B_BACKPACK"};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{"hlc_30Rnd_9x19_B_MP5",2}
					};
					uniformItems[] = {
						agm_default,
						{agm_epipen,1},
						{frag,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{"hlc_30Rnd_9x19_B_MP5",5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"optic_Aco_smg"};
				secKit[] = {};
			};
			//================Squad Leader==================
			class SL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {squad_lead_radio};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						{smokewhite,2}

					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						agm_default,
						{agm_epipen,1},
						{frag,2}
					};
				goggles[] = {"RNR_Tac_smallBeardD"};
				vest[] = {vest_leader};
					vestMagazines[] = {
						glsl,
						{riflemag,5},
						glmag
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope,ir_laser};
				secKit[] = {};
			};
			//================Medic==================
			class MED {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = { };
					backpackItems[] = {
						agm_medic,
						{flashlight,1},
						{chemblue,2},
						{smokewhite,3},
						{frag,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_medic};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Team Leader==================
			class FTL {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{agm_epipen,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2},
						{stun,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight_x4};
				secKit[] = {};
			};
			//================Rifleman==================
			class RIF {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,2}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{ratmag,1},
						{armag,1}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Grenadier==================
			class GRE {
				weapons[] = {glrifle};
				magazines[] = {	
					}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2},
						{glsmoke,4}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,5},
						glmag,
						glmag
					};
				assignedItems[] = {default_equipment};
				items[] = {}; //do not use if using specific allocation of items
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Auto-Rifleman==================
			class AR {
				weapons[] = {ar};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,3}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{agm_sparebarrel,1},
						{chemblue,2},
						{frag,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{armag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,6}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};

			//================AT Specialist==================
			class AT {
				weapons[] = {rifle,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================AT Assistant==================
			class MATA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Breacher==================
			class BRE {
				weapons[] = {"rhs_weap_M590_8RD","hgun_ACPC2_F"};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{"9Rnd_45ACP_Mag",4}
					};
					backpackItems[] = {
						agm_default,
						{smokewhite,2},
						{frag,4},
						{"AGM_M84",4}
					};
				headgear[] = {default_headgear};
				uniform[] = {"TRYK_B_TRYK_3C_T"};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					{"rhsusf_8Rnd_00Buck",4}
					};
				goggles[] = {"G_Bandanna_khk"};
				vest[] = {vest_default};
					vestMagazines[] = {
						{"rhsusf_8Rnd_00Buck",7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Breacher==================
			class BRE2 {
				weapons[] = {"rhs_weap_m4_grip","hgun_ACPC2_F",rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{"9Rnd_45ACP_Mag",4}
					};
					backpackItems[] = {
						agm_default,
						{smokewhite,2},
						{"AGM_M84",4},
						{frag,4}
					};
				headgear[] = {default_headgear};
				uniform[] = {"TRYK_B_TRYK_3C_T"};
					uniformMagazines[] = {
						{"rhs_mag_30Rnd_556x45_Mk318_Stanag",2},
						{ratmag, 1}
					};
					uniformItems[] = {
					};
				goggles[] = {"G_Bandanna_khk"};
				vest[] = {vest_default};
					vestMagazines[] = {
						{"rhs_mag_30Rnd_556x45_Mk318_Stanag",7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_light","FHQ_optic_HWS_tan"};
				secKit[] = {};
			};
			//================Weapons Leader==================
			class WSL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {squad_lead_radio};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						{smokewhite,2},
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						agm_default,
						{agm_epipen,1},
						{frag,2}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						glsl,
						glmag,
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope,ir_laser};
				secKit[] = {};
			};
			//================Machine Gunner==================
			class MG {
				weapons[] = {mg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mgmag,4}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{agm_sparebarrel,1},
						{chemblue,2},
						{frag,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{mgmag,3}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"rhsusf_acc_ELCAN_pip",ir_laser};
				secKit[] = {};
			};
			//================Machine Gunner Assistant.==================
			class MGA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mgmag,4}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Machine Gunner Assistant.==================
			class AB {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mgmag,4}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Vehicle Loadouts==================
			class night_box {
				vehCargoWeapons[] = { };
				vehCargoMagazines[] = {
					{flashlight,20},
					{chemblue,30}
				};
				vehCargoItems[] = { 
				};
				vehCargoRucks[] = { };
			};		
			class V_CAR {
				vehCargoWeapons[] = {"rhs_weap_M590_8RD"};
				vehCargoMagazines[] = {
					{riflemag,20},
					{riflemag_tr,8},
					{dmrMag,5},
					{armag,5},
					{"rhsusf_8Rnd_00Buck", 6},
					{glmag,3}
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5}
				};
				vehCargoRucks[] = { };
			};
			class V_TR {
				vehCargoWeapons[] = { };
				vehCargoMagazines[] = {
					{riflemag,50},
					{riflemag_tr,10},
					{dmrMag,20},
					{armag,15},
					{matmag,6},
					{glmag,6}
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,10},
				{grenade,10},
				agm_medic
				};
				vehCargoRucks[] = { };
			};
			class V_IFV {
				vehCargoWeapons[] = { };
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,10},
					{dmrMag,10},
					{armag,10},
					{matmag,4},
					{glmag,4},
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5},
				agm_medic
				};
			};
};