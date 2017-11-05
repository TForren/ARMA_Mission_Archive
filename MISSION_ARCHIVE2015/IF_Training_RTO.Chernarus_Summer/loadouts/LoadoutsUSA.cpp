class USA {
// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
// US Mid Tech Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
//              Infantry Loadouts
//              PC                      - Platoon Commander
//              RTO                     - Radio Operator
//              SL                      - Squad Leader
//              MED                     - Medic
//              FTL                     - Fire Team Leader
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
#define rifle "rhs_weap_m4_grip"
#define ar "rhs_weap_m249_pip_S_vfg"
#define glrifle "rhs_weap_m4_m203"
#define smg "hlc_smg_mp5n"
#define mg "rhs_weap_m240B_CAP"
 
//Secondary
#define sidearm "RH_m9"
 
//Launcher
#define rat "tf47_at4_heat"
#define mat "tf47_m3maaws_optic"
 
//Attachments
#define rifle_scope "rhsusf_acc_compm4"
#define mrco "rhsusf_acc_ACOG3"
#define mgo "rhsusf_acc_ELCAN"
#define m4_suppressor "muzzle_snds_H"
#define m249_supressor "muzzle_snds_H_MG"
#define flashlight "acc_flashlight"
#define ir_laser "rhsusf_acc_anpeq15side"
#define m4mb "rhsusf_acc_SFMB556"
 
//Ammo
#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define armag "rhsusf_200Rnd_556x45_soft_pouch"
#define mgmag "rhsusf_100rnd_762x51"
#define mgmagap "rhsusf_100Rnd_762x51_m993"
#define smgmag "hlc_30Rnd_9x19_B_MP5"
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
                       
// ACE equipment - what everyone should have
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
#define longrange "ACRE_PRC148"
#define shortrange "ACRE_PRC343"
               
//=== Clothes ===
 
//Uniform              
#define default_uniform "rhs_uniform_cu_ucp"
       
//Headgear
#define leader_headgear "rhsusf_ach_helmet_headset_ucp"
#define default_headgear "rhsusf_ach_helmet_ucp"
#define vcrew_headgear "rhsusf_cvc_ess"
#define pilot_headgear "H_PilotHelmetHeli_B"
#define aircrew_headgear "H_PilotHelmetHeli_B"
#define sniper_headgear "TRYK_H_ghillie_over"
                       
//Backpack
#define default_backpack "rhsusf_assault_eagleaiii_ucp"
#define crew_backpack "B_AssaultPack_cbr"
                       
//Vests
#define vest_default "rhsusf_iotv_ucp_rifleman"
#define vest_grenadier "rhsusf_iotv_ucp_grenadier"
#define vest_saw "rhsusf_iotv_ucp_SAW"
#define vest_medic "rhsusf_iotv_ucp_medic"
#define vest_vehiclecrew_commander "rhsusf_iotv_ucp_repair"
#define vest_vehiclecrew "rhsusf_iotv_ucp_repair"
#define vest_leader "rhsusf_iotv_ucp_squadleader"
#define vest_ftl_leader "rhsusf_iotv_ucp_teamleader"
                       
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
        weapons[] = {range};
        magazines[] = { };
        backpack[] = {""};
        headgear[] = {};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
                };
                uniformItems[] = {
                };
        goggles[] = {glasses};
        vest[] = {vest_leader};
                vestMagazines[] = {
                };
                vestItems[] = {
			{shortrange,1},
			{longrange,1}
                };
        assignedItems[] = {leader_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};
//================Rifleman (AT)==================
class RAT {
        weapons[] = {rifle,binoculars};
        magazines[] = { }; //do not use if using specific allocation of magazines
        backpack[] = {""};
        headgear[] = {default_headgear};
        uniform[] = {default_uniform};
                uniformMagazines[] = {
                };
                uniformItems[] = {
				{shortrange, 1},
			{longrange,1}
                };
        goggles[] = {glasses};
        vest[] = {vest_default};
                vestMagazines[] = {
                };
                vestItems[] = {
                };
        assignedItems[] = {default_equipment};
        items[] = {     }; //do not use if using specific allocation of items
        priKit[] = {rifle_scope,ir_laser,m4mb};
        secKit[] = {};
};

};