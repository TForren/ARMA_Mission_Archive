class USA {
// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
// US High Tech Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
//              Infantry Loadouts
//              PC                      - Platoon Commander
//              RTO                     - Platoon Sgt
//              SL                      - Squad Leader
//              MED                     - Medic
//              FTL                     - Fire Team Leader
//              RIF                     - Rifleman
//              RAT                     - Rifleman (AT)
//              GRE                     - Grenadier
//              AR                      - Automatic Rifleman
//              AT                      - AT Specialist
//              ATA                     - AT Assistant
//              WSL                     - Weapons Squad Leader
//              MG                      - Machine Gunner
//              MGA                     - MG Assistant
//              VC                      - Vehicle Commander
//              VG                      - Vehicle Gunner
//              VD                      - Vehicle Driver (repair)
//              PIL                     - Pilot / Co-Pilot
//              CC                      - Crew Chief (repair)
//              AIRCR                   - Air Vehicle Crew
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv
                       
                       
//========================Equipment Definitions========================
//=== Weapons ===
 
//Primary
#define rifle "rhs_weap_m4a1_carryhandle_grip"
#define ar "rhs_weap_m249_pip_S_vfg"
#define glrifle "rhs_m4a1_m320"
#define dmr "hlc_rifle_M21"
#define sniper "hlc_rifle_psg1"
#define smg "hlc_smg_mp5n"
#define mg "rhs_weap_m240B_CAP"
 
//Secondary
#define sidearm "RH_m9"
 
//Launcher
#define rat "tf47_at4_heat"
#define mat "tf47_m3maaws_optic"
 
//Attachments
#define rifle_scope "rhsusf_acc_ACOG"
#define holosight "FHQ_optic_HWS"
#define holosight_x4 "FHQ_optic_HWS_G33"
#define mrco "rhsusf_acc_ACOG3"
#define mgo "rhsusf_acc_ELCAN"
#define aimpoint "rhsusf_acc_compm4"
#define sniper_scope "rhsusf_acc_LEUPOLDMK4"
#define marksman_scope "hlc_optic_LRT_m14"
#define m4_suppressor "muzzle_snds_H"
#define m249_supressor "muzzle_snds_H_MG"
#define flashlight "acc_flashlight"
#define ir_laser "rhsusf_acc_anpeq15_light"
#define mg_laser "rhsusf_acc_anpeq15A"
#define mat_optic "tf47_optic_m3maaws"
#define m4mb "rhsusf_acc_SFMB556"
 
//Ammo
#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define armag "rhsusf_200Rnd_556x45_soft_pouch"
#define armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define mgmag "rhsusf_100rnd_762x51"
#define mgmagap "rhsusf_100Rnd_762x51_m993"
#define smgmag "hlc_30Rnd_9x19_B_MP5"
#define dmrmag "hlc_20Rnd_762x51_B_M14"
#define snipermag "hlc_20rnd_762x51_b_G3"
#define ratmag "tf47_at4_m_HEAT"
#define matheat "tf47_m3maaws_HEAT"
#define mathedp "tf47_m3maaws_hedp"
#define mathe "tf47_m3maaws_he"
#define matsmoke "tf47_m3maaws_smoke"
#define matillum "tf47_m3maaws_illum"
#define glhe "rhs_mag_M441_HE"
#define glhedp "rhs_mag_M433_HEDP"
#define glstun "rhs_mag_M4009"
#define glbuck "rhs_mag_m576"
#define glflare "rhs_mag_m585_white"
#define glsmoke "rhs_mag_m714_white"
#define samag "RH_15Rnd_9x19_M9"
 
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
#define glmag   {"rhs_mag_M441_HE",9}, \
                {"rhs_mag_M433_HEDP",8}, \
                {"rhs_mag_M714_white",4}, \
                {"rhs_mag_M713_red",2}
 
 
#define glsl {"rhs_mag_M714_white",3},  \
                {"rhs_mag_M715_green",2}, \
                {"rhs_mag_M713_red",2}, \
                {"rhs_mag_M585_white",3}
 
                       
 
//=== MISC ===
                       
//Chemical lights
#define chemblue "Chemlight_blue"
#define chemgreen "Chemlight_green"
                       
// CE equipment - what everyone should have
#define ace_default     {"ACE_fieldDressing",5}, \
                {"ACE_morphine",2}, \
                {"ACE_epinephrine",1}, \
		{"Chemlight_green",1}, \
                {"ACE_EarPlugs",1}
 
//Override for a Medic        
#define ace_medic       {"ACE_fieldDressing",20}, \
                {"ACE_morphine",15}, \
                {"ACE_epinephrine",10}, \
                {"ACE_bloodIV_500",5}, \
                {"ACE_Banana",10}
                       
//ACE
#define bandage "ACE_fieldDressing"
#define morphine "ACE_morphine"
#define epipen "ACE_epinephrine"
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
#define default_uniform "rhs_uniform_cu_ocp"
       
//Headgear
#define leader_headgear "rhsusf_ach_helmet_headset_ocp"
#define default_headgear "rhsusf_ach_helmet_ocp"
#define vcrew_headgear "rhsusf_cvc_ess"
#define pilot_headgear "H_PilotHelmetHeli_B"
#define aircrew_headgear "H_PilotHelmetHeli_B"
#define sniper_headgear "TRYK_H_ghillie_over"
                       
//Backpack
#define default_backpack "rhsusf_assault_eagleaiii_ocp"
#define crew_backpack "B_AssaultPack_cbr"
#define engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
                       
//Vests
#define vest_default "rhsusf_iotv_ocp_rifleman"
#define vest_grenadier "rhsusf_iotv_ocp_grenadier"
#define vest_saw "rhsusf_iotv_ocp_SAW"
#define vest_medic "rhsusf_iotv_ocp_medic"
#define vest_engineer "rhsusf_iotv_ocp_repair"
#define vest_sniper "rhsusf_iotv_ocp_rifleman"
#define vest_vehiclecrew_commander "rhsusf_iotv_ocp_repair"
#define vest_vehiclecrew "rhsusf_iotv_ocp_repair"
#define vest_leader "rhsusf_iotv_ocp_squadleader"
#define vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
                       
//Face
#define facecover "TRYK_Shemagh_shade"
#define glasses "rhs_googles_clear"
                       
//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch"
                       
//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
        weapons[] = {rifle,range,sidearm};
        magazines[] = { };
        backpack[] = {""};
        headgear[] = {leader_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,6},
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
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Platoon Sgt.==================
class RTO {
        weapons[] = {rifle,binoculars};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {leader_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2}
                };
                vestItems[] = {
			{smokewhite,1},
			{smokered,1},
			{smokegreen,1},
			{ace_cabletie,2},
			{flaregreen,2},
			{shortrange,1},
			{longrange,1}
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Squad Leader==================
class SL {
        weapons[] = {rifle,range,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {leader_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,6},
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
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Medic==================
class MED {
        weapons[] = {rifle,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = { };
                backpackItems[] = {
			ace_medic
                };
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
        goggles[] = {glasses};
        vest[] = {vest_medic};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{samag,3}
                };
                vestItems[] = {
			{frag,1},
			{smokewhite,4},
			{smokegreen,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Team Leader==================
class FTL {
        weapons[] = {rifle};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {leader_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_ftl_leader};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{smokewhite,1},
			{smokegreen,1},
			{flaregreen,1},
			{ace_cabletie,2}
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
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
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
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
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
			{ratmag},
			{armag,1}
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Grenadier==================
class GRE {
        weapons[] = {glrifle};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = { };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_grenadier};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2}
                };
                vestItems[] = {
			glmag,
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Auto-Rifleman==================
class AR {
        weapons[] = {ar};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{armag,2}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{armag,1}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,2},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_saw};
                vestMagazines[] = {
			{armag,2}
                };
                vestItems[] = {
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {mgo,mg_laser};
        secKit[] = {};
};
//================AT Specialist==================
class AT {
        weapons[] = {rifle,mat};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{matheat,2},
			{mathe,2}
                };
                backpackItems[] = {
                };
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
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2},
                };
                vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================AT Assistant==================
class ATA {
        weapons[] = {rifle,range};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{matheat,2},
			{mathe,1}
                };
                backpackItems[] = {
                };
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
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,6},
			{riflemag_tr,2}
                };
               vestItems[] = {
			{frag,2},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Weapons Leader==================
class WSL {
        weapons[] = {rifle,range,sidearm};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {leader_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_leader};
                vestMagazines[] = {
			{riflemag,6},
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
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Machine Gunner==================
class MG {
        weapons[] = {mg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{mgmag,1},
			{mgmagap,1}
                };
                backpackItems[] = {
			{ace_sparebarrel,1}
                };
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_saw};
                vestMagazines[] = {
			{mgmag,4}
                };
                vestItems[] = {
			{frag,1},
			{ace_cabletie,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {mgo,mg_laser};
        secKit[] = {};
};
//================Machine Gunner Assistant.==================
class MGA {
        weapons[] = {rifle,binoculars};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
			{mgmag,2},
			{mgmagap,1},
			{riflemag,1}
                };
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
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{riflemag,3},
			{riflemag_tr,2},
			{mgmag,2}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};

class DM {
        weapons[] = {dmr,binoculars};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{dmrmag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,2}
                };
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
			{dmrmag,6},
			{dmrmag,2},
                };
                vestItems[] = {
			{ace_cabletie,2},
			{shortrange,1}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {"hlc_optic_LRT_m14"};
        secKit[] = {};
};
//================Vehicle Commander==================
class VC {
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
                };
                backpackItems[] = {
			{smokewhite,2},
			{frag,2}
                };
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{smgmag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_vehiclecrew_commander};
                vestMagazines[] = {
			{smgmag,6}
                };
                vestItems[] = {
			{ace_cabletie,2},
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
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
                };
                backpackItems[] = {
			{toolkit,1},
			{smokewhite,2},
			{frag,2}
                };
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{smgmag,3}
                };
                uniformItems[] = {
			ace_default,
			{smokewhite,1},
			{frag,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_vehiclecrew};
                vestMagazines[] = {
			{smgmag,6}
                };
                vestItems[] = {
			{ace_cabletie,2},
			{shortrange,1}
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {};
        secKit[] = {};
};
//================Vehicle Gunner==================
class VG {
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {default_backpack};
                backpackMagazines[] = {
                };
                backpackItems[] = {
			{smokewhite,2},
			{frag,2}
                };
        headgear[] = {vcrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{smgmag,3}
                };
                uniformItems[] = {
                };
        goggles[] = {glasses};
        vest[] = {vest_vehiclecrew};
                vestMagazines[] = {
			{smgmag,6}
                };
                vestItems[] = {
			{ace_cabletie,2},
			{shortrange,1}
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {};
        secKit[] = {};
};
//================Pilot==================
class PIL {
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {crew_backpack};
                backpackMagazines[] = {
                };
                backpackItems[] = {
			{chemgreen,2},
			{smokewhite,2},
			{shortrange,1},
			{longrange,1}
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
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {};
        secKit[] = {};
};
//================Pilot (Repair)==================
class PILR {
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {crew_backpack};
                backpackMagazines[] = {
			{smgmag,3}
                };
                backpackItems[] = {
			{smokewhite,2},
			{toolkit,1}
                };
        headgear[] = {aircrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{smgmag,3}
                };
                uniformItems[] = {
			ace_default,
			{shortrange,1}
                };
        goggles[] = {glasses};
        vest[] = {};
                vestMagazines[] = {
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {};
        secKit[] = {};
};
//================Air Crew==================
class AIRCR {
        weapons[] = {smg};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {};
                backpackMagazines[] = {
                };
                backpackItems[] = {
                };
        headgear[] = {aircrew_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
			{smgmag,3}
                };
                uniformItems[] = {
			ace_default,
			{shortrange,1}
                };
        goggles[] = {glasses};
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
        vehCargoWeapons[] = {
		{rat,1}
	};
        vehCargoMagazines[] = {
                {riflemag,25},
                {riflemag_tr,5},
                {armag,5},
		{mgmag,5},
                {matheat,3},
                {mathe,3},
		{ratmag,1},
		{glhe,10},
		{glhedp,10},
		{glsmoke,10},
		{glflare,10},
        	{smokewhite,5},
        	{frag,5}
        };
        vehCargoItems[] = {
		{bandage,15},
		{morphine,6},
		{epipen,3},
		{toolkit,1}
        };
        vehCargoRucks[] = {""};
};
class V_TR {
        vehCargoWeapons[] = {
		{rat,4}
	};
        vehCargoMagazines[] = {
                {riflemag,40},
                {riflemag_tr,10},
                {armag,10},
		{mgmag,10},
                {matheat,5},
		{mathe,5},
                {ratmag,4},
        	{smokewhite,10},
        	{frag,10},
		{glhe,15},
		{glhedp,15},
		{glsmoke,10}
        };
        vehCargoItems[] = {
		{bandage,30},
		{morphine,12},
		{epipen,6},
		{toolkit,1}
        };
        vehCargoRucks[] = {""};
};
class V_IFV {
        vehCargoWeapons[] = {
		{rat,2}
	};
        vehCargoMagazines[] = {
                {riflemag,30},
                {riflemag_tr,10},
                {armag,10},
		{mgmag,10},
                {matheat,2},
		{mathe,2},
                {ratmag,2},
		{glhe,10},
		{glhedp,10},
		{glsmoke,10},
		{glflare,10},
        	{smokewhite,5},
        	{frag,5}
               
        };
        vehCargoItems[] = {
		{bandage,20},
		{morphine,8},
		{epipen,4},
		{toolkit,1}
	};
        vehCargoRucks[] = {""};
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