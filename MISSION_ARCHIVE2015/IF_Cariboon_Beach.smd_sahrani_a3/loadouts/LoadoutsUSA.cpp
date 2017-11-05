class USA {
// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
// 'MERICA BlueFor Gear Script by Jords
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
//              RIF                     - Rifleman
//              RAT                     - Rifleman (AT)
//              GRE                     - Grenadier
//              AR                      - Automatic Rifleman
//              AT                      - AT Specialist
//              ATA                     - AT Assistant
//              WSL                     - Weapons Squad Leader
//              MARK                    - Marksman
//              SN                      - Sniper
//              SP                      - Spotter (for sniper)
//              MG                      - Machine Gunner
//              MGA                     - MG Assistant
//              VC                      - Vehicle Commander
//              VG                      - Vehicle Gunner
//              VD                      - Vehicle Driver (repair)
//              PIL                     - Pilot / Co-Pilot
//              CC                      - Crew Chief (repair)
//              AIRCR                   - Air Vehicle Crew
//              ENG                     - Engineer
//              ENGDEMO                 - Engineer (demo)
//              ENGMINE                 - Engineer (mines)
//
//              Vehicle Cargo Loadouts
//              V_CAR           - car/4x4/jeep
//              V_TR            - truck
//              V_IFV           - ifv


//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define rifle "rhs_weap_mk18_grip2_KAC"
#define ar "rhs_weap_m249_pip"
#define glrifle "rhs_weap_mk18_m320"
#define dmr "hlc_rifle_M21"
#define sniper "hlc_rifle_psg1"
#define smg "hlc_smg_mp5a4"
#define mg "rhs_weap_m240B"

//Secondary
#define sidearm "RH_m9"

//Launcher
#define rat "tf47_at4_HEDP"
#define mat "tf47_m3maaws"

//Attachments
#define rifle_scope "optic_MRCO"
#define holosight "FHQ_optic_HWS"
#define holosight_x4 "FHQ_optic_HWS_G33"
#define mrco "rhsusf_acc_ACOG3"
#define mgo "optic_tws_mg"
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
#define riflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
#define armag "rhsusf_200Rnd_556x45_soft_pouch"
#define armag2 "rhsusf_100Rnd_556x45_soft_pouch"
#define mgmag "rhsusf_100rnd_762x51"
#define smgmag "hlc_30Rnd_9x19_B_MP5"
#define dmrMag "hlc_20Rnd_762x51_B_M14"
#define snipermag "hlc_20rnd_762x51_b_G3"
#define ratmag "rhs_m136_mag"
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
#define smokewhite "rhs_mag_an_m8hc"
#define smokegreen "rhs_mag_m18_green"
#define smokered "rhs_mag_m18_red"
#define flarered "ace_HandFlare_Red"
#define flaregreen "ace_HandFlare_Green"
#define flarewhite "ace_HandFlare_White"
#define flareyellow "ace_HandFlare_Yellow"
#define hot "rhs_mag_an_m14_th3"

//GL Mags
#define glmag {"rhs_mag_M441_HE",9}, \
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
#define ace_default {"ACE_fieldDressing",5}, \
					{"ACE_morphine",2}, \
					{"ACE_EarPlugs",1}

//Override for a Medic                                 
#define ace_medic {"ACE_fieldDressing",20}, \
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
#define satchel "SatchelCharge_Remote_Mag"
#define at_mine "ATMine_Range_Mag"
#define ap_mine "APERSBoundingMine_Range_Mag"
#define slam "SLAMDirectionalMine_Wire_Mag"
#define minedetector "MineDetector"
#define binoculars "Binocular"
#define range "ACE_Vector"


//Radio
#define long_range "tf_anprc152" //Long range - Short-wave
			   
//=== Clothes ===

//Uniform              
#define default_uniform "TRYK_U_B_BLKOCP_CombatUniform", "TRYK_U_B_BLKOCP_R_CombatUniformTshirt", "TRYK_U_B_PCUs"
	   
//Headgear
#define leader_headgear "rhsusf_mich_bare_norotos_semi_headset", "rhsusf_mich_bare_norotos_arc_semi"
#define default_headgear "rhsusf_mich_bare_norotos_semi", "rhsusf_mich_bare_norotos_arc_semi_headset"
#define vcrew_headgear "rhsusf_cvc_ess"
#define pilot_headgear "H_PilotHelmetHeli_B"
#define aircrew_headgear "H_PilotHelmetHeli_B"
#define sniper_headgear "TRYK_H_ghillie_over"

//Backpack
#define default_backpack "rhsusf_assault_eagleaiii_ocp"
#define crew_backpack "B_AssaultPack_cbr"
#define engineer_backpack "rhsusf_assault_eagleaiii_ocp_engineer"
#define long_range_backpack "tf_rt1523g_rhs"

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
#define glasses "G_Balaclava_blk"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_anprc152","ItemWatch", "rhsusf_ANPVS_15" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch","tf_anprc152", "rhsusf_ANPVS_15"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
		weapons[] = {rifle,range,sidearm};
		magazines[] = { };
		backpack[] = {long_range_backpack};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
						ace_default,
						{ace_epipen,1},
						{smokewhite,1},
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
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
						{hot,2},
						{ace_cabletie,2}
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
		backpack[] = {long_range_backpack};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
						ace_default,
						{ace_epipen,1},
						{smokewhite,1},
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
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
						{hot,2},
						{ace_cabletie,2}
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
						{ace_epipen,1},
						{smokewhite,1},
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_medic};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
						{samag,3}
				};
				vestItems[] = {
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
						{ace_epipen,1},
						{smokewhite,1},
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_ftl_leader};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
						{armag,1}
				};
				vestItems[] = {
						{smokewhite,2},
						{smokegreen,1},
						{flaregreen,1},
						{hot,2},
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
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,6},
						{riflemag_tr,2},
						{ratmag,1},
						{armag,1}
				};
				vestItems[] = {
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
						{smokewhite,1},
						{chemgreen,1},
						{ace_cabletie,2},
						{frag,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_grenadier};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
				};
				vestItems[] = {
						glmag
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
						{armag,2},
						{armag2,1}
				};
				backpackItems[] = {
						{smokewhite,1},
						{ace_cabletie,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{armag,1},
						{armag2,1}
				};
				uniformItems[] = {
						{ace_cabletie,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_saw};
				vestMagazines[] = {
						{armag,2}
				};
				vestItems[] = {
						{chemgreen,2},
						{frag,2},
						ace_default
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {mgo,mg_laser};
		secKit[] = {};
};

//================AT Specialist==================
class AT {
		weapons[] = {rifle,mat,range};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{matheat,2},
						{mathe,2}
				};
				backpackItems[] = {
						{frag,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
						ace_default,
						{smokewhite,1},
						{chemgreen,1},
						{ace_cabletie,2},
						{mat_optic,1}
				};
		goggles[] = {glasses};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {rifle_scope,ir_laser,m4mb};
		secKit[] = {};
};
//================AT Assistant==================
class MATA {
		weapons[] = {rifle,range};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
						{matheat,2},
						{mathe,1}
				};
				backpackItems[] = {
						{frag,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
						ace_default,
						{smokewhite,1},
						{chemgreen,1},
						{ace_cabletie,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2}
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
		backpack[] = {long_range_backpack};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
						ace_default,
						{ace_epipen,1},
						{smokewhite,1},
						{chemgreen,1}
				};
		goggles[] = {glasses};
		vest[] = {vest_leader};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
						{samag,3}
				};
				vestItems[] = {
						{frag,2},
						{smokewhite,1},
						{smokered,1},
						{smokegreen,1},
						{hot,2},
						{ace_cabletie,2}
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
						{mgmag,2}
				};
				backpackItems[] = {
						{flashlight,1},
						{ace_sparebarrel,1},
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
				};
				uniformItems[] = {
						ace_default,
						{smokewhite,1},
						{chemgreen,1}
				};
		goggles[] = {glasses};
		vest[] = {vest_saw};
				vestMagazines[] = {
						{mgmag,3}
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
						{mgmag,3},
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
						{chemgreen,1},
						{frag,2}
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
//================Ammo Bearer==================
class AB {
weapons[] = {rifle};
magazines[] = { }; //do not use if using specific allocation of magazines
backpack[] = {default_backpack};
				backpackMagazines[] = {
						{mgmag,3},
						{riflemag,1}
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
						{frag,2},
						{smokewhite,1},
						{chemgreen,1}
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
//================Diver==================
class DIV {
		weapons[] = {smg,range, "RH_fnp45"};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {"B_FieldPack_blk"};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{chemblue,2},
						{smokewhite,1},
						{"ACE_IR_Strobe_Item",2},
						{explosive, 2},
						{ace_defuse, 1},
						{"ACE_DeadManSwitch", 1},
						{"RH_15Rnd_45cal_fnp", 2}
				};
		headgear[] = {};
		uniform[] = {"U_B_Wetsuit"};
				uniformMagazines[] = {
						{smgmag,6},
						{"RH_15Rnd_45cal_fnp", 2}
				};
				uniformItems[] = {
				};
		goggles[] = {"G_Balaclava_blk"};
		vest[] = {"V_RebreatherB"};
		assignedItems[] = {default_equipment, "ACE_NVG_Wide"};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {"muzzle_snds_L", "rhsusf_acc_anpeq15side", "rhsusf_acc_compm4"};
		secKit[] = {"RH_gemtech45", "RH_X300", "RH_docter"};
};//================Diver==================
class DIV2 {
		weapons[] = {smg,range, "RH_fnp45"};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {"B_rhsusf_B_BACKPACK"};
		headgear[] = {};
		uniform[] = {"U_B_Wetsuit"};
				uniformMagazines[] = {
						{smgmag,6},
						{"RH_15Rnd_45cal_fnp", 2}
				};
				uniformItems[] = {
				ace_default,
				{chemblue,2}
				};
		goggles[] = {"G_Balaclava_blk"};
		vest[] = {"V_RebreatherB"};
		assignedItems[] = {default_equipment, "ACE_NVG_Wide"};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {"muzzle_snds_L", "rhsusf_acc_anpeq15side", "rhsusf_acc_compm4"};
		secKit[] = {"RH_gemtech45", "RH_X300", "RH_docter"};
};

};