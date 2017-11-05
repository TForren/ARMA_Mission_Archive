class NOVOR {
// Example: [this,"RNR","PC"] call tb3_fLoadout; [this, class, loadout]	
// Novorossiya Rebels Gear Script by Jords
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
//		GRE 		- Grenadier
//		AR 			- automatic rifleman
//		ARR			- assistant automatic rifleman 
//		RAT			- rifleman (AT)
//		MAT			- RPG Gunner
//		MATA		- RPG Gunner assistant
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
#define rifle_scope "HLC_Optic_1p29"
#define red_dot_scope "hlc_optic_kobra"

// Standard Riflemen (Rifleman)
#define rifle "hlc_rifle_ak74"
#define riflemag "hlc_30Rnd_545x39_B_AK"
#define riflemag_tr "hlc_30Rnd_545x39_t_ak" 

// Carbine Rifle
#define carbine "hlc_rifle_aks74"
#define carbinemag "hlc_30Rnd_545x39_B_AK"
#define carbinemag_tr "hlc_30Rnd_545x39_t_ak" 

//Auto-Rifleman
#define ar "rhs_weap_pkm"
#define armag "rhs_100Rnd_762x54mmR"
#define armag_tr "rhs_100Rnd_762x54mmR_green"

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
#define glriflemag_tr "hlc_30Rnd_545x39_t_ak"
#define glmag "hlc_VOG25_AK"

//Marksman/Sniper
#define sniper "rhs_weap_svdp_wd"
#define sniperMag "rhs_10Rnd_762x54mmR_7N1"

// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
#define smg "hlc_rifle_aks74u" 
#define smgmag "hlc_30Rnd_545x39_B_AK"
#define smgmag_tr "hlc_30Rnd_545x39_t_ak"

//Pistol
#define pistol "rhs_weap_makarov_pmm"
#define pistolmag "rhs_mag_9x18_12_57N181S"

// Smoke for FTLs, Squad Leaders, etc
#define glsmoke {"hlc_GRD_White",3},  \
					{"hlc_GRD_green",2}, \
					{"hlc_GRD_Red",2} 

// Flare gl grenades - CO, DC, FTLs
#define glflare 	{"rhs_VG40OP_white",3}, \
						{"rhs_VG40OP_red",2}, \
						{"rhs_VG40OP_green",2}
						
#define glHE "hlc_VOG25_AK"
#define glSmokeWhite "hlc_GRD_White"

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

// ace equipment - what everyone should have
#define ace_default	{"ACE_fieldDressing",5}, \
{"ace_Morphine",2}, \
{"ACE_epinephrine",1}, \
{"ace_EarPlugs",1}

//Override for a Medic					
#define ace_medic	{"ACE_fieldDressing",30}, \
{"ace_Morphine",20}, \
{"ACE_epinephrine",10}, \
{"ACE_bloodIV_250",5}, \
{"ace_EarPlugs",1}

//Other ace
#define ace_epipen "ace_Epipen" // For PC, SL, FTL
#define ace_sparebarrel "ace_SpareBarrel"
#define ace_defuse "ace_DefusalKit"
#define ace_firing_device "ace_Clacker"

//Double Misc
#define toolkit "ToolKit"
#define explosive "DemoCharge_Remote_Mag"
#define at_mine "rhs_mine_tm62m_mag"
#define ap_mine "rhs_mine_pmn2_mag"
#define minedetector "MineDetector"
#define binoculars "Binocular"

//Radio 
//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"
//=== Clothes ===

//Uniform		
//#define default_uniform "RNR_RUuniforms_Gorka_05"
 #define default_uniform "RNR_RUuniforms_KZM_05", "RNR_RUuniforms_KZM_05_SS", "RNR_FieldUniform_Gorka_02", "RNR_FieldUniform_Gorka_02_SS", "RNR_FieldUniform_Spectre_04"
 #define leader_uniform "RNR_FieldUniform_Gorka_03", "RNR_RUuniforms_KZM_01", "RNR_RUuniforms_Gorka_04", "RNR_RUuniforms_UkrDigi_02"

#define pilot_uniform "rhs_uniform_df15"
	
//Headgear
#define leader_headgear "rnr_Altyn_ch_ochki_SKVO"
#define default_headgear "RNR_shlem6b27ch_KZMgs", "RNR_shlem6b27ch_UAdig", "rnr_SH_60_uadg", "rnr_SH_60_khk"

#define vcrew_headgear "rhs_tsh4_ess"
#define pilot_headgear "rhs_zsh7a"
#define aircrew_headgear "rhs_zsh7a_mike"
#define sniper_headgear "RNR_Bandana_SKVO"

//Backpack
#define default_backpack "SRCW_FieldPack_Sp_Au"
#define rpg_backpack "rhs_rpg"
#define pilot_backpack "SRCW_AssaultPack_Sp_Au"
#define engineer_backpack "SRCW_B_Carryall_Spectre_Au"
#define long_range_backpack "tf_mr3000_bwmod"

//Vests
#define vest_default "RNR_Rys_m_KORA_gr", "RNR_Rys_m_KORA_izumzel", "RNR_Kora_p2_ak", "RNR_def_molle_hard_s_spsp", "RNR_Rys_m_GP_gr", "RNR_def_molle_norm_s", "RNR_Smersh_kora_PK", "RNR_def_molle_norm_s_blk"
#define vest_rpg "RNR_BeltMG_SpSpr"
#define vest_saw "RNR_Smersh_kora_PK"
#define vest_leader "RNR_Rys_m_KORAgp_black","RNR_Rys_m_KORAgp_gr"
#define vest_ftl_leader "RNR_Rys_m_KORAgp_black","RNR_Rys_m_KORAgp_gr"
#define vest_grenadier "RNR_Rys_m_GP_gr","RNR_Rys_m_KORAgp_gr", "RNR_Rys_m_GP_izumzel"


//Face
#define facecover "RNR_rhs_scarf"
#define full_face "G_Balaclava_blk", "G_Balaclava_oli"
#define glasses "RNR_SharfBandanna_SKVO", "RNR_rhs_scarf", "RNR_rhs_scarf_leto", "RNR_rhs_scarf_SKVO",

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_microdagr" //With GPS
#define default_equipment "ItemMap","ItemCompass","tf_microdagr"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
	weapons[] = {rifle,pistol,binoculars};
	magazines[] = { };
		backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
			{shortrange,1}
		};
	headgear[] = {leader_headgear};
	uniform[] = {leader_uniform};
		uniformMagazines[] = {
			{riflemag,5}
		};
		uniformItems[] = {
			ace_default,
			{ace_epipen,1},
			{smokewhite,2},
			{frag,1}
		};
	goggles[] = {full_face};
	vest[] = {vest_leader};
		vestMagazines[] = {
			{riflemag,3},
			{pistolmag,3}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Platoon Sgt. (RTO)==================
class RTO {
	weapons[] = {glrifle,pistol,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {long_range_backpack};
		backpackMagazines[] = {
			{glriflemag,2}
		};
		backpackItems[] = {
			ace_default,
			{ace_epipen,1},
			{chemred,2},
			{smokegrenadewhite,2},
			{grenade,2},
			{glmag,5},
			glsmoke
		};
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{glriflemag,2},
			{pistolmag,3}
		};
		uniformItems[] = {
			{long_range,1}
		};
	goggles[] = {full_face};
	vest[] = {vest_default};
		vestMagazines[] = {
			{glriflemag,5},
			{glriflemag_tr,2},
			{glmag,5}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
	priKit[] = {};
	secKit[] = {};
};
//================Squad Leader (deputy leader)==================
class SL {
	weapons[] = {glrifle,pistol,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
			{shortrange,1}
		};
	headgear[] = {leader_headgear};
	uniform[] = {leader_uniform};
		uniformMagazines[] = {
			{riflemag,5}
		};
		uniformItems[] = {
			ace_default,
			{ace_epipen,1},
			{smokewhite,2},
			{frag,1}
		};
	goggles[] = {glasses};
	vest[] = {vest_leader};
		vestMagazines[] = {
			{glHE, 6},
			{glSmokeWhite, 2},
			{riflemag,3},
			{pistolmag,3}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Medic==================
class MED {
	weapons[] = {carbine};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {default_backpack};
		backpackMagazines[] = {
			{riflemag,2}
		};
		backpackItems[] = {
			ace_medic,
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
	goggles[] = {facecover};
	vest[] = {vest_default};
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
	backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
			{shortrange,1}
		};
	headgear[] = {leader_headgear};
	uniform[] = {leader_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
			ace_default,
			{ace_epipen,1},
			{smokewhite,2},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_leader};
		vestMagazines[] = {
			{riflemag,8}
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
	backpack[] = {};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite, 1},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,5},
			{armag,1}
		};
	assignedItems[] = {default_equipment};
};
//================Rifleman (AT)==================
class RAT {
	weapons[] = {rifle,rat};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,4}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite, 1},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,5},
			{ratmag,1},
			{armag, 1}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Grenadier==================
class GRE {
	weapons[] = {glrifle};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite, 1},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_grenadier};
		vestMagazines[] = {
			{riflemag,5},
			{armag,1},
			glmag
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Auto-Rifleman==================
class AR {
	weapons[] = {ar};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{armag,1}
		};
		uniformItems[] = {
			ace_default,
			{frag,1}
		};
	goggles[] = {glasses};
	vest[] = {vest_saw};
		vestMagazines[] = {
			{armag,2}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};

//================AT Specialist==================
class MAT {
	weapons[] = {rifle,mat};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"rhs_rpg_empty"};
		backpackMagazines[] = {	
			{"rhs_rpg7_PG7VL_mag", 2},
			{"rhs_rpg7_OG7V_mag", 2}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite,2},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,7},
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================AT Assistant==================
class MATA {
	weapons[] = {rifle,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"rhs_rpg_empty"};
		backpackMagazines[] = {	
			{"rhs_rpg7_PG7VL_mag", 2},
			{"rhs_rpg7_TBG7V_mag", 1}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
			ace_default,
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,7}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Designated Marksman==================
class MARK {
	weapons[] = {"rhs_weap_svdp_wd",binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{"rhs_10Rnd_762x54mmR_7N1",4}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite,2},
			{frag,2}
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{"rhs_10Rnd_762x54mmR_7N1",7}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Machine Gunner==================
class MG {
	weapons[] = {mg};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
		};
		uniformItems[] = {
			ace_default,
			{smokewhite, 1},
			{frag,1}
		};
	goggles[] = {glasses};
	vest[] = {vest_saw};
		vestMagazines[] = {
			{mgmag,3}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Machine Gunner Assistant.==================
class MGA {
	weapons[] = {rifle,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"TRYK_B_Alicepack"};
		backpackMagazines[] = {
			{mgmag,4}
		};
		backpackItems[] = {
			ace_default,
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
			{riflemag,7}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
};
//================Vehicle Commander==================
class VC {
	weapons[] = {"hlc_rifle_aks74u"};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
		backpackMagazines[] = {
		};
		backpackItems[] = {
		};
	headgear[] = {"rhs_tsh4_ess"};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{"hlc_30Rnd_545x39_B_AK",2}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite,2},
			{frag,2}
		};
	goggles[] = {"G_Bandanna_khk"};
	vest[] = {"RNR_p2_ak"};
		vestMagazines[] = {
			{hlc_30Rnd_545x39_B_AK,4}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
	priKit[] = {};
	secKit[] = {};
};
//================Vehicle Driver (Repair)==================
class VD {
	weapons[] = {"hlc_rifle_aks74u"};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
		backpackMagazines[] = {
		};
		backpackItems[] = {
		};
	headgear[] = {"rhs_tsh4_ess"};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{"hlc_30Rnd_545x39_B_AK",2}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite,2},
			{frag,2},
			{shortrange,1}
		};
	goggles[] = {"G_Bandanna_khk"};
	vest[] = {"RNR_p2_ak"};
		vestMagazines[] = {
			{hlc_30Rnd_545x39_B_AK,4}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
	priKit[] = {};
	secKit[] = {};
};
//================Vehicle Gunner==================
class VG {
	weapons[] = {"hlc_rifle_aks74u"};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
		backpackMagazines[] = {
		};
		backpackItems[] = {
		};
	headgear[] = {"rhs_tsh4_ess"};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{"hlc_30Rnd_545x39_B_AK",2}
		};
		uniformItems[] = {
			ace_default,
			{smokewhite,2},
			{frag,2},
			{shortrange,1}
		};
	goggles[] = {"G_Bandanna_khk"};
	vest[] = {"RNR_p2_ak"};
		vestMagazines[] = {
			{hlc_30Rnd_545x39_B_AK,4}
		};
	assignedItems[] = {leader_equipment};
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
			ace_default,
			{chemblue,2},
			{smokewhite,2}
		};
	headgear[] = {pilot_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{smgmag,3},
		};
		uniformItems[] = {
			ace_default
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
			ace_default,
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
			ace_default,
			{chemblue,2}
		};
	headgear[] = {aircrew_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{smgmag,3}
		};
		uniformItems[] = {
			ace_default
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
			ace_default,
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
			ace_default,
			{toolkit,1},
			{explosive,5},
			{ace_firing_device,1},
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
			ace_default,
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
		{sniperMag,5},
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
		{sniperMag,30},
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
	ace_medic
	};
	vehCargoRucks[] = { };
};
class V_IFV {
	vehCargoWeapons[] = { };
	vehCargoMagazines[] = {
		{riflemag,30},
		{riflemag_tr,10},
		{sniperMag,10},
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
	ace_medic
	};
};
};