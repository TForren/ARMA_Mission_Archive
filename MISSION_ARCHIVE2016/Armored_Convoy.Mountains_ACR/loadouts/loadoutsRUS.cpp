class RUS {
			// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]	
			// Russian OpFor Gear Script by Jords
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 		- Platoon Sgt. (as Radio Operator)
			//		SL 			- Platoon Sgt. / Section leader
			//		MED 		- medic
			//		FTL			- fire team leader (senior rifleman) Note: Remove GL
			//		RIF 		- rifleman 
			//		AR 			- automatic rifleman
			//		ARR			- assistant automatic rifleman 
			//		RAT			- rifleman (AT)
			//		MAT			- Medium AT
			//		MATA		- Medium AT assistant
			//		MARK		- marksman Note: remove svd, add marksman scope
			//		SN			- sniper
			//		SP			- spotter (for sniper) 
			//		VC			- vehicle commander 
			//		VG			- vehicle gunner 
			//		VD			- vehicle driver (repair) 
			//		PIL			- plane vehicle pilot / co-pilot 
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
			#define rifle_scope "rhs_acc_1p29"
			#define red_dot_scope "rhs_acc_pkas"
			#define marksman_scope "rhs_acc_pso1m2"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_ak74m"
			#define riflemag "rhs_30Rnd_545x39_7N10_AK"
			#define riflemag_tr "rhs_30Rnd_545x39_AK_green" 
			
			//Auto-Rifleman
			#define ar "rhs_weap_pkp"
			#define armag "rhs_100Rnd_762x54mmR"
			#define armag_tr "200Rnd_65x39_cased_Box_Tracer"
			
			//Rifleman AT
			#define rat "rhs_weap_rpg26"
			#define ratmag "rhs_rpg26_mag"
			
			//Medium AT
			#define mat "rhs_weap_rpg7_pgo"
			#define matmag "rhs_rpg7_PG7VL_mag"
			
			// Rifle with GL and HE grenades - CO, DC, FTLs
			#define glrifle "rhs_weap_ak74m_gp25"
			#define glriflemag "rhs_30Rnd_545x39_AK"
			#define glriflemag_tr "rhs_30Rnd_545x39_AK_green"
			#define glmag "rhs_VOG25P"
			
			//Marksman/Sniper
			#define dmr "rhs_weap_svdp_pso1"
			#define sniper "rhs_weap_svdp_wd" // has camo skin
			#define dmrMag "rhs_10Rnd_762x54mmR_7N1"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "rhs_weap_ak74m_folded" 
			#define smgmag "rhs_30Rnd_545x39_7N10_AK"
			#define smgmag_tr "rhs_30Rnd_545x39_AK_green"
			
			// Smoke for FTLs, Squad Leaders, etc
			#define glsmoke {"rhs_GRD40_White",3},  \
								{"rhs_GRD40_Green",2}, \
								{"rhs_GRD40_Red",2} 

			// Flare gl grenades - CO, DC, FTLs
			#define glflare 	{"rhs_VG40OP_white",3}, \
									{"rhs_VG40OP_red",2}, \
									{"rhs_VG40OP_green",2}
									
			// Grenades
			#define grenade "rhs_mag_rgd5"
			#define smokegrenadewhite "rhs_mag_rdg2_white"
			#define smokegrenadegreen "rhs_mag_nspd_green"
			#define handFlareRed "rhs_mag_nspn_red"
			#define handFlareGreen "rhs_mag_nspn_green"
			#define handFlareWhite "rhs_mag_nspn_red"
			#define handFlareYellow "rhs_mag_nspn_yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemred "Chemlight_red"
			
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
			#define at_mine "rhs_mine_tm62m_mag"
			#define ap_mine "rhs_mine_pmn2_mag"
			#define minedetector "MineDetector"
			#define binoculars "Binocular"
			
			//Radio 
			#define long_range "tf_fadak" //Long range - Short-wave
					
			//=== Clothes ===

			//Uniform		
			#define default_uniform "rhs_uniform_msv_emr"
			#define pilot_uniform "rhs_uniform_df15"
			#define sniper_uniform "rhs_uniform_flora"
				
			//Headgear
			#define leader_headgear "rhs_fieldcap_digi"
			#define default_headgear "rhs_6b28"
			#define vcrew_headgear "rhs_tsh4_ess"
			#define pilot_headgear "rhs_zsh7a"
			#define aircrew_headgear "rhs_zsh7a_mike"
			#define sniper_headgear "rhs_6b28_flora_bala"
			
			//Backpack
			#define default_backpack "rhs_assault_umbts"
			#define rpg_backpack "rhs_rpg"
			#define pilot_backpack "TRYK_B_Coyotebackpack_BLK"
			#define engineer_backpack "rhs_assault_umbts_engineer"
			#define long_range_backpack "tf_mr3000_rhs"
			
			//Vests
			#define vest_default "rhs_6b23_digi_rifleman"
			#define vest_grenadier "rhs_6b23_digi_grenadier"
			#define vest_medic "rhs_6b23_digi_medic"
			#define vest_engineer "rhs_6b23_digi_engineer"
			#define vest_sniper "rhs_6b23_digi_sniper"
			#define vest_vehiclecrew_commander "rhs_6b23_digi_crewofficer"
			#define vest_vehiclecrew "rhs_6b23_digi_crew"
			#define vest_leader "rhs_6b23_digi_6sh92_headset_mapcase"
			
			//Face
			#define facecover "rhs_scarf"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_pnr1000a","tf_microdagr" //With GPS
			#define default_equipment "ItemMap","ItemCompass","tf_pnr1000a","tf_microdagr"
			
			//========================Class Loadouts Definitions========================
			//================Platoon Leader==================
			class PC {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{smokegrenadewhite,2},
						{grenade,2},
						{glmag,3},
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
				goggles[] = {""};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2},
						{glmag,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope};
				secKit[] = {};
			};
			//================Platoon Sgt. (RTO)==================
			class RTO {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {long_range_backpack};
					backpackMagazines[] = {
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{smokegrenadewhite,2},
						{grenade,2},
						{glmag,3},
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
				goggles[] = {""};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2},
						{glmag,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope};
				secKit[] = {};
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
						{chemred,2},
						{smokegrenadewhite,2},
						{grenade,2},
						{glmag,3},
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
				goggles[] = {""};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,5},
						{glriflemag_tr,2},
						{glmag,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {rifle_scope};
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
						{chemred,2},
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
				goggles[] = {""};
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
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{riflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemred,2},
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
				goggles[] = {""};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {red_dot_scope};
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
						{chemred,2},
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
				goggles[] = {""};
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
						{chemred,2},
						{grenade,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smokegrenadewhite,2}
					};
					uniformItems[] = {
					};
				goggles[] = {""};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,1}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};
			//================Auto-Rifleman Assistant==================
			class ARR {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
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
				goggles[] = {""};
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
						{ratmag,1}
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
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
				goggles[] = {""};
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
			//================Medium (AT)==================
			class MAT {
				weapons[] = {rifle,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {rpg_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
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
				goggles[] = {""};
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
			//================Medium (AT) Assistant==================
			class MATA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {rpg_backpack};
					backpackMagazines[] = {	
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
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
				goggles[] = {""};
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
			//================Designated Marksman==================
			class MARK {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
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
				goggles[] = {""};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
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
						{chemred,2},
						{smokegrenadewhite,3},
						{grenade,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
						{dmrMag,4}
					};
					uniformItems[] = {
					};
				goggles[] = {""};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{dmrMag,12}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
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
						{chemred,2},
						{smokegrenadewhite,2},
						{grenade,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						{long_range,1}
					};
				goggles[] = {""};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
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
						{chemred,2},
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
				goggles[] = {""};
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
						{chemred,2},
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
				goggles[] = {""};
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
						{chemred,2},
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
				goggles[] = {""};
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
				uniform[] = {pilot_uniform};
					uniformMagazines[] = {
						{smgmag,3},
					};
					uniformItems[] = {
						agm_default
					};
				goggles[] = {""};
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
				backpack[] = {pilot_backpack};
					backpackMagazines[] = {
						{smgmag,3}
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
						{smokegrenadewhite,2},
						{toolkit,1}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {pilot_uniform};
					uniformMagazines[] = {
						{smgmag,3},
					};
					uniformItems[] = {
					};
				goggles[] = {""};
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
				uniform[] = {pilot_uniform};
					uniformMagazines[] = {
						{smgmag,3}
					};
					uniformItems[] = {
						agm_default
					};
				goggles[] = {""};
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
						{chemred,2},
						{smokegrenadewhite,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {""};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
						{chemred,2},
						{smokegrenadewhite,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {""};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
				goggles[] = {""};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
					{ratmag,4},
					{glmag,5}
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
					{dmrMag,30},
					{armag,20},
					{matmag,10},
					{glmag,20}
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
					{glmag,10},
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5},
				agm_medic
				};
			};
};
		

		
