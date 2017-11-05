class PMC {
// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
// 'MERICA BlueFor Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
//              Infantry Loadouts

//              SL                      - Squad Leader
//              FTL                     - Fire Team Leader
//              RIF                     - Rifleman
//              RAT                     - Rifleman (AT)
//              GRE                     - Grenadier
//              AR                      - Automatic Rifleman
//              AT                      - AT Specialist
//              DMR                     - Marksman
//              PIL                     - Pilot / Co-Pilot
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv
                       
                       
//========================Equipment Definitions========================
//=== Weapons ===
 
//Primary
#define rifle "rhs_weap_mk18_grip2"
#define ar "rhs_weap_m249_pip"
#define glrifle "rhs_weap_mk18_m320"
#define dmr "hlc_rifle_psg1"
#define cqc "rhs_weap_M590_8RD"

//Secondary
#define sidearm "RH_g19"
 
//Launcher
#define rat "tf47_at4_hedp"
#define mat "tf47_m3maaws_optic"
 
//Attachments
#define rifle_scope "rhsusf_acc_eotech_552"
#define flashlight "acc_flashlight"
#define m4mb "rhsusf_acc_SFMB556"
#define salight "RH_M6X"
 
//Ammo
#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define armag "rhsusf_200Rnd_556x45_soft_pouch"
#define glhe "rhs_mag_M441_HE"
#define glhedp "rhs_mag_M433_HEDP"
#define glstun "rhs_mag_M4009"
#define glbuck "rhs_mag_m576"
#define glflare "rhs_mag_m585_white"
#define glsmoke "rhs_mag_m714_white"
#define samag "RH_17Rnd_9x19_g17"
#define ratmag "tf47_at4_m_HEDP"
#define cqcbuck "rhsusf_8Rnd_00Buck"
#define dmrmag "hlc_20rnd_762x51_b_G3"
 
//Grenades
#define frag "rhs_mag_m67"
#define stun "rhs_ammo_m84"
#define smokewhite "smokeshell"
#define smokegreen "smokeshellgreen"
#define smokered "smokeshellred"
#define flarered "ace_HandFlare_Red"
#define flaregreen "ace_HandFlare_Green"
#define flarewhite "ace_HandFlare_White"
#define flareyellow "ace_HandFlare_Yellow"
#define hot "rhs_mag_an_m14_th3"
 
//GL Mags
#define glmag   {"rhs_mag_M441_HE",11}, \
                {"rhs_mag_m662_red",6}
 
//=== MISC ===
                       
//Chemical lights
#define chemblue "Chemlight_blue"
#define chemgreen "Chemlight_green"
                       
// CE equipment - what everyone should have
#define ace_default     {"ACE_fieldDressing",5}, \
                {"ACE_morphine",2}, \
                {"ACE_epinephrine",1}, \
                {"ACE_EarPlugs",1}
 
//Override for a Medic         
#define ace_medic       {"ACE_fieldDressing",20}, \
                {"ACE_morphine",15}, \
                {"ACE_epinephrine",10}, \
                {"ACE_bloodIV_500",5}, \
                {"ACE_Banana",10}
                       
//ACE
#define ace_epipen "ACE_epinephrine" // For PC, SL, FTL
#define ace_sparebarrel "ACE_SpareBarrel"
#define ace_defuse "ACE_DefusalKit"
#define ace_firing_device "ACE_Clacker"
#define ace_cabletie "ace_CableTie"
#define ace_wirecutters "ACE_wirecutter"
#define carkeys "ACE_key_west"
#define carpick "ACE_key_lockpick"
                       
//Double Misc
#define toolkit "ToolKit"
#define explosive "DemoCharge_Remote_Mag"
#define at_mine "ATMine_Range_Mag"
#define ap_mine "APERSBoundingMine_Range_Mag"
#define minedetector "MineDetector"
#define binoculars "Binocular"
#define range "ACE_Vector"
 
                       
//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"
               
//=== Clothes ===
 
//Uniform              
#define default_uniform "TRYK_U_denim_hood_blk"
#define SL_uniform "TRYK_U_B_BLK_T_BK"
#define AR_uniform "TRYK_U_B_Denim_T_BK"
#define pilot_uniform "TRYK_U_denim_jersey_blk"
       
//Headgear
#define leader_headgear "TRYK_H_headsetcap_blk"
#define default_headgear "TRYK_H_woolhat"
#define ftl_headgear "TRYK_H_headsetcap_blk"
#define gren_headgear "TRYK_H_woolhat"
#define ar_headgear "TRYK_R_CAP_BLK"
#define pilot_headgear "TRYK_H_EARMUFF"

//Vests
#define vest_default "TRYK_V_tacv1M_BK"
#define vest_grenadier "TRYK_V_tacv1M_BK"
#define vest_saw "TRYK_V_tacv1MLC_BK"
#define vest_leader "TRYK_V_tacv1M_BK"
#define vest_ftl_leader "TRYK_V_tacv1M_BK"
                       
//Face
#define facecover "TRYK_Shemagh_shade"
#define glasses "rhs_googles_clear"
                       
//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch"
                       
//========================Class Loadouts Definitions========================
//================Squad Leader==================
class SL {
        weapons[] = {rifle,binoculars,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {leader_headgear};
        uniform[] = {SL_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = { };
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,3}
                };
                vestItems[] = {
			{smokewhite,1},
			{smokered,1},
			{smokegreen,1},
			{ace_cabletie,2},
			{shortrange,1},
			{longrange,1}
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,flashlight,m4mb};
        secKit[] = {salight};
};
//================Team Leader==================
class FTL {
        weapons[] = {rifle,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {ftl_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = { };
        vest[] = {vest_ftl_leader};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,3}
                };
                vestItems[] = {
			{smokewhite,2},
			{smokegreen,1},
			{flaregreen,1},
			{ace_cabletie,2},
			{shortrange,1}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
       
        priKit[] = {rifle_scope,flashlight,m4mb};
        secKit[] = {salight};
};
//================Rifleman==================
class RIF {
        weapons[] = {rifle,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = { };
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,2},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,flashlight,m4mb};
        secKit[] = {salight};
};
//================Rifleman(AT)==================
class RAT {
        weapons[] = {rifle,sidearm,rat};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = { };
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,2},
			{ratmag,1},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,flashlight,m4mb};
        secKit[] = {salight};
};
//================Designated Marksman==================
class DMR {
        weapons[] = {dmr,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{dmrmag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = { };
        vest[] = {vest_default};
                vestMagazines[] = {
			{dmrmag,7},
			{samag,2},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = { };
        secKit[] = {salight};
};
//================Grenadier==================
class GRE {
        weapons[] = {glrifle,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {gren_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{ace_cabletie,2},
			{shortrange,1}
                };
        goggles[] = { };
        vest[] = {vest_grenadier};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,3}
                };
                vestItems[] = {
			glmag
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,flastlight,m4mb};
        secKit[] = {salight};
};
//================Breacher==================
class BRE {
        weapons[] = {cqc,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {gren_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{cqcbuck,2}
                };
                uniformItems[] = {
			ace_default,
			{stun,1},
			{shortrange,1}
                };
        goggles[] = { };
        vest[] = {vest_grenadier};
                vestMagazines[] = {
			{cqcbuck,7},
			{samag,3}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = { };
        secKit[] = {salight};
};
//================Auto-Rifleman==================
class AR {
        weapons[] = {ar,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{samag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{ace_cabletie,2},
			{shortrange,1}
                };
        goggles[] = { };
        vest[] = {vest_saw};
                vestMagazines[] = {
			{armag,4}
                };
                vestItems[] = {
			{ace_cabletie,2},
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,flashlight};
        secKit[] = {salight};
};
//================Pilot==================
class PIL {
        weapons[] = {sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {};
        headgear[] = {pilot_headgear};
        uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{samag,3}
                };
                uniformItems[] = {
			ace_default,
			{flaregreen,1},
			{smokewhite,1},
			{smokegreen,1}

                };
        goggles[] = { };
        vest[] = {};
                vestMagazines[] = {
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
                {armag,5},
                {matheat,3},
                glmag
        };
        vehCargoItems[] = {
        {smokewhite,5},
        {frag,5}
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
                {matheat,6},
                glmag
        };
        vehCargoItems[] = {
        {smokewhite,10},
        {frag,10},
        ace_medic
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
                {matheat,4},
                glmag
               
        };
        vehCargoItems[] = {
        {smokewhite,5},
        {frag,5},
        ace_medic
        };
};
//========================== AMMO BOXES ===========================
class B_BASIC {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {riflemag,30},
                {riflemag_tr,10},
                {armag,10}
        };
        vehCargoItems[] = { };
        vehCargoRucks[] = { };
};
 
class B_GRENADE {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {frag,20},
                {smokewhite,20},
                {smokered,5},
                {smokegreen,5}
        };
        vehCargoItems[] = {
};
 
vehCargoRucks[] = { };
};
 
class B_GL {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {glhe,20},
                {glhedp,20},
                {glbuck,5},
                {glsmoke,15}  
        };
        vehCargoItems[] = { };
        vehCargoRucks[] = { };
};
 
class B_LAT {
        vehCargoWeapons[] = {
        {rat,5}
        };
        vehCargoMagazines[] = {
        {ratmag,5}
        };
        vehCargoItems[] = { };
        vehCargoRucks[] = { };
};
 
class B_MAT {
        vehCargoWeapons[] = {
                {mat,1}
        };
        vehCargoMagazines[] = {
                {matheat,5},
                {mathedp,5},
                {mathe,5},
                {matsmoke,5}
        };
        vehCargoItems[] = { };
        vehCargoRucks[] = { };
};
 
class B_MEDIC {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = { };
        vehCargoItems[] = {
                ace_medic
        };
        vehCargoRucks[] = { };
};
 
class B_DEMO {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = { };
        vehCargoItems[] = {
                {ACE_DefusalKit,4},
                {explosive,5},
                {satchel,2},
                {ace_firing_device,4}
        };
        vehCargoRucks[] = { };
};
 
class B_MINES {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = { };
        vehCargoItems[] = {
                {ACE_DefusalKit,2},
                {slam,5},
                {at_mine,5},
                {ap_mine,10}
        };
        vehCargoRucks[] = { };
};
 
class B_SUPPLYDROP {
        vehCargoWeapons[] = { };
        vehCargoMagazines[] = {
                {riflemag,30},
                {riflemag_tr,10},
                {dmrMag,10},
                {armag,10},
                {matheat,4},
                glmag
        };
        vehCargoItems[] = {
                {ACE_DefusalKit,1},
                {explosive,2},
                {ace_firing_device,1},
                {chemgreen,5},
                {smokewhite,5},
                ace_medic
        };
        vehCargoRucks[] = { };
};
};