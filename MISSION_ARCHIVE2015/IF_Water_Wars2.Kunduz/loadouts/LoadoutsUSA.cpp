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
#define rifle "rhs_weap_m4a1_carryhandle_grip"
#define ar "rhs_weap_m249_pip"
#define glrifle "rhs_m4a1_m320"
#define dmr "hlc_rifle_M21"
#define sniper "hlc_rifle_psg1"
#define smg "hlc_smg_mp5n"
#define mg "rhs_weap_m240B"

//Secondary
#define sidearm "RH_m9"

//Launcher
#define rat "rhs_weap_M136"
#define mat "tf47_m3maaws"

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
#define default_uniform "TRYK_U_B_ARO1_CBR_R_CombatUniform", "TRYK_U_B_ARO1_CBR_CombatUniform"
	   
//Headgear
#define leader_headgear "rhsusf_ach_bare_tan", "rhsusf_ach_bare_tan_ess", "rhsusf_ach_bare_tan_headset", "rhsusf_ach_bare_tan_headset_ess", "H_Cap_tan", "TRYK_H_headsetcap", "TRYK_H_Bandana_wig_g", "TRYK_H_Booniehat_3CD"
#define default_headgear "rhsusf_ach_bare_tan", "rhsusf_ach_bare_tan_ess", "rhsusf_ach_bare_tan_headset", "rhsusf_ach_bare_tan_headset_ess", "H_Cap_tan", "TRYK_H_headsetcap", "TRYK_H_Bandana_wig_g"
#define vcrew_headgear "rhsusf_cvc_ess"
#define pilot_headgear "H_PilotHelmetHeli_B"
#define aircrew_headgear "H_PilotHelmetHeli_B"
#define sniper_headgear "TRYK_H_ghillie_over"

//Backpack
#define default_backpack "B_Kitbag_cbr"
#define crew_backpack "B_AssaultPack_cbr"
#define engineer_backpack "TRYK_B_Coyotebackpack"
#define long_range_backpack "tf_rt1523g_rhs"

//Vests
#define vest_default "TRYK_V_ArmorVest_AOR1"
#define vest_grenadier "TRYK_V_ArmorVest_AOR1"
#define vest_saw "TRYK_V_ArmorVest_AOR1_2"
#define vest_medic "TRYK_V_ArmorVest_AOR1"
#define vest_engineer "TRYK_V_ArmorVest_AOR1_2"
#define vest_sniper "TRYK_V_ArmorVest_AOR1"
#define vest_vehiclecrew_commander "V_TacVestIR_blk"
#define vest_vehiclecrew "V_TacVestIR_blk"
#define vest_leader "TRYK_V_ArmorVest_AOR1_2"
#define vest_ftl_leader "TRYK_V_ArmorVest_AOR1_2"

//Face
#define facecover "TRYK_Shemagh_shade"
#define glasses "rhs_googles_clear"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_anprc152","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch","tf_anprc152"

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
	//================Raven==================
	class RAV {
		weapons[] = {"hlc_smg_mp5a3","lerca_1200_black"};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		backpack[] = {"B_rhsusf_B_BACKPACK"};
			backpackMagazines[] = {
			};
			backpackItems[] = {
			};
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{"hlc_30Rnd_9x19_B_MP5",2}
			};
			uniformItems[] = {
				agm_default,
				{agm_epipen,1},
				{frag,1}
			};
		goggles[] = {glasses};
		vest[] = {vest_leader};
			vestMagazines[] = {
				{"hlc_30Rnd_9x19_B_MP5",5}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {"optic_Aco_smg"};
		secKit[] = {};
	};
//================Platoon Sgt. (RTO)==================
class RTO {
		weapons[] = {rifle,binoculars};
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
						{riflemag_tr,2}
				};
				vestItems[] = {
						{smokewhite,1},
						{smokered,1},
						{smokegreen,1},
						{hot,2},
						{ace_cabletie,2},
						{flaregreen,2}
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
						{chemgreen,1},
						{frag,2}
				};
		goggles[] = {glasses};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
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
		weapons[] = {rifle,binoculars};
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
//================Designated Marksman==================
class MARK {
		weapons[] = {dmr,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{dmrMag,4}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_sniper};
				vestMagazines[] = {
						{dmrMag,7}
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {marksman_scope};
		secKit[] = {};
};
//================Sniper==================
class SN {
		weapons[] = {sniper};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{chemblue,2},
						{smokewhite,3},
						{frag,2}
				};
		headgear[] = {sniper_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{snipermag,4}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_sniper};
				vestMagazines[] = {
						{snipermag,12}
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {sniper_scope};
		secKit[] = {};
};
//================Spotter==================
class SP {
		weapons[] = {rifle,binoculars};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
				};
		headgear[] = {sniper_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,2}
				};
				uniformItems[] = {
						{long_range,1}
				};
		goggles[] = {glasses};
		vest[] = {vest_default};
				vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
				};
		assignedItems[] = {leader_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {holosight_x4,ir_laser};
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
//================Vehicle Commander==================
class VC {
		weapons[] = {smg};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {default_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
				};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{smgmag,2}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_vehiclecrew_commander};
				vestMagazines[] = {
						{smgmag,7}
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
						ace_default,
						{toolkit,1},
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
				};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{smgmag,2}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_vehiclecrew};
				vestMagazines[] = {
						{smgmag,7}
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
						ace_default,
						{chemblue,2},
						{smokewhite,2},
						{frag,2}
				};
		headgear[] = {vcrew_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{smgmag,2}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_vehiclecrew};
				vestMagazines[] = {
						{smgmag,7}
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
		vest[] = {vest_vehiclecrew};
				vestMagazines[] = {
				{smgmag,3}
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
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {};
		secKit[] = {};
};
//================Engineer==================
class ENG {
		weapons[] = {rifle};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {engineer_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{toolkit,1},
						{chemgreen,2},
						{smokewhite,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_engineer};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {holosight,ir_laser};
		secKit[] = {};
};
//================Engineer (DEMO)==================
class ENGDEMO {
		weapons[] = {rifle};
		magazines[] = { }; //do not use if using specific allocation of magazines
		backpack[] = {engineer_backpack};
				backpackMagazines[] = {
				};
				backpackItems[] = {
						ace_default,
						{toolkit,1},
						{explosive,5},
						{ace_firing_device,1},
						{chemgreen,2},
						{smokewhite,2}
				};
		headgear[] = {default_headgear};
		uniform[] = {default_uniform};
				uniformMagazines[] = {
						{riflemag,3}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_engineer};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
		priKit[] = {holosight,ir_laser};
		secKit[] = {};
};
//================Engineer (Mine)==================
class ENGMINE {
		weapons[] = {rifle};
		magazines[] = { }; //do not use if using specific allocation of magazines
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
						{riflemag,3}
				};
				uniformItems[] = {
				};
		goggles[] = {glasses};
		vest[] = {vest_engineer};
				vestMagazines[] = {
						{riflemag,4},
						{riflemag_tr,2},
				};
		assignedItems[] = {default_equipment};
		items[] = {     }; //do not use if using specific allocation of items
	   
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