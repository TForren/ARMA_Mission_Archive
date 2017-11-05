class UA {
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
#define rifle "hlc_rifle_aks74"
#define ar "hlc_rifle_rpk"
#define glrifle "hlc_rifle_aks74_GL"
#define dmr "hlc_rifle_g3sg1" 
#define sniper "hlc_rifle_psg1"
#define smg "hlc_smg_mp5n"
#define mg "rhs_weap_pkm"

//Secondary

//Launcher
#define rat "rhs_weap_rshg2"
#define mat "rhs_weap_rpg7"

//Ammo
#define riflemag "hlc_30Rnd_545x39_B_AK"
#define riflemag_tr "hlc_20rnd_762x51_T_G3" 
#define armag "hlc_45Rnd_762x39_m_rpk"
#define mgmag "rhs_100Rnd_762x54mmR"
#define smgmag "hlc_30Rnd_9x19_B_MP5"
#define dmrMag "hlc_20rnd_762x51_b_G3"
#define snipermag "hlc_20rnd_762x51_b_G3"
#define ratmag "rhs_rshg2_mag"
#define matmag "rhs_fgm148_magazine_AT"
#define glhe "rhs_mag_M441_HE"
#define glhedp "rhs_mag_M433_HEDP"
#define glstun "rhs_mag_M4009"
#define glbuck "rhs_mag_m576"
#define glflare "rhs_mag_m585_white"
#define glsmoke "rhs_mag_m714_white"

//Grenades
#define frag "rhs_mag_rgd5"
#define smokewhite "rhs_mag_rdg2_white"
#define smokegreen "rhs_mag_nspd_green"
#define handFlareRed "rhs_mag_nspn_red"
#define handFlareGreen "rhs_mag_nspn_green"
#define handFlareWhite "rhs_mag_nspn_red"
#define handFlareYellow "rhs_mag_nspn_yellow"

//GL Mags
#define glHE "hlc_VOG25_AK"
#define glSmokeWhite "hlc_GRD_White"



//=== MISC ===

//Chemical lights
#define chemblue "Chemlight_blue"

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

//ace
#define ace_epipen "ace_Epipen" // For PC, SL, FTL
#define ace_sparebarrel "ace_SpareBarrel"
#define ace_defuse "ace_DefusalKit"
#define ace_firing_device "ace_Clacker"

//Double Misc
#define toolkit "ToolKit"
#define explosive "DemoCharge_Remote_Mag"
#define at_mine "ATMine_Range_Mag"
#define ap_mine "APERSBoundingMine_Range_Mag"
#define minedetector "MineDetector"
#define binoculars "Binocular"

//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"
//=== Clothes ===

//Uniform		
#define default_uniform "UA_BTOLgnsk1_Uniform_11_SS", "UA_Pack_Flectarn_Khaki_01", "UA_Pack_Flectarn_Khaki_01_SS", \
"UA_USSRuniforms_Butan_04","UA_USSRuniforms_Butan_03", \
"UA_USSRuniforms_Butan_02", "UA_USSRuniforms_Flectarn_02", "UA_USSRuniforms_Flectarn_03"
	
//Headgear
#define leader_headgear "UA_ita_PatHatBlack", "UA_ita_PatHatFlecktarn", "UA_ita_PatHatKhaki"
#define default_headgear "UA_PASGTHelmet_butan1", "UA_PASGTHelmet_butan2", \
"UA_PASGTHelmet_Green1", "UA_PASGTHelmet_Green2", "LOP_H_PASGTHelmet_OLV"
#define vcrew_headgear "rhsusf_cvc_ess"
#define pilot_headgear "H_PilotHelmetHeli_B"
#define aircrew_headgear "H_PilotHelmetHeli_B"
#define sniper_headgear "TRYK_H_ghillie_over" 

//Backpack
#define default_backpack "ffaa_brilat_mochila_viaje_arida"
#define crew_backpack "B_AssaultPack_cbr"
#define engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
#define long_range_backpack "tf_rt1523g_big_bwmod"

//Vests
#define vest_default "UA_6B3_butan84", "RNR_Rys_m_KORAgp_gr", "UA_Pack_BWA3_Vest_Autorifleman_Fleck", "RNR_Rys_m_KORA_izumzel"
#define vest_grenadier "RNR_Rys_m_KORAgp_gr"
#define vest_medic "RNR_Rys_m_KORA_izumzel"
#define vest_saw "UA_Pack_BWA3_Vest_Autorifleman_Fleck"
#define vest_engineer "LOP_V_CarrierLite_WDL"
#define vest_sniper "rhsusf_iotv_ocp_rifleman"
#define vest_vehiclecrew_commander "UA_BeltMGb_Butan"
#define vest_vehiclecrew "UA_p2_ak_Flectarn"
#define vest_leader "UA_6B3_butan84", "RNR_Rys_m_KORAgp_gr", "UA_Pack_BWA3_Vest_Autorifleman_Fleck", "RNR_Rys_m_KORA_izumzel"
#define vest_ftl_leader "UA_6B3_butan84", "RNR_Rys_m_KORAgp_gr", "UA_Pack_BWA3_Vest_Autorifleman_Fleck", "RNR_Rys_m_KORA_izumzel"

//Face
#define facecover "TRYK_Shemagh_shade"
#define glasses "TRYK_kio_balaclava_BLK"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_microdagr" //With GPS
#define default_equipment "ItemMap","ItemCompass","tf_microdagr"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
	weapons[] = {rifle,binoculars};
	magazines[] = { };
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
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
			{riflemag,5}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
};
//================Platoon Sgt. (RTO)==================
class RTO {
	weapons[] = {rifle,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"tf_rt1523g_bwmod"};
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
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
			{riflemag,5}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Squad Leader==================
class SL {
	weapons[] = {glrifle,binoculars};
	magazines[] = {	}; //do not use if using specific allocation of magazines
			backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
			{shortrange,1}
		};
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
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
			{riflemag,5}

		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Medic==================
class MED {
	weapons[] = {rifle};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	headgear[] = {default_headgear};
	backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
		ace_medic,
		{smokewhite,4}
		};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
			{smokewhite,4},
			{frag,1}
		};
	goggles[] = {glasses};
	vest[] = {vest_medic};
		vestMagazines[] = {
			{riflemag,8}
		};
		vestItems[] = {
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
};
//================Team Leader==================
class FTL {
	weapons[] = {rifle};
	magazines[] = {	}; //do not use if using specific allocation of magazines
			backpack[] = {"TRYK_B_Alicepack"};
		backpackItems[] = {
			{shortrange,1}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
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
	backpack[] = {default_backpack};
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
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,6},
			{armag,1}
		};
	assignedItems[] = {default_equipment};
};
//================Rifleman (AT)==================
class RAT {
	weapons[] = {rifle,rat};
	magazines[] = {	}; //do not use if using specific allocation of magazines
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
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,7},
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
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{armag,2}
		};
		uniformItems[] = {
			ace_default,
			{frag,1}
		};
	goggles[] = {glasses};
	vest[] = {vest_saw};
		vestMagazines[] = {
			{armag,4}
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
			{"rhs_rpg7_PG7VL_mag", 1},
			{"rhs_rpg7_TBG7V_mag", 2}
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
	vest[] = {vest_vehiclecrew_commander};
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
			{frag,2}
		};
	goggles[] = {"G_Bandanna_khk"};
	vest[] = {vest_vehiclecrew};
		vestMagazines[] = {
			{hlc_30Rnd_545x39_B_AK,4}
		};
		vestItems[] = {
			{shortrange, 1}
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
			{frag,2}
		};
	goggles[] = {"G_Bandanna_khk"};
	vest[] = {vest_vehiclecrew_commander};
		vestMagazines[] = {
			{hlc_30Rnd_545x39_B_AK,4}
		};
		vestItems[] = {
			{shortrange, 1}
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
	ace_medic
	};
	vehCargoRucks[] = { };
};
class V_IFV {
	vehCargoWeapons[] = { };
	vehCargoMagazines[] = {
		{riflemag,30},
		{"hlc_30Rnd_545x39_B_AK",5},
		{armag,20},
		{"rhs_rpg7_PG7VL_mag", 3},
		{"rhs_rpg7_TBG7V_mag", 3},
		{"rhs_rpg7_OG7V_mag", 3},
		{glHE, 20},
		{frag,10},
		{glSmokeWhite, 10}
		
	};
	vehCargoItems[] = { 
	{smokegrenadewhite,5},
	ace_medic
	};
};
};