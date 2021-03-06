class TAK {
// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]	
// Russian OpFor Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them

//		Infantry Loadouts
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

//		ENG			- engineer 




//========================Equipment Definitions========================
//=== Weapons ===

//Scopes
#define rifle_scope "rhs_acc_1p29"
#define red_dot_scope "rhs_acc_pkas"
#define marksman_scope "rhs_acc_pso1m2"

// Standard Riflemen (Assistants, Rifleman)
#define rifle "hlc_rifle_ak74_dirty"
#define riflemag "hlc_30Rnd_545x39_B_AK"
#define riflemag_tr "hlc_30Rnd_545x39_B_AK" 

//Auto-Rifleman
#define ar "hlc_rifle_rpk74n"
#define armag "hlc_45Rnd_545x39_t_rpk"
#define armag_tr "hlc_45Rnd_545x39_t_rpk"

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
#define glrifle "hlc_rifle_aks74_GL"
#define glriflemag "hlc_30Rnd_545x39_B_AK"
#define glriflemag_tr "hlc_30Rnd_545x39_B_AK"
#define glmag "hlc_VOG25_AK"

//Marksman/Sniper
#define dmr "rhs_weap_svdp_pso1"
#define sniper "rhs_weap_svdp_wd" // has camo skin
#define dmrMag "rhs_10Rnd_762x54mmR_7N1"

// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
#define smg "hlc_rifle_aks74u" 
#define smgmag "hlc_30Rnd_545x39_B_AK"
#define smgmag_tr "hlc_30Rnd_545x39_t_ak"

//Pistol
#define pistol "rhs_acc_1p29"
#define pistolmag "RH_6Rnd_45ACP_Mag"

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
#define default_uniform "LOP_U_Mil_01", "LOP_U_Mil_02", "LOP_U_Mil_03", "LOP_U_Mil_04", "LOP_U_Afg_civ_01", "LOP_U_Afg_civ_02", "LOP_U_Afg_civ_03", "LOP_U_Afg_civ_04"
#define pilot_uniform "rhs_uniform_df15"
#define sniper_uniform "rhs_uniform_flora"
	
//Headgear
#define leader_headgear "TRYK_H_pakol", "TRYK_H_pakol2", "LOP_H_Turban"
#define default_headgear "TRYK_H_pakol", "TRYK_H_pakol2", "LOP_H_Turban"
#define vcrew_headgear "rhs_tsh4_ess"
#define pilot_headgear "rhs_zsh7a"
#define aircrew_headgear "rhs_zsh7a_mike"
#define sniper_headgear "rhs_6b28_flora_bala"

//Backpack
#define default_backpack "TRYK_B_Alicepack"
#define rpg_backpack "rhs_rpg"
#define pilot_backpack "TRYK_B_Coyotebackpack_BLK"
#define engineer_backpack "TRYK_B_Alicepack"
#define long_range_backpack "tf_mr3000_rhs"

//Vests
#define vest_default "RNR_BeltMG"
#define vest_grenadier "V_BandollierB_rgr"
#define vest_medic "RNR_p2_ak_black"
#define vest_engineer "rhs_vydra_3m"
#define vest_sniper "V_BandollierB_rgr"
#define vest_vehiclecrew_commander "rhs_6b23_digi_crewofficer"
#define vest_vehiclecrew "rhs_6b23_digi_crew"
#define vest_leader "rhs_vydra_3m"

//Face
#define facecover "rhs_scarf"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_fadak","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","tf_fadak","ItemWatch"

	//========================Class Loadouts Definitions========================
	//================Squad Leader (deputy leader)==================
	class SL {
		weapons[] = {glrifle,pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
				{glriflemag,2}
			};
			backpackItems[] = {
				agm_default,
				{agm_epipen,1},
				{smokegrenadewhite,2},
				{grenade,2},
				{glmag,8}
			};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{glriflemag,2},
				{pistolmag,3}
			};
			uniformItems[] = {
			};
		goggles[] = {""};
		vest[] = {vest_leader};
			vestMagazines[] = {
				{glriflemag,5},
				{glriflemag_tr,2},
				{glmag,5}
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
		weapons[] = {glrifle,pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
				{glriflemag,2}
			};
			backpackItems[] = {
				agm_default,
				{agm_epipen,1},
				{smokegrenadewhite,2},
				{grenade,2},
				{glmag,5},
				glsmoke
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{glriflemag,2},
				{pistolmag,3}
			};
			uniformItems[] = {
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{glriflemag,5},
				{glriflemag_tr,2},
				{glmag,5}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of item
		
		priKit[] = {red_dot_scope};
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
	//================Grenadier==================
	class GRE {
		weapons[] = {glrifle};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
				{glriflemag,2}
			};
			backpackItems[] = {
				agm_default,
				{smokegrenadewhite,2},
				{grenade,2},
				{glmag,15}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{glriflemag,2}
			};
			uniformItems[] = {
			};
		goggles[] = {""};
		vest[] = {vest_default};
			vestMagazines[] = {
				{glriflemag,5},
				{glriflemag_tr,2},
				{glmag,5}
			};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of item
		
		priKit[] = {};
		secKit[] = {};
	};
	//================Auto-Rifleman (Machine Gunner)==================
	class AR {
		weapons[] = {ar,pistol};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
				{armag,5}
			};
			backpackItems[] = {
				agm_default,
				{agm_sparebarrel,1},
				{grenade,2}
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
		secKit[] = {};
	};
	//================Auto-Rifleman Assistant==================
	class ARR {
		weapons[] = {rifle,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
				{armag,5}
			};
			backpackItems[] = {
				agm_default,
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
				{riflemag,6},
				{riflemag_tr,1},
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
				{mat_heat_mag,1},
				{mat_frag_mag,1},
				{mat_thermobaric_mag,1}
			};
			backpackItems[] = {
				agm_default,
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
				{mat_heat_mag,1},
				{mat_frag_mag,2},
				{mat_thermobaric_mag,1}
			};
			backpackItems[] = {
				agm_default,
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
		weapons[] = {"rhs_weap_svdp_wd",binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
			backpackMagazines[] = {
			};
			backpackItems[] = {
				agm_default,
				{smokegrenadewhite,2},
				{grenade,2}
			};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{"rhs_10Rnd_762x54mmR_7N1",2}
			};
			uniformItems[] = {
			};
		goggles[] = {""};
		vest[] = {vest_sniper};
			vestMagazines[] = {
				{"rhs_10Rnd_762x54mmR_7N1",7}
			};
		assignedItems[] = {default_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {"rhs_acc_pso1m2"};
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
			{mat_heat_mag,5},
			{mat_tandem_mag,5},
			{mat_frag_mag,3},
			{mat_thermobaric_mag,2},
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
			{mat_heat_mag,10},
			{mat_tandem_mag,8},
			{mat_frag_mag,8},
			{mat_thermobaric_mag,5},
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
			{mat_heat_mag,2},
			{mat_tandem_mag,2},
			{mat_frag_mag,1},
			{mat_thermobaric_mag,1},
			{glmag,10},
			
		};
		vehCargoItems[] = { 
		{smokegrenadewhite,5},
		{grenade,5},
		agm_medic
		};
	};
};



