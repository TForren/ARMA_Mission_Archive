class RUS {
// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]
// Russian MSV Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them

//              Infantry Loadouts
//              PC              - Platoon Commander
//              RTO             - Platoon Sgt.
//              MED             - Medic
//              SL              - Squad Leader
//              FTL             - Senior Rifleman
//              AR              - Machine Gunner
//              MAT             - Anti Tank
//              MATA            - AT Assistant
//              RAT             - Rifleman (AT)
//              RIF             - Rifleman
//              GRE             - Grenadier
//              MARK            - Marksman
//              VC              - Vehicle Commander
//              VG              - Vehicle Gunner
//              VD              - Vehicle Driver (repair)
//              PIL             - Pilot / Co-Pilot
//              PILR            - Co-Pilot (repair) / Crew Chief (repair)
//              AIRCR           - Air Crew
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv


//========================Equipment Definitions========================
//=== Weapons ===

// Primary
#define rifle "rhs_weap_ak74m_dtk"
#define glrifle "rhs_weap_ak74m_gp25"
#define carbine "rhs_weap_ak74m_folded"
#define mg "rhs_weap_pkp"
#define dmr "rhs_weap_svdp_pso1"

// Magazines
#define riflemag "rhs_30Rnd_545x39_7N10_AK"
#define riflemag_tr "rhs_30Rnd_545x39_AK_green"
#define dmrmag "rhs_10Rnd_762x54mmR_7N1"
#define mgmag "rhs_100Rnd_762x54mmR"

// Attachments
#define rifle_scope "rhs_acc_1p29"
#define rifle_scope2 "rhs_acc_1p78"

// Secondary
#define sidearm "RH_mak"
#define sidearm2 "rhs_weap_pya"
#define rsp "rhs_weap_rsp30_red"

// Magazines
#define samag "RH_8Rnd_9x18_Mak"
#define sa2mag "rhs_mag_9x19_17"

// Launchers
#define mat "rhs_weap_rpg7_pgo"
#define rat "rhs_weap_rpg26"

// Magazines
#define mat_heat "rhs_rpg7_PG7VL_mag"
#define mat_frag "rhs_rpg7_OG7V_mag"
#define mat_tandem "rhs_rpg7_PG7VR_mag"
#define mat_thermobaric "rhs_rpg7_TBG7V_mag"
#define ratmag "rhs_rpg26_mag"

// Grenades
#define frag "rhs_mag_rgd5"
#define smoke "rhs_mag_rdg2_white"
#define chemred "Chemlight_red"
        
// GL Mags
#define glmag	{"rhs_VOG25",8},  \
		{"rhs_VOG25p",2}, \
		{"rhs_GRD40_white",3}, \
		{"rhs_GRD40_red",2}

//=== MISC ===

// Medical
#define ace_default     {"ACE_fieldDressing",5}, \
			{"ace_Morphine",2}, \
			{"ACE_epinephrine",1}, \
			{"ace_EarPlugs",1}

#define ace_medic	{"ACE_fieldDressing",30}, \
			{"ACE_morphine",15}, \
			{"ACE_epinephrine",10}, \
			{"ACE_bloodIV_500",5}

//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"

//Other
#define ace_sparebarrel "ACE_SpareBarrel"
#define cuffs "ACE_CableTie"
#define nana "ACE_Banana"
#define toolkit "ToolKit"
#define binoculars "Binocular"
#define range "rhs_pdu4"

//=== Clothes ===
 
//Uniform              
#define default_uniform "rhs_uniform_msv_emr"
#define pilot_uniform "rhs_uniform_df15"
       
//Headgear
#define default_headgear "rhs_6b27m_green", "rhs_6b27m_digi"
#define vcrew_headgear "rhs_tsh4"
#define pilot_headgear "rhs_zsh7a"
#define aircrew_headgear "rhs_zsh7a_mike"

//Backpack
#define default_backpack "rhs_sidor"
#define rpg_backpack "rhs_rpg"
#define pilot_backpack "TRYK_B_Coyotebackpack_BLK"

//Vests
#define vest_default "rhs_6b23_digi_6sh92", "rhs_6sh92_digi"
#define vest_ftl "rhs_6b23_digi_6sh92_vog_headset"
#define vest_medic "rhs_6b23_digi_medic"
#define vest_grenadier "rhs_6b23_digi_6sh92_vog", "rhs_6sh92_digi_vog"
#define vest_sniper "rhs_6b23_digi_sniper"
#define vest_vc_commander "rhs_6b23_digi_crewofficer"
#define vest_vc "rhs_6b23_digi_crew"
#define vest_leader "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_headset"
#define vest_officer "rhs_6b23_digi_6sh92_headset_mapcase"
#define vest_pilot "rhs_6sh46"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
        weapons[] = {rifle,sidearm,range};
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
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_officer};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{samag,3}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,2},
			{shortrange,1},
			{longrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Platoon Sgt.==================
class RTO {
        weapons[] = {rifle,rsp,binoculars};
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
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,2},
			{shortrange,1},
			{longrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {rifle_scope};
        secKit[] = {};
};
//================Medic==================
class MED {
        weapons[] = {rifle,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{riflemag,2}
                };
                backpackItems[] = {
			ace_medic,
			{chemred,2},
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
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_medic};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Squad Leader==================
class SL {
        weapons[] = {rifle,rsp,binoculars};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{riflemag,4},
			{mgmag,1}
                };
                backpackItems[] = {
			{frag,1},
			{smoke,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1},
			{longrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {rifle_scope};
        secKit[] = {};
};
//================Senior Rifleman==================
class FTL {
        weapons[] = {glrifle,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{riflemag,4},
			{mgmag,1}
                };
                backpackItems[] = {
			{frag,1},
			glmag
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_ftl};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			glmag,
			{shortrange,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of item
       
        priKit[] = {rifle_scope2};
        secKit[] = {};
};
//================Machine Gunner==================
class AR {
        weapons[] = {mg,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{mgmag,3}
                };
                backpackItems[] = {
			{smoke,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1},
			{shortrange,1}
                };
        goggles[] = {""};
        vest[] = {vest_default};
                vestMagazines[] = {
			{mgmag,3}
                };
		vestItems[] = {
			{cuffs,2}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Anti Tank==================
class MAT {
        weapons[] = {rifle,mat,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {rpg_backpack};
                backpackMagazines[] = {
			{mat_heat,3},
			{mat_frag,2}
                };
                backpackItems[] = {
			{frag,1},
			{shortrange,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================AT Assistant==================
class MATA {
        weapons[] = {rifle,binoculars,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {rpg_backpack};
                backpackMagazines[] = {
			{mat_heat,2},
			{mat_frag,2}
                };
                backpackItems[] = {
			{frag,1},
			{shortrange,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Rifleman (AT)==================
class RAT {
        weapons[] = {rifle,rat,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{ratmag,1},
			{riflemag,2},
			{mgmag,2}
                };
                backpackItems[] = {
			{frag,2},
			{shortrange,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Rifleman==================
class RIF {
        weapons[] = {rifle,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{riflemag,2},
			{mgmag,2}
                };
                backpackItems[] = {
			{frag,2},
			{shortrange,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Grenadier==================
class GRE {
        weapons[] = {glrifle,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{riflemag,2},
			{mgmag,1}
                };
                backpackItems[] = {
			{frag,1},
			glmag,
			{shortrange,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_grenadier};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
		vestItems[] = {
			{cuffs,2},
			glmag
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of item
       
        priKit[] = {};
        secKit[] = {};
};
//================Designated Marksman==================
class MARK {
        weapons[] = {dmr};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{mgmag,3}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{dmrmag,5}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_sniper};
                vestMagazines[] = {
			{dmrmag,10}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{frag,1},
			{shortrange,1}
		};
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Vehicle Commander==================
class VC {
        weapons[] = {carbine,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{samag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_vc_commander};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
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
        weapons[] = {carbine,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
	backpack[] = {"default_backpack"};
		backpackMagazines[] = {
		};
		backpackItems[] = {
			{toolkit,1}
		};
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_vc};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Vehicle Gunner==================
class VG {
        weapons[] = {carbine,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_vc};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {};
        secKit[] = {};
};
//================Pilot==================
class PIL {
        weapons[] = {carbine,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {};
        headgear[] = {pilot_headgear};
        uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
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
        weapons[] = {carbine,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {pilot_backpack};
                backpackMagazines[] = {
			{riflemag,3}
                };
                backpackItems[] = {
			{smoke,2},
			{toolkit,1}
                };
        headgear[] = {aircrew_headgear};
        uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items

        priKit[] = {};
        secKit[] = {};
};
//================Air Crew==================
class AIRCR {
        weapons[] = {carbine,rsp};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {};
        headgear[] = {aircrew_headgear};
        uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
        goggles[] = {""};
        vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
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
                {dmrMag,5},
                {mgmag,5},
                {mat_heat,5},
                {mat_tandem,5},
                {mat_frag,3},
                {mat_thermobaric,2},
		{ratmag,5}
        };
        vehCargoItems[] = {
        	{smoke,5},
        	{frag,5},
		glmag,2
        };
        vehCargoRucks[] = { };
};
class V_TR {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {riflemag,50},
                {riflemag_tr,10},
                {dmrMag,30},
                {mgmag,20},
                {mat_heat,10},
                {mat_tandem,8},
                {mat_frag,8},
                {mat_thermobaric,5}
        };
        vehCargoItems[] = {
        	{smoke,10},
        	{frag,10},
        	ace_medic,
		glmag,5
        };
        vehCargoRucks[] = { };
};
class V_IFV {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {riflemag,30},
                {riflemag_tr,10},
                {dmrMag,10},
                {mgmag,10},
                {mat_heat,2},
                {mat_tandem,2},
                {mat_frag,1},
                {mat_thermobaric,1}
               
        };
        vehCargoItems[] = {
        	{smoke,5},
        	{frag,5},
        	ace_medic,
		glmag,3
        };
};
};