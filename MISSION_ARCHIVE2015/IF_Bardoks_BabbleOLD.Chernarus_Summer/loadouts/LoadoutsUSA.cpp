class CDF {
// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]
// CDF Motorized Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them

//              Infantry Loadouts
//              PC              - Platoon Commander
//              RTO             - Platoon Sgt.
//              SL              - Squad Leader
//              MED             - Medic
//              FTL             - Senior Rifleman
//              AR              - Automatic Rifleman
//              RAT             - rifleman (AT)
//              RIF             - Rifleman
//              MAT             - Medium AT
//              MATA            - Medium AT Assistant
//              VC              - Vehicle Commander
//              VG              - Vehicle Gunner
//              VD              - Vehicle Driver
//              PIL             - Pilot
//              PILR            - Co-Pilot
//              AIRCR           - Air Crew
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv


//========================Equipment Definitions========================
//=== Weapons ===

// Rifles
#define rifle "hlc_rifle_ak74_dirty"
#define rifle2 "hlc_rifle_ak74"
#define glrifle "hlc_rifle_aks74_GL"
#define ar "hlc_rifle_rpk74n"
#define carbine "hlc_rifle_aks74u"
#define riflemag "hlc_30Rnd_545x39_B_AK"
#define riflemag_tr "hlc_30Rnd_545x39_T_AK"
#define armag "hlc_45Rnd_545x39_t_rpk"

//Launchers
#define rat "rhs_weap_rpg26"
#define ratmag "rhs_rpg26_mag"
#define mat "rhs_weap_rpg7"
#define mat_heat "rhs_rpg7_PG7VL_mag"
#define mat_frag "rhs_rpg7_OG7V_mag"

//Pistol
#define sidearm "RH_mak"
#define samag "RH_8Rnd_9x18_Mak"
#define rsp "rhs_weap_rsp30_red"
#define rspmag "rhs_mag_rsp30_red"

// GL Mags
#define glmag	{"hlc_VOG25_AK",4}
#define glmag2	{"hlc_VOG25_AK",3},  \
{"hlc_GRD_White",2}
#define glmag3	{"hlc_VOG25_AK",6},  \
{"hlc_GRD_White",4}

// frags
#define frag "rhs_mag_rgd5"
#define smoke "rhs_mag_rdg2_white"

//=== MISC ===

//Chemical lights
#define chemgreen "Chemlight_green"

// ACE equipment - what everyone should have
#define ace_default     {"ACE_fieldDressing",5}, \
{"ace_Morphine",2}, \
{"ACE_epinephrine",1}, \
{"ace_EarPlugs",1}

//Override for a Medic                                 
#define ace_medic	{"ACE_fieldDressing",30}, \
						{"ACE_morphine",15}, \
						{"ACE_epinephrine",10}, \
						{"ACE_bloodIV_500",5}

//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"

//Other
#define cuffs "ACE_CableTie"
#define nana "ACE_Banana"
#define binoculars "Binocular"
#define toolkit "ToolKit"

//=== Clothes ===

//Uniform              
#define default_uniform "LOP_U_CDF_Fatigue_01", "LOP_U_CDF_Fatigue_01_slv"

//Headgear
#define default_headgear "LOP_H_PASGTHelmet_cover_CDF", "LOP_H_PASGTHelmet_OLV"
#define vcrew_headgear "rhs_tsh4"
#define pilot_headgear "rhs_gssh18"

//Backpack
#define default_backpack "B_AssaultPack_rgr"
#define rpg_backpack "rhs_rpg"
#define long_range_backpack "tf_rt1523g_bwmod"

//Vests
#define vest_default "RNR_Rys_m_KORA_gr"
#define vest_grenadier "RNR_Rys_m_KORAgp_gr"
#define vest_ar "RNR_Smersh_kora_PK"
#define vest_crew "rhs_6sh46"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemCompass","ItemWatch"
#define default_equipment "ItemMap","ItemCompass","ItemWatch"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
		weapons[] = {rifle2,sidearm,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{riflemag,2}
				};
				backpackItems[] = {
						{shortrange,1},
{longrange,1}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,2},
						{riflemag_tr,2},
{samag,3}
				};
vestItems[] = {
{smoke,1},
{cuffs,2},
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items

		priKit[] = {};
		secKit[] = {};
};
//================Platoon Sgt.==================
class RTO {
		weapons[] = {rifle,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{riflemag,2}
				};
				backpackItems[] = {
						{shortrange,1},
{longrange,1}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{frag,1},
{smoke,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Medic==================
class MED {
		weapons[] = {rifle};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackItems[] = {
						ace_medic,
						{smoke,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{frag,1},
{smoke,1}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Squad Leader==================
class SL {
		weapons[] = {rifle2,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{riflemag,2}
				};
				backpackItems[] = {
{frag,1},
						{shortrange,1},
{longrange,1}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{smoke,1},
{cuffs,2}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Senior Rifleman==================
class FTL {
		weapons[] = {glrifle,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{riflemag,2}
				};
				backpackItems[] = {
glmag3,
						{shortrange,1}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
glmag2
				};
		goggles[] = {""};
		vest[] = {vest_grenadier};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
glmag
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of item
	   
		priKit[] = {};
		secKit[] = {};
};
//================Auto-Rifleman==================
class AR {
		weapons[] = {ar};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{armag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_ar};
				vestMagazines[] = {
						{armag,8}
				};
vestItems[] = {
{frag,1}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Rifleman (AT)==================
class RAT {
		weapons[] = {rifle,rat};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
{ratmag,1}
				};
vestItems[] = {
{frag,2}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Rifleman==================
class RIF {
		weapons[] = {rifle};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{frag,2}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Medium (AT)==================
class MAT {
		weapons[] = {rifle,mat};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {rpg_backpack};
				backpackMagazines[] = {
						{mat_heat,2},
						{mat_frag,3}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{frag,2}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Medium (AT) Assistant==================
class MATA {
		weapons[] = {rifle,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {rpg_backpack};
				backpackMagazines[] = {
						{mat_heat,2},
						{mat_frag,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{frag,1},
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
vestItems[] = {
{frag,2}
};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Vehicle Commander==================
class VC {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{shortrange,1},
{longrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Vehicle Driver (Repair)==================
class VD {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{frag,1},
{shortrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Vehicle Gunner==================
class VG {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{frag,1},
{shortrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Pilot==================
class PIL {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {pilot_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{shortrange,1},
{longrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Pilot (Repair)==================
class PILR {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {pilot_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{frag,1},
{shortrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Air Crew==================
class AIRCR {
		weapons[] = {carbine};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {""};
		headgear[] = {pilot_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
ace_default,
{smoke,1}
				};
		goggles[] = {""};
		vest[] = {vest_crew};
				vestMagazines[] = {
						{riflemag,2}
				};
vestItems[] = {
{frag,1},
{shortrange,1}
};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Vehicle Loadouts==================
class V_CAR {
		vehCargoWeapons[] = { };
		vehCargoMagazines[] = {
				{riflemag,30},
				{riflemag_tr,8},
				{armag,5},
				{mat_heat,5},
				{mat_frag,3},
				{ratmag,4}
		};
		vehCargoItems[] = {
		{smoke,5},
		{frag,5},
glmag,10
		};
		vehCargoRucks[] = { };
};
class V_TR {
		vehCargoWeapons[] = { };
		vehCargoMagazines[] = {
				{riflemag,50},
				{riflemag_tr,10},
				{armag,20},
				{mat_heat,10},
				{mat_frag,8},
		};
		vehCargoItems[] = {
		{smoke,10},
		{frag,10},
		ace_medic,
glmag,10
		};
		vehCargoRucks[] = { };
};
class V_IFV {
		vehCargoWeapons[] = { };
		vehCargoMagazines[] = {
				{riflemag,30},
				{riflemag_tr,10},
				{armag,10},
				{mat_heat,2},
				{mat_frag,1}
			   
		};
		vehCargoItems[] = {
		{smoke,5},
		{frag,5},
		ace_medic,
glmag,10
		};
};
};