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
			#define rifle "rhs_weap_m4_carryhandle"
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
			#define rifle_scope "rhsusf_acc_ACOG3"
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
			#define default_uniform "rhs_uniform_cu_ocp"
				
			//Headgear
			#define leader_headgear "rhsusf_patrolcap_ocp", "rhs_Booniehat_ocp"
			#define default_headgear "rhsusf_ach_bare_tan", "rhsusf_ach_helmet_ocp", "rhsusf_ach_helmet_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_headset_ess_ocp"
			#define vcrew_headgear "rhsusf_cvc_ess"
			#define pilot_headgear "H_PilotHelmetHeli_B"
			#define aircrew_headgear "H_PilotHelmetHeli_B"
			#define sniper_headgear "TRYK_H_ghillie_over" 
			
			//Backpack
			#define default_backpack "rhsusf_assault_eagleaiii_ocp"
			#define crew_backpack "B_AssaultPack_cbr"
			#define engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
			#define long_range_backpack "tf_rt1523g_big_rhs"
			
			//Vests
			#define vest_default "rhsusf_iotv_ocp_rifleman"
			#define vest_grenadier "rhsusf_iotv_ocp_grenadier"
			#define vest_saw "rhsusf_iotv_ocp_SAW"
			#define vest_medic "rhsusf_iotv_ocp_medic"
			#define vest_engineer "rhsusf_iotv_ocp_repair"
			#define vest_sniper "rhsusf_iotv_ocp_rifleman"
			#define vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
			#define vest_vehiclecrew "rhsusf_iotv_ocp_repair"
			#define vest_leader "rhsusf_iotv_ocp_squadleader"
			#define vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
			
			//Face
			#define facecover "TRYK_Shemagh_shade"
			#define glasses "BWA3_G_Combat_Orange", "BWA3_G_Combat_Clear", "BWA3_G_Combat_Black", "TRYK_Shemagh_ESS", "TRYK_Shemagh_shade"
			
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
						agm_default,
						{flashlight,1},
						{agm_epipen,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,1}
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint};
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
						agm_default,
						{flashlight,1},
						{agm_epipen,1},
						{chemblue,2},
						{smokewhite,1},
						{frag,1}

					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Squad Leader==================
			class SL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						glmag,
						{agm_epipen,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2},
						{glstun,2},
						{glbuck,2}

					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						glsl,
						{riflemag,5}

					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {aimpoint};
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
				
				priKit[] = {};
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
				vest[] = {vest_leader};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
				
				priKit[] = {};
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
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Grenadier==================
			class GRE {
				weapons[] = {glrifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag_tr,1},
						{armag,1}
					};
					backpackItems[] = {
						agm_default,
						{flashlight,1},
						{chemblue,2},
						{frag,2},
						{glsmoke,4},						
						glmag
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
						glmag
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
				vest[] = {vest_saw};
					vestMagazines[] = {
						{armag,6}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
				
				priKit[] = {};
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
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Designated Marksman==================
			class MARK {
				weapons[] = {dmr,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{dmrMag,4}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{dmrMag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};
			//================Sniper==================
			class SN {
				weapons[] = {sniper};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,3},
						{frag,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{snipermag,4}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{snipermag,12}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {sniper_scope};
				secKit[] = {};
			};
			//================Spotter==================
			class SP {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight_x4,ir_laser};
				secKit[] = {};
			};
			//================Weapons Leader==================
			class WSL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag_tr,2}
					};
					backpackItems[] = {
						agm_default,
						glmag,
						{flashlight,1},
						{agm_epipen,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2},
						{glstun,2}

					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						glsl,
						{riflemag,5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Machine Gunner==================
			class MG {
				weapons[] = {mg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mgmag,2}
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
				vest[] = {vest_saw};
					vestMagazines[] = {
						{mgmag,1}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Machine Gunner Assistant.==================
			class MGA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mgmag,2}
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
				
				priKit[] = {};
				secKit[] = {};
			};
		//================Ammo Bearer==================
			class AB {
                weapons[] = {rifle};
                magazines[] = { }; //do not use if using specific allocation of magazines
                backpack[] = {default_backpack};
					backpackMagazines[] = {
							{mgmag,4}
                    };
					backpackItems[] = {
                        agm_default,
                        {agm_sparebarrel,1},
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
                    items[] = {     }; //do not use if using specific allocation of items
                               
                    priKit[] = {};
                    secKit[] = {};
            };
			//================Vehicle Commander==================
			class VC {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_vehiclecrew_commander};
					vestMagazines[] = {
						{smgmag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Driver (Repair)==================
			class VD {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_vehiclecrew};
					vestMagazines[] = {
						{smgmag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Gunner==================
			class VG {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_vehiclecrew};
					vestMagazines[] = {
						{smgmag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Pilot==================
			class PIL {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2}
					};
				headgear[] = {pilot_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,3},
					};
					uniformItems[] = {
						agm_default
					};
				goggles[] = {glasses};
				vest[] = {};
					vestMagazines[] = {
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Pilot (Repair)==================
			class PILR {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {crew_backpack};
					backpackMagazines[] = {
						{smgmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokewhite,2},
						{toolkit,1}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,3},
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {};
					vestMagazines[] = {
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Air Crew==================
			class AIRCR {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,3}
					};
					uniformItems[] = {
						agm_default
					};
				goggles[] = {glasses};
				vest[] = {};
					vestMagazines[] = {
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Engineer==================
			class ENG {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{chemblue,2},
						{smokewhite,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Engineer (DEMO)==================
			class ENGDEMO {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{explosive,5},
						{agm_firing_device,1},
						{chemblue,2},
						{smokewhite,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Engineer (Mine)==================
			class ENGMINE {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{minedetector,1},
						{ap_mine,10},
						{at_mine,5}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Vehicle Loadouts==================
			class V_CAR {
				vehCargoWeapons[] = { };
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,8},
					{dmrMag,5},
					{armag,5},
					{matmag,3},
					glmag
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
					glmag
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,10},
				{grenade,10},
				agm_medic
				};
				vehCargoRucks[] = { };
			};
			class V_CAR_ENG {
				vehCargoWeapons[] = { 
					{rifle, 2}
					};
				vehCargoMagazines[] = {
					{riflemag,15},
					{riflemag_tr,4},
					{armag,2},
					{smokegrenadewhite,3},
					{grenade,3}
				};
				vehCargoItems[] = { 
				agm_medic,
				{"AGM_DefusalKit", 4},
				{"AGM_Clacker", 4},
				{"DemoCharge_Remote_Mag", 3},
				{"SatchelCharge_Remote_Mag", 1}
				};
				vehCargoRucks[] = {
				{"APOBS_A", 4},
				{"APOBS_B", 4},
				};
			};
			class V_IFV {
				vehCargoWeapons[] = { };
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,10},
					{dmrMag,10},
					{armag,10},
					{matmag,4},
					glmag
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5},
				agm_medic
				};
			};
};