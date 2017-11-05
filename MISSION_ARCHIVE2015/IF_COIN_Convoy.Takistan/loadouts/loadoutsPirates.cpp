class Pir {
			// Example: [this,"RUS","PL"] call tb3_fLoadout; [this, class, loadout]	
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
			//		FTL			- fire team leader (senior rifleman)
			//		RIF 		- rifleman 
			//		AR 			- automatic rifleman
			//		ARR			- assistant automatic rifleman 
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
			#define rifle_scope "rhs_acc_1p29"
			#define marksman_scope "rhs_acc_pso1m2"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_ak74m"
			#define riflemag "rhs_30Rnd_545x39_7N10_AK"	


			// Better Riflemen (Leaders)
			#define rifleL "rhs_weap_ak74m_2mag_camo"
			#define rifleLmag "rhs_30Rnd_545x39_AK"
			#define rifleLmag_tr "rhs_45Rnd_545X39_AK_Green" 
			
			//Auto-Rifleman
			#define ar "rhs_weap_rpk74"
			#define armag "rhs_45Rnd_545X39_AK"
			#define armag_tr "rhs_45Rnd_545X39_AK_Green"
			
			//Rifleman AT
			#define rat "rhs_weap_rpg18"
			#define ratmag "rhs_rpg18_mag"
			
			//Medium AT
			#define mat "rhs_weap_rpg7_pgo"
			#define matmag "rhs_rpg7_PG7VL_mag"
			#define matmag2 "rhs_rpg7_OG7V_mag"
			
			
			//Marksman/Sniper
			#define dmr "rhs_weap_svdp_wd"
			#define dmrMag "rhs_10Rnd_762x54mmR_7N1"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "rhs_weap_aks74u" 
			#define smgmag "rhs_30Rnd_545x39_AK"
			#define smgmag_tr "rhs_30Rnd_545x39_AK"
									
			// Grenades
			#define grenade "rhs_mag_rgd5"
			#define smokegrenadewhite "rhs_mag_rdg2_white"
			#define smokegrenadegreen "rhs_mag_nspd_green"
			#define handFlareRed "rhs_mag_nspn_red"
			#define handFlareGreen "rhs_mag_nspn_green"
			#define handFlareYellow "rhs_mag_nspn_yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemred "Chemlight_red"
			
			// AGM equipment - what everyone should have
			#define agm_default	{"AGM_Bandage",2}, \
								{"AGM_Morphine",1}, \
								{"AGM_EarBuds",1}, \
								{"AGM_CableTie", 1}

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

			
			#define default_uniform "LOP_U_Afg_civ_01","LOP_U_Afg_civ_02","LOP_U_Mil_01","LOP_U_Mil_02","LOP_U_Mil_03","LOP_U_Mil_04", \
			"TRYK_U_B_BLKBLK_R_CombatUniform", "TRYK_U_B_BLKBLK_R_CombatUniform", "TRYK_U_B_BLKBLK_R_CombatUniform", \
			"LOP_U_ISIS_Fatigue_04", "LOP_U_ISIS_Fatigue_03", "LOP_U_ISIS_Fatigue_02", "LOP_U_ISIS_Fatigue_01"
			

			//------Headgear-----
			#define leader_headgear "rhs_fieldcap_digi"
			
			//All the pirate/rebel lookin headgear
			#define default_headgear "H_ShemagOpen_tan", "LOP_H_Shemag_ISIS", "", "", "", ""
			
			
			//Goggles
			#define default_goggles "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_sport","G_Balaclava_blk", "G_Balaclava_blk", "G_Balaclava_blk"
			//-----------------
			
	
			//Backpack
			#define rpg_backpack "rhs_rpg"
			
			//Vests  -------- "TRYK_V_ChestRig_L", currently causes UI error when opening inventory. Left out for now. 
			#define vest_default "V_BandollierB_cbr", "rhs_vydra_3m","V_TacVest_oli", "V_Chestrig_rgr", \
			"V_Chestrig_khk", "V_Chestrig_blk", "V_Chestrig_oli", "V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_khk", "V_BandollierB_oli", \
			"V_TacVest_blk", "V_TacVest_brn", "V_TacVest_camo", "V_TacVest_khk", "V_I_G_resistanceLeader_F"
			
			#define vest_AT "rhs_vydra_3m","V_TacVest_oli", "V_Chestrig_rgr", \
			"V_Chestrig_khk", "V_Chestrig_blk", "V_Chestrig_oli", "V_TacVest_blk", "V_TacVest_brn", "V_TacVest_camo", "V_TacVest_khk", "V_I_G_resistanceLeader_F"
	
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","BWA3_ItemNaviPad","ItemCompass","tf_pnr1000a","tf_microdagr" //With GPS
			#define default_equipment "ItemMap","ItemCompass","tf_pnr1000a","tf_microdagr"
			
			//========================Class Loadouts Definitions========================
			//================Leader==================
			class LD {
				weapons[] = {rifleL};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {""};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					{rifleLmag,1},
					{handFlareRed, 1}
					};
					uniformItems[] = {
					agm_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{rifleLmag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};		
			//================Rifleman==================
			class RIF {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {""};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					agm_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
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
				backpack[] = {""};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smokegrenadewhite,2}
					};
					uniformItems[] = {
					agm_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {""};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					agm_default,
					{ratmag,1}
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium (AT)==================
			class MAT {
				weapons[] = {smg,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {rpg_backpack};
					backpackMagazines[] = {	
					{matmag, 2},
					{matmag2, 2}
					};
					backpackItems[] = {
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,2}
					};
					uniformItems[] = {
						agm_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_AT};
					vestMagazines[] = {
						{smgmag,7}
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
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Designated Marksman==================
			class DM {
				weapons[] = {dmr,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {""};
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
						{dmrMag,4}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{dmrMag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};

			//================SAPPER (DEMO)==================
			class SAP {
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
				goggles[] = {default_goggles};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,7}
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
					{dmrMag,5},
					{armag,5},
					{matmag,3},
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
					{dmrMag,20},
					{armag,15},
					{matmag,6},
					{glmag,15}
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
		

		
