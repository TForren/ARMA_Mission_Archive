class CfgRespawnInventory
{

			// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]	
			// 'MERICA BlueFor Gear Script by Jords
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 		- Platoon Sgt. (as Radio Operator)
			//		SL 			- Platoon Sgt. / Section leader
			//		MED 		- medic
			//		FTL			- fire team leader (senior rifleman)
			//		RIF 		- rifleman 
			//		GER			- grenadier
			//		AR 			- automatic rifleman
			//		AAR			- assistant automatic rifleman 
			//		RAT			- rifleman (AT)
			//		MAT			- Medium AT
			//		MATA		- Medium AT assistant
			//		MARK		- marksman
			//		SN			- sniper
			//		SP			- spotter (for sniper) 
			//		VC			- vehicle commander 
			//		VG			- vehicle gunner 
			//		VD			- vehicle driver (repair) 
			//		PIL			- air vehicle pilot / co-pilot 
			//		PILR		- air vehicle co-pilot (repair) / crew chief (repair) 
			//		AIRCR		- air vehicle crew 
			//		ENG			- engineer 
			//		ENGDEMO		- engineer (demo) 
			//		ENGMINE		- engineer (mines) 
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- car/4x4/jeep
			//		V_TR		- truck
			//		V_IFV		- ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===
			
			//Scopes
			#define rifle_scope "rhsusf_acc_ACOG3"
			#define ir_laser "FHQ_acc_ANPEQ15_black"	// IR Laser
			#define flashlight "FHQ_acc_LLM01F"		// Flashlight
			
			#define m4_suppressor "muzzle_snds_H"
			#define m249_supressor "muzzle_snds_H_MG"
			
			#define holosight "FHQ_optic_HWS"
			#define holosight_x4 "FHQ_optic_HWS_G33"
			#define mrco "rhsusf_acc_ACOG3"
			
			#define m249_aimpoint "rhsusf_acc_compm4"
			#define m240_elcan "rhsusf_acc_ELCAN"
			#define sniper_scope "rhsusf_acc_LEUPOLDMK4"
			#define marksman_scope "hlc_optic_LRT_m14"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_m4_carryhandle"
			#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red" 
			
			//Auto-Rifleman
			#define ar "rhs_weap_m249_pip"
			#define armag "rhsusf_100Rnd_556x45_soft_pouch"
			#define armag_tr "rhsusf_100Rnd_556x45_soft_pouch"
			
						
			//MNMG
			#define mmg "rhs_weap_m240B"
			#define mmgmag "rhsusf_100Rnd_762x51"
			
			
			//Rifleman AT
			#define rat "rhs_weap_M136"
			#define ratmag "rhs_m136_mag"
			
			//Medium AT
			#define mat "rhs_weap_fgm148"
			#define matmag "rhs_fgm148_magazine_AT"
			
			// Rifle with GL and HE grenades - CO, DC, FTLs, GERs
			#define glrifle "rhs_m4a1_m320"
			#define glriflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define glriflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
			#define glmag 	{"rhs_mag_M441_HE",3}, \
							{"rhs_mag_M433_HEDP",2}
			
			//Marksman
			#define dmr "hlc_rifle_M21"
			#define dmrMag "hlc_20Rnd_762x51_B_M14"
			
			//Sniper
			#define sniper "hlc_rifle_psg1"
			#define snipermag "hlc_20rnd_762x51_b_G3"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "hlc_smg_mp5n" 
			#define smgmag "hlc_30Rnd_9x19_B_MP5"
			#define smgmag_tr "30Rnd_45ACP_Mag_SMG_01_tracer_green"
			
			// Smoke for FTLs, Squad Leaders, etc
			#define glsmoke {"rhs_mag_M714_white",3},  \
								{"rhs_mag_M715_green",2}, \
								{"rhs_mag_M713_red",2} , \
								{"rhs_mag_M716_yellow",2}

			// Flare gl grenades - CO, DC, FTLs
			#define glflare 	{"rhs_mag_M585_white",3}, \
									{"rhs_mag_M662_red",2}, \
									{"rhs_mag_M661_green",2}
									
			// Grenades
			#define grenade "HandGrenade"
			#define smokegrenadewhite "SmokeShell"
			#define smokegrenadegreen "SmokeShellGreen"
			#define handFlareRed "AGM_HandFlare_Red"
			#define handFlareGreen "AGM_HandFlare_Green"
			#define handFlareWhite "AGM_HandFlare_White"
			#define handFlareYellow "AGM_HandFlare_Yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemblue "Chemlight_blue"
			
			// AGM equipment - what everyone should have
			#define agm_default	{"AGM_Bandage",2}, \
								{"AGM_Morphine",1}, \
								{"AGM_EarBuds",1}

			//Override for a Medic					
			#define agm_medic	{"AGM_Bandage",20}, \
								{"AGM_Morphine",10}, \
								{"AGM_Epipen",10}, \
								{"AGM_Bloodbag",3}, \
								{"AGM_EarBuds",1}
			
			//Other AGM
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
			class WEST1 {
				displayName = "Platoon Leader";
				show = "side group _this == west";
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2},
						glmag,
						glsmoke,
						glflare
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{glriflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2},
						{glmag,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope,ir_laser};
				secKit[] = {};
			};
			//================Platoon Sgt. (RTO)==================
			class WEST2 {
				displayName = "Platoon Leader";
				show = "side group _this == west";
				weapons[] = {
					"arifle_MXC_F",
					"hgun_P07_F",
					"Binocular"
				};
				magazines[] = {
					"30Rnd_65x39_caseless_mag",
					"30Rnd_65x39_caseless_mag",
					"30Rnd_65x39_caseless_mag",
					"30Rnd_65x39_caseless_mag",
					"16Rnd_9x21_Mag",
					"16Rnd_9x21_Mag",
					"SmokeShell",
					"SmokeShell",
					"SmokeShell",
					"Chemlight_blue",
					"Chemlight_blue",
					"Chemlight_blue",
					"HandGrenade",
					"HandGrenade"
				};
				items[] = {
					"FirstAidKit"
				};
				linkedItems[] = {
					"V_Chestrig_khk",
					{"H_Watchcap_blk","H_MilCap_mcamo","H_Cap_headphones",""},
					"optic_Aco",
					"acc_flashlight",
					{"G_Squares","G_Shades_Black","","",""},
					"ItemMap",
					"ItemCompass",
					"ItemWatch",
					"ItemRadio"
				};
				uniformClass[] = {"U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_tshirt","U_Rangemaster"};
				backpack = "B_AssaultPack_mcamo";
			};
			//================Squad Leader (deputy leader)==================
			class SL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2},
						glmag,
						glsmoke,
						glflare
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{glriflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {glasses};
				vest[] = {vest_ftl_leader};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2},
						{glmag,2}
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
					backpackMagazines[] = {
						{riflemag,2}
					};
					backpackItems[] = {
						agm_medic,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Team Leader==================
			class FTL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2},
						glmag,
						glsmoke,
						glflare
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{glriflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2}
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
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Auto-Rifleman (Machine Gunner)==================
			class AR {
				weapons[] = {ar};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_sparebarrel,1},
						{chemblue,2},
						{grenade,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smokegrenadewhite,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,1}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {m249_aimpoint,ir_laser};
				secKit[] = {};
			};
			//================Auto-Rifleman Assistant==================
			class AAR {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			
			//================ machine Gunner ==================
			class MMG {
				weapons[] = {mmg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mmgmag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_sparebarrel,1},
						{chemblue,2},
						{grenade,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smokegrenadewhite,2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_default};
					vestMagazines[] = {
						{mmgmag,2}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"rhsusf_acc_ELCAN",ir_laser};
				secKit[] = {};
			};
			//================MG Assistant==================
			class MMGA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mmgmag,5}
					};
					backpackItems[] = {
						agm_default,
						{agm_sparebarrel,1},
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{ratmag,1}
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Grenadier==================
			class GER {
				weapons[] = {glrifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2},
						glmag,
						glsmoke
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{glriflemag,2},
						{glriflemag_tr, 2}
					};
					uniformItems[] = {
					};
				goggles[] = {glasses};
				vest[] = {vest_grenadier};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			}; 
			//================Medium (AT)==================
			class MAT {
				weapons[] = {rifle,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Medium (AT) Assistant==================
			class MATA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{smokegrenadewhite,2},
						{grenade,2}
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
				
				priKit[] = {holosight,ir_laser};
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
						{smokegrenadewhite,2},
						{grenade,2}
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
						{smokegrenadewhite,3},
						{grenade,2}
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
						{smokegrenadewhite,2},
						{grenade,2}
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
						{smokegrenadewhite,2},
						{grenade,2}
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
						{smgmag,7},
						{smgmag_tr,2},
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
						{smokegrenadewhite,2},
						{grenade,2}
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
						{smgmag,7},
						{smgmag_tr,2},
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
						{smokegrenadewhite,2},
						{grenade,2}
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
						{smgmag,7},
						{smgmag_tr,2},
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
						{smokegrenadewhite,2},
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
						{smokegrenadewhite,2}
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
						{riflemag,7},
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
						{smokegrenadewhite,2}
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
						{riflemag,7},
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
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holosight,ir_laser};
				secKit[] = {};
			};
			//================Vehicle Loadouts==================
			class V_CAR {
				vehCargoWeapons[] = { 
					{rifle, 2},
					{rat, 2}
					};
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,8},
					{armag,5},
					{ratmag,2},
					{glmag,5},
					{smokegrenadewhite,5},
					{grenade,5}
				};
				vehCargoItems[] = { 
				agm_medic
				};
				vehCargoRucks[] = { };
			};	
			class V_TR {
				vehCargoWeapons[] = { 
					{rifle, 2},
					{rat, 4}
					};
				vehCargoMagazines[] = {
					{riflemag,40},
					{riflemag_tr,10},
					{armag,10},
					{ratmag,4},
					{glmag,10},
					{smokegrenadewhite,5},
					{grenade,5}
				};
				vehCargoItems[] = { 
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
					{glmag,10},
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5},
				agm_medic
				};
			};

		

};