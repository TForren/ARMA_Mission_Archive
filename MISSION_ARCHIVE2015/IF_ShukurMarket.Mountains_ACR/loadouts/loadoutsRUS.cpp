class RUS {
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_ak74m"
			#define riflemag "rhs_30Rnd_545x39_7N10_AK"
			#define riflemag_tr "rhs_30Rnd_545x39_AK_green" 

			//Rifleman AT
			#define rat "rhs_weap_rpg26"
			#define ratmag "rhs_rpg26_mag"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "rhs_weap_ak74m_folded" 
			#define smgmag "rhs_30Rnd_545x39_7N10_AK"
			#define smgmag_tr "rhs_30Rnd_545x39_AK_green"
									
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

			
			//Other AGM
			#define agm_epipen "AGM_Epipen" // For PC, SL, FTL
			#define agm_sparebarrel "AGM_SpareBarrel"
			#define agm_defuse "AGM_DefusalKit"
			#define agm_firing_device "AGM_Clacker"

		
			//=== Clothes ===

			//Uniform		
			#define default_uniform "rhs_uniform_msv_emr"
			
				
			//Headgear
			#define leader_headgear "rhs_fieldcap_digi"
			#define default_headgear "H_Watchcap_khk","H_Bandanna_khk_hs", "TRYK_H_EARMUFF", "ffaa_casco_hercules_piloto","H_Cap_headphones"

			#define default_goggles "rhs_balaclava", "rhs_scarf"
			
			//Backpack
			#define default_backpack "rhs_assault_umbts"

			
			//Vests
			#define vest_default "rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"
			#define vest_leader "rhs_vest_commander"
			
			//Face
			#define facecover "rhs_scarf"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","BWA3_ItemNaviPad","ItemCompass","tf_pnr1000a","tf_microdagr" //With GPS
			#define default_equipment "ItemMap","ItemCompass","tf_pnr1000a","tf_microdagr"
			
			//========================Class Loadouts Definitions========================
			//================Platoon Leader==================
			class PC {
				weapons[] = {"hgun_Pistol_heavy_02_F",binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					agm_default
					};
				goggles[] = {""};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{"6Rnd_45ACP_Cylinder",5}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};

			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {"rhs_weap_ak74m_2mag_camo","rhs_weap_rpg18"};
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
						{"rhs_30Rnd_545x39_7N10_AK",2}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{"rhs_30Rnd_545x39_7N10_AK",9},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"rhs_acc_tgpa","rhs_acc_pkas"};
				secKit[] = {};
			};		
			class GREN {
				weapons[] = {"rhs_weap_ak74m_gp25"};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{"rhs_VOG25P",10}
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
						{"rhs_30Rnd_545x39_7N10_AK",2}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{"rhs_30Rnd_545x39_7N10_AK",9},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {"rhs_acc_tgpa","rhs_acc_pkas"};
				secKit[] = {};
			};

};
		

		
