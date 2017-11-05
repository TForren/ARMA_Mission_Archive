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


	//========================Equipment Definitions========================
	//=== Weapons ===

	//Scopes
	#define rifle_scope "rhs_acc_1p29"
	#define red_dot_scope "rhs_acc_pkas"
	#define marksman_scope "rhs_acc_pso1m2"

	// Standard Riflemen (Assistants, Rifleman)
	#define rifle "hlc_rifle_ak47"
	#define riflemag "hlc_30Rnd_762x39_b_ak"
	#define riflemag_tr "hlc_30Rnd_762x39_b_ak" 

	//Auto-Rifleman
	#define ar "hlc_rifle_rpk"
	#define armag "hlc_75Rnd_762x39_m_rpk"
	#define armag_tr "hlc_75Rnd_762x39_m_rpk"

	//Rifleman AT
	#define rat "rhs_weap_rpg26"
	#define ratmag "rhs_rpg26_mag"

	//Medium AT
	#define mat "rhs_weap_rpg7_pgo"
	#define mat_heat_mag "rhs_rpg7_PG7VL_mag"
	#define mat_tandem_mag "rhs_rpg7_PG7VR_mag"
	#define mat_frag_mag "rhs_rpg7_OG7V_mag"
	#define mat_thermobaric_mag "rhs_rpg7_TBG7V_mag"

	// Rifle with GL and HE grenades - CO, DC, FTLs
	#define glrifle "rhs_weap_ak74m_gp25"
	#define glriflemag "rhs_30Rnd_545x39_AK"
	#define glriflemag_tr "rhs_30Rnd_545x39_AK_green"
	#define glmag "rhs_VOG25P"

	//Marksman/Sniper
	#define dmr "rhs_weap_svdp_pso1"
	#define sniper "rhs_weap_svdp_wd" // has camo skin
	#define dmrmag "rhs_10Rnd_762x54mmR_7N1"

	// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
	#define smg "hlc_rifle_aks74u" 
	#define smgmag "hlc_30Rnd_545x39_B_AK"
	#define smgmag_tr "hlc_30Rnd_545x39_t_ak"

	//Pistol
	#define pistol "RH_cz75"
	#define pistolmag "RH_16Rnd_9x19_CZ"
	#define pistolLight "RH_A26"
	
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
	#define agm_default	{"ACE_fieldDressing",2}, \
						{"ACE_morphine",1}, \
						{"ACE_EarPlugs",1}

	//Override for a Medic					
	#define agm_medic	{"ACE_fieldDressing",20}, \
						{"ACE_morphine",10}, \
						{"ACE_epinephrine",10}, \
						{"ACE_bloodIV_500",3}, \
						{"ACE_EarPlugs",1}

	//Other AGM
	#define agm_epipen "ACE_epinephrine" // For PC, SL, FTL
	#define agm_sparebarrel "ACE_SpareBarrel"
	#define agm_defuse "ACE_DefusalKit"
	#define agm_firing_device "ACE_Clacker"
	#define cable_tie "ACE_CableTie"
	#define nana "ACE_Banana"

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
	#define default_uniform "LOP_U_Civ_01", "LOP_U_Civ_02", "LOP_U_Civ_02", "LOP_U_Civ_03", "LOP_U_Civ_04", "LOP_U_Civ_05", "LOP_U_Civ_06", "LOP_U_ChDKZ_Fatigue_04"
	#define leader_uniform "LOP_U_ChDKZ_Bardak", "LOP_U_ChDKZ_Lopotev"
	#define sniper_uniform "rhs_uniform_flora"
		
	//Headgear
	#define leader_headgear "SRCW_Shemagh_Black", "SRCW_Shemagh_Green", "SRCW_Shemagh_SpectreSKVO", "SRCW_Shemagh_UkrDigi", "LOP_H_Shemag_IT"
	#define default_headgear "SRCW_Shemagh_Black", "SRCW_Shemagh_Green", "SRCW_Shemagh_SpectreSKVO", "SRCW_Shemagh_UkrDigi", "LOP_H_Shemag_IT"

	//Backpack
	#define default_backpack "rhs_assault_umbts"
	#define rpg_backpack "rhs_rpg"

	//Vests
	#define vest_default "TRYK_LOC_AK_chestrig_OD", "TRYK_LOC_AK_chestrig_TAN", "rhs_vydra_3m", "UA_BeltMGbezflg"
	#define vest_grenadier "TRYK_LOC_AK_chestrig_OD", "TRYK_LOC_AK_chestrig_TAN", "rhs_vydra_3m", "UA_BeltMGbezflg"
	#define vest_medic "TRYK_LOC_AK_chestrig_OD", "TRYK_LOC_AK_chestrig_TAN", "rhs_vydra_3m", "UA_BeltMGbezflg"
	#define vest_leader "RNR_Kora_p2_ak", "RNR_Kora_p2_ak_SpSpg", "rhs_vydra_3m"

	//Face
	#define facecover "rhs_scarf"

	//radio 
	#define shortrange "ACRE_PRC343"
	//=== EQUIPMENT ===
	//MUST BE ONE LINE
	#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch" //With GPS
	#define default_equipment "ItemMap","ItemCompass","ItemWatch"

	//========================Class Loadouts Definitions========================
	//================Squad Leader (deputy leader)==================
	class SL {
		weapons[] = {rifle,pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {"TRYK_B_Alicepack"};
			backpackItems[] = {
				{cable_tie, 2},
				{shortrange,1}
			};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{riflemag,2},
				{pistolmag,3}
			};
			uniformItems[] = {
				agm_default,
				{agm_epipen,1}
			};
		goggles[] = {""};
		vest[] = {vest_leader};
			vestMagazines[] = {
				{riflemag,5},
				{riflemag_tr,2}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {"rhs_acc_pkas"};
		secKit[] = {pistolLight};
	};
	//================Team Leader==================
	class FTL {
		weapons[] = {rifle,pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {"TRYK_B_Alicepack"};
			backpackItems[] = {
				{cable_tie, 2},
				{shortrange,1}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
			};
			uniformItems[] = {
				agm_default,
				{agm_epipen,1},
				{cable_tie, 2}
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{smokegrenadewhite,2},
				{pistolmag,3}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of item
		
		priKit[] = {red_dot_scope};
		secKit[] = {pistolLight};
	};
	//================Rifleman==================
	class RIF {
		weapons[] = {rifle,pistol};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {"TRYK_B_Alicepack"};
			backpackItems[] = {
				{cable_tie, 2},
				{shortrange,1}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{riflemag,1}
			};
			uniformItems[] = {
			agm_default
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{riflemag,7},
				{pistolmag, 3}
			};
			vestItems[] = {
				};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {};
		secKit[] = {pistolLight};
	};
	//================Auto-Rifleman (Machine Gunner)==================
	class AR {
		weapons[] = {ar,pistol};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {"TRYK_B_Alicepack"};
			backpackMagazines[] = {
				{armag,3}
			};
			backpackItems[] = {
				agm_default,
				{cable_tie, 2},
				{shortrange,1}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{smokegrenadewhite,2},
				{pistolmag,3}
			};
			uniformItems[] = {
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{armag,5}
			};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {};
		secKit[] = {pistolLight};
	};
	//================Medium (AT)==================
	class MAT {
		weapons[] = {rifle,mat};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {rpg_backpack};
			backpackMagazines[] = {	
				{mat_heat_mag,2},
				{mat_frag_mag,1},
				{mat_thermobaric_mag,1}
			};
			backpackItems[] = {
			{cable_tie, 2}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{riflemag,1}
			};
			uniformItems[] = {
			agm_default,
			{shortrange,1}
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{riflemag,7},
			};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {};
		secKit[] = {pistolLight};
	};
	//================Designated Marksman==================
	class MARK {
		weapons[] = {dmr,pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{dmrmag,2},
				{pistolmag, 3}
			};
			uniformItems[] = {
			agm_default,
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{dmrmag,7}
			};
			vestItems[] = {
				{cable_tie, 2},
				{shortrange,1}
			};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {marksman_scope};
		secKit[] = {pistolLight};
	};
};
		

		
