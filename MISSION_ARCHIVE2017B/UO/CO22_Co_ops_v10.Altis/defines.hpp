/*
    This file is where all the enemies and objects are going to be defined (the ones from the missions / SM) at least.
    Please keep the format of the defines as is, if a define is an array keep it an array.
*/

//------------------------------------ Main AO

// Vehicles
#define MRAPList ["rhsgref_BRDM2_ins", "rhsgref_ins_btr70", "rhsgref_ins_uaz_dshkm"]
#define AAVehicleList ["rhsgref_ins_zsu234", "rhsgref_ins_ural_Zu23", "rhsgref_ins_gaz66_zu23"]
#define RandomVehicleList ["rhsgref_ins_t72ba", "rhsgref_ins_t72bb", "rhsgref_ins_t72bc", "rhsgref_ins_btr70", "rhsgref_BRDM2_ATGM_ins", "rhsgref_ins_uaz_dshkm", "rhsgref_ins_uaz_spg9", "rhsgref_ins_uaz_ags"]

// Urban groups related stuff
#define UrbanGroupsCFGPATH >> "CfgGroups" >> "East" >> "rhsgref_faction_chdkz" >> "rhsgref_group_chdkz_insurgents_infantry" >>
#define UrbanGroupsList ["rhsgref_group_chdkz_insurgents_squad"]
#define UrbanUnits ["rhsgref_ins_spotter", "rhsgref_ins_sniper", "rhsgref_ins_engineer", "rhsgref_ins_saboteur", "rhsgref_ins_rifleman_RPG26", "rhsgref_ins_grenadier", "rhsgref_ins_rifleman_akm", "rhsgref_ins_rifleman", "rhsgref_ins_", "rhsgref_ins_grenadier_rpg"]

// Infantry groups related stuff
#define InfantryGroupsCFGPATH >> "CfgGroups" >> "East" >> "rhsgref_faction_chdkz" >> "rhsgref_group_chdkz_insurgents_infantry" >>
#define InfantryGroupList ["rhsgref_group_chdkz_infantry_mg", "rhsgref_group_chdkz_infantry_patrol", "rhsgref_group_chdkz_insurgents_squad"]
#define AAGroupsList ["rhsgref_group_chdkz_infantry_aa"]
#define ATGroupsList ["rhsgref_group_chdkz_infantry_at"]

// Buildings that are always going to be fully filled when present in the AO
#define MilitaryBuildings ["Land_Cargo_House_V1_F", "Land_Cargo_House_V2_F", "Land_Cargo_House_V3_F", "Land_Medevac_house_V1_F", "Land_Research_house_V1_F", "Land_Cargo_HQ_V1_F", "Land_Cargo_HQ_V2_F", "Land_Cargo_HQ_V3_F", "Land_Research_HQ_F", "Land_Medevac_HQ_V1_F", "Land_Cargo_Patrol_V1_F", "Land_Cargo_Patrol_V2_F", "Land_Cargo_Patrol_V3_F", "Land_Cargo_Tower_V1_F", "Land_Cargo_Tower_V2_F", "Land_Cargo_Tower_V3_F"]

//------------------------------------ Side missions

#define CACHESMCacheArray ["Box_FIA_Wps_F", "Box_FIA_Ammo_F", "Box_FIA_Support_F"]
#define COMTOWERSMArray ["Land_Communication_F", "Land_TTowerBig_1_F", "Land_TTowerBig_2_F"]
#define OFFICERSMTarget ["rhsgref_ins_commander"]
#define OFFICERSMGuards ["rhsgref_ins_rifleman"]
#define SPECOPSSMGroup >> "CfgGroups" >> "East" >> "rhsgref_faction_chdkz" >> "rhsgref_group_chdkz_insurgents_infantry" >> "rhsgref_group_chdkz_insurgents_squad"
#define TRUCKSMTruck "rhsgref_ins_gaz66_ammo"
// Array of arrays in the format [classname, attachTo offset] leave empty if you don't want boxes
#define TRUCKSMBoxes []
// index of the cargo seats that you want locked, leave empty if you don't want that.
#define TRUCKSMLockedCargoSeats []
#define UAVSMUav ["rhs_pchela1t_vvsc"]
#define CARGOSMScubaGroup >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> "OI_diverTeam"
#define CARGOSMPlane "Land_UWreck_MV22_F"
#define CARGOSMBox "Land_CargoBox_V1_F"
// Offset of the attached explosive
#define CARGOSMBoxAttachOffset [0, 0, 0.75]

// first element of the array: vehicle classname, second element: chance to be picked, higher is better, highest should be 10 (for performances)
#define SMRewards ["rhsusf_m1a1aimwd_usarmy", 5], \
["rhsusf_m1a1aim_tuski_wd", 4], \
["rhsusf_m1a2sep1wd_usarmy", 3], \
["rhsusf_m1a2sep1tuskiwd_usarmy", 2], \
["rhsusf_m1a2sep1tuskiiwd_usarmy", 1], \
["rhsusf_M1117_W", 3], \
["rhsusf_m1025_w_Mk19", 2], \
["rhsusf_m113_usarmy_MK19", 1], \
["RHS_M2A2_wd", 5], \
["RHS_M2A2_BUSKI_WD", 4], \
["RHS_M2A3_wd", 3], \
["RHS_M2A3_BUSKI_wd", 2], \
["RHS_M2A3_BUSKIII_wd", 1], \
["RHS_M6_wd", 2], \
["RHS_AH64D_wd", 1], \
["RHS_AH64D_wd_GS", 1], \
["RHS_A10_AT", 1], \
["RHS_A10", 1], \
["rhsusf_f22", 1], \
["RHS_MELB_H6M", 3], \
["RHS_MELB_AH6M_M", 3], \
["RHS_MELB_AH6M_L", 3], \
["RHS_MELB_AH6M_H", 3]

//------------------------------------ Random stuff
#define pilotRespawnMarker "pilotRespawn"
#define AirReinforcementVehicleList []
#define NoAmmoCargoVehc ["B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F"] // The vehicles that should have their ammoCargo set to 0 on respawn, avoid people abusing them to rearm planes outside of the service pad
#define VHCrewedVehicles  ["B_UAV_02_CAS_F", "B_UAV_02_F", "B_UGV_01_F", "B_UGV_01_rcws_F"] // Respawned vehicles that should have crew aka UAVs

// Vehicle handler array, arguments are [vehicle, respawn timer (in seconds)]
#define VehicleHandlerArray [[hummy1, 600], [ghostHawk1, 600], [ghostHawk2, 600], [mohawk1, 600], [huron1, 600],[greyhawk1, 900], \
[hunter1, 300], [hunter2, 300], [hunter3, 300], [hunter4, 300], [hunter5, 300], [armedTechnical1, 300], [armedTechnical2, 300], \
[truck1, 300], [MHQ, 3], [MHQ2, 3], [truck3, 300], [truck4, 300], [truck5, 300], \
[armored1, 300], [armored2, 300], [armored3, 300], [armored4, 300], \
[sdv1, 300], [boat1, 300], [boat2, 300], [boat2_1, 300], [boat2_2, 300], [boat2_3, 300], [boat3, 300], \
[ah6, 1200], [a10, 1800]]

// Vehicle handler array for quads (different loop), same arguments as above
#define VehicleHandlerArrayQuads [[quad1, 5], [quad2, 5], [quad3, 5], [quad4, 5], [quad5, 5], [quad6, 5], [quad7, 5]]

#define ArsenalBoxes [arsenalBox1, arsenalBox2, arsenalDude] // Vars of the arsenal boxes

// Arsenal blacklist and gear limitations
#define ArsenalWeaponBlacklist [ \
    "srifle_DMR_01_SOS_F", \
    "srifle_EBR_SOS_F", \
    "srifle_GM6_SOS_F", \
    "srifle_GM6_LRPS_F", \
    "srifle_LRR_SOS_F", \
    "srifle_LRR_LRPS_F", \
    "arifle_Katiba_GL_Nstalker_pointer_F", \
    "arifle_MXC_SOS_point_snds_F", \
    "arifle_MXM_SOS_pointer_F", \
    "srifle_GM6_camo_SOS_F",  \
    "srifle_GM6_camo_LRPS_F", \
    "srifle_LRR_camo_SOS_F", \
    "srifle_LRR_camo_LRPS_F", \
    "srifle_DMR_02_SOS_F", \
    "srifle_DMR_03_SOS_F", \
    "srifle_DMR_04_SOS_F", \
    "srifle_DMR_04_NS_LP_F", \
    "srifle_DMR_05_SOS_F" \
]

#define ArsenalBlacklistedItems [ \
    "optic_Nightstalker", \
    "optic_tws", \
    "optic_tws_mg", \
    "O_UavTerminal", \
    "I_UavTerminal", \
    "O_NVGoggles_ghex_F", \
    "O_NVGoggles_hex_F", \
    "O_NVGoggles_urb_F", \
    "NVGogglesB_blk_F", \
    "NVGogglesB_grn_F", \
    "NVGogglesB_gry_F" \
]

#define ArsenalBlacklistedUniforms [ \
    "U_O_CombatUniform_ocamo", \
    "U_O_CombatUniform_oucamo", \
    "U_O_OfficerUniform_ocamo", \
    "U_O_SpecopsUniform_ocamo", \
    "U_O_T_Soldier_F", \
    "U_B_GEN_Commander_F", \
    "U_B_GEN_Soldier_F", \
    "U_O_T_Officer_F", \
    "U_O_V_Soldier_Viper_F", \
    "U_O_V_Soldier_Viper_hex_F", \
    "U_I_C_Soldier_Camo_F", \
    "U_I_CombatUniform", \
    "U_I_CombatUniform_shortsleeve", \
    "U_I_OfficerUniform", \
    "U_O_PilotCoveralls", \
    "U_I_pilotCoveralls", \
    "U_I_HeliPilotCoveralls", \
 \
    "U_I_FullGhillie_sard", \
    "U_O_FullGhillie_sard", \
    "U_I_FullGhillie_ard", \
    "U_O_FullGhillie_ard", \
    "U_I_FullGhillie_lsh", \
    "U_O_FullGhillie_lsh", \
    "U_I_GhillieSuit", \
    "U_O_GhillieSuit", \
    "U_O_T_FullGhillie_tna_F", \
    "U_O_T_Sniper_F", \
 \
    "U_O_Wetsuit", \
    "U_I_Wetsuit", \
 \
    "U_C_Poloshirt_blue", \
    "U_C_Poloshirt_burgundy", \
    "U_C_Poloshirt_stripped", \
    "U_C_Poloshirt_tricolour", \
    "U_C_Poloshirt_salmon", \
    "U_C_Poloshirt_redwhite", \
    "U_C_Man_casual_2_F", \
    "U_C_Man_casual_3_F", \
    "U_C_Man_casual_1_F", \
    "U_C_man_sport_1_F", \
    "U_C_man_sport_3_F", \
    "U_C_man_sport_2_F", \
    "U_C_Man_casual_6_F", \
    "U_C_Man_casual_4_F", \
    "U_C_Man_casual_5_F", \
    "U_C_Driver_1_black", \
    "U_C_Driver_1_blue", \
    "U_C_Driver_2", \
    "U_C_Driver_1", \
    "U_C_Driver_1_green", \
    "U_C_Driver_1_orange", \
    "U_C_Driver_1_red", \
    "U_C_Driver_3", \
    "U_C_Driver_4", \
    "U_C_Driver_1_white", \
    "U_C_Driver_1_yellow", \
    "U_C_HunterBody_grn", \
    "U_OrestesBody", \
    "U_C_Journalist", \
    "U_Marshal", \
    "U_C_Scientist", \
    "U_C_WorkerCoveralls", \
    "U_C_Poor_1", \
    "U_Competitor", \
    "U_Rangemaster", \
    "U_B_Protagonist_VR", \
    "U_O_Protagonist_VR", \
    "U_I_Protagonist_VR" \
]

#define ArsenalBlacklistedHelmets [ \
    "H_HelmetSpecO_blk", \
    "H_HelmetO_ocamo", \
    "H_HelmetO_oucamo", \
    "H_HelmetSpecO_ocamo", \
    "H_HelmetLeaderO_ocamo", \
    "H_HelmetLeaderO_oucamo", \
    "H_HelmetIA", \
    "H_PilotHelmetFighter_O", \
    "H_PilotHelmetFighter_I", \
    "H_PilotHelmetHeli_O", \
    "H_PilotHelmetHeli_I", \
    "H_CrewHelmetHeli_O", \
    "H_CrewHelmetHeli_I", \
    "H_HelmetCrew_I", \
    "H_HelmetCrew_O", \
    "H_RacingHelmet_1_F", \
    "H_RacingHelmet_2_F", \
    "H_RacingHelmet_3_F", \
    "H_RacingHelmet_4_F", \
    "H_RacingHelmet_1_black_F", \
    "H_RacingHelmet_1_blue_F", \
    "H_RacingHelmet_1_green_F", \
    "H_RacingHelmet_1_red_F", \
    "H_RacingHelmet_1_white_F", \
    "H_RacingHelmet_1_yellow_F", \
    "H_RacingHelmet_1_orange_F", \
    "H_Cap_marshal", \
    "H_StrawHat", \
    "H_StrawHat_dark", \
    "H_Hat_blue", \
    "H_Hat_brown", \
    "H_Hat_camo", \
    "H_Hat_grey", \
    "H_Hat_checker", \
    "H_Hat_tan", \
    "H_Helmet_Skate", \
    "H_MilCap_ocamo", \
    "H_MilCap_dgtl", \
    "H_HelmetSpecO_ghex_F", \
    "H_Booniehat_dgtl", \
    "H_Cap_blk_Raven", \
    "H_Cap_brn_SPECOPS", \
    "H_HelmetCrew_O_ghex_F", \
    "H_HelmetLeaderO_ghex_F", \
    "H_MilCap_ghex_F", \
    "H_HelmetO_ghex_F", \
    "H_HelmetO_ViperSP_ghex_F", \
    "H_HelmetO_ViperSP_hex_F" \
]

#define ArsenalBlacklistedBackpacks [ \
    "O_Mortar_01_weapon_F", \
    "O_Mortar_01_support_F", \
    "I_Mortar_01_weapon_F", \
    "I_Mortar_01_support_F", \
 \
    "B_GMG_01_A_weapon_F", \
    "B_GMG_01_high_F", \
    "B_GMG_01_high_weapon_F", \
    "B_GMG_01_weapon_F", \
    "O_GMG_01_A_weapon_F", \
    "O_GMG_01_high_F", \
    "O_GMG_01_high_weapon_F", \
    "O_GMG_01_weapon_F", \
    "I_GMG_01_A_weapon_F", \
    "I_GMG_01_high_F", \
    "I_GMG_01_high_weapon_F", \
    "I_GMG_01_weapon_F", \
 \
    "B_HMG_01_A_weapon_F", \
    "B_HMG_01_high_weapon_F", \
    "B_HMG_01_support_F", \
    "B_HMG_01_support_high_F", \
    "B_HMG_01_weapon_F", \
    "O_HMG_01_A_weapon_F", \
    "O_HMG_01_high_weapon_F", \
    "O_HMG_01_support_F", \
    "O_HMG_01_support_high_F", \
    "O_HMG_01_weapon_F", \
    "I_HMG_01_A_weapon_F", \
    "I_HMG_01_high_weapon_F", \
    "I_HMG_01_support_F", \
    "I_HMG_01_support_high_F", \
    "I_HMG_01_weapon_F", \
 \
    "B_AA_01_weapon_F", \
    "O_AA_01_weapon_F", \
    "I_AA_01_weapon_F", \
    "B_AT_01_weapon_F", \
    "O_AT_01_weapon_F", \
    "I_AT_01_weapon_F", \
 \
    "B_Respawn_Sleeping_bag_blue_F", \
    "B_Respawn_Sleeping_bag_brown_F", \
    "B_Respawn_Sleeping_bag_F", \
    "B_Respawn_TentA_F", \
    "B_Respawn_TentDome_F", \
 \
    "O_Static_Designator_02_weapon_F", \
    "B_AssaultPack_dgtl", \
    "B_AssaultPack_ocamo", \
    "B_Carryall_ocamo", \
    "B_Carryall_oucamo", \
    "B_FieldPack_ocamo", \
    "B_FieldPack_oucamo", \
    "B_TacticalPack_ocamo", \
    "I_UAV_01_backpack_F", \
    "O_UAV_01_backpack_F", \
    "B_Carryall_ghex_F", \
    "B_FieldPack_ghex_F", \
    "B_ViperHarness_ghex_F", \
    "B_ViperHarness_hex_F", \
    "B_ViperLightHarness_ghex_F", \
    "B_ViperLightHarness_hex_F" \
]

#define ArsenalBlacklistedGlasses [ \
    "G_Goggles_VR", \
    "G_Lady_Blue", \
    "G_Spectacles", \
    "G_Spectacles_Tinted", \
    "G_I_Diving", \
    "G_O_Diving" \
]

#define ArsenalBlacklistedVests [ \
    "V_Press_F", \
    "V_HarnessO_brn", \
    "V_HarnessOGL_brn", \
    "V_HarnessO_gry", \
    "V_HarnessOGL_gry", \
    "V_HarnessOSpec_brn", \
    "V_HarnessOSpec_gry", \
    "V_RebreatherIR", \
    "V_RebreatherIA", \
    "V_PlateCarrierIAGL_dgtl", \
    "V_PlateCarrierIAGL_oli", \
    "V_PlateCarrierIA1_dgtl", \
    "V_PlateCarrierIA2_dgtl", \
    "V_TacVest_gen_F", \
    "V_HarnessOGL_ghex_F", \
    "V_HarnessO_ghex_F", \
    "V_BandollierB_ghex_F" \
]

#define GearLimitationMarksman [{_unit getUnitTrait 'derp_marksman'}, [ \
    "optic_SOS", "optic_SOS_khk_F", "optic_DMS", "optic_DMS_ghex_F", "optic_AMS", "optic_AMS_khk", "optic_AMS_snd", "optic_KHS_blk", "optic_KHS_hex", "optic_KHS_old", "optic_KHS_tan", \
 \
    "srifle_DMR_01_F", "srifle_DMR_01_ACO_F", "srifle_DMR_01_MRCO_F", "srifle_DMR_01_SOS_F", "srifle_DMR_01_DMS_F", "srifle_DMR_01_DMS_snds_F", "srifle_DMR_01_ARCO_F", "srifle_EBR_ACO_F", "srifle_EBR_MRCO_pointer_F", "srifle_EBR_ARCO_pointer_F", "srifle_EBR_SOS_F", "srifle_EBR_ARCO_pointer_snds_F", "srifle_EBR_DMS_F", "srifle_EBR_Hamr_pointer_F", "srifle_EBR_F", "srifle_EBR_DMS_pointer_snds_F", "srifle_DMR_01_DMS_BI_F", "srifle_DMR_01_DMS_snds_BI_F", "srifle_EBR_MRCO_LP_BI_F", "srifle_DMR_03_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_multicam_F", "srifle_DMR_03_woodland_F", "srifle_DMR_03_spotter_F", "srifle_DMR_03_ACO_F", "srifle_DMR_03_MRCO_F", "srifle_DMR_03_SOS_F", "srifle_DMR_03_DMS_F", "srifle_DMR_03_tan_AMS_LP_F", "srifle_DMR_03_DMS_snds_F", "srifle_DMR_03_ARCO_F", "srifle_DMR_03_AMS_F", "srifle_DMR_04_F", "srifle_DMR_04_Tan_F", "srifle_DMR_04_ACO_F", "srifle_DMR_04_MRCO_F", "srifle_DMR_04_SOS_F", "srifle_DMR_04_DMS_F", "srifle_DMR_04_ARCO_F", "srifle_DMR_04_NS_LP_F", "srifle_DMR_06_camo_F", "srifle_DMR_06_olive_F", "srifle_DMR_06_camo_khs_F", "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F", "srifle_DMR_02_ACO_F", "srifle_DMR_02_MRCO_F", "srifle_DMR_02_SOS_F", "srifle_DMR_02_DMS_F", "srifle_DMR_02_sniper_AMS_LP_S_F", "srifle_DMR_02_camo_AMS_LP_F", "srifle_DMR_02_ARCO_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_f", "srifle_DMR_05_ACO_F", "srifle_DMR_05_MRCO_F", "srifle_DMR_05_SOS_F", "srifle_DMR_05_DMS_F", "srifle_DMR_05_KHS_LP_F", "srifle_DMR_05_DMS_snds_F", "srifle_DMR_05_ARCO_F", "srifle_DMR_07_blk_DMS_F", "srifle_DMR_07_blk_DMS_Snds_F", "srifle_DMR_07_blk_F", "srifle_DMR_07_ghex_F", "srifle_DMR_07_hex_F", "arifle_MXM_Black_F", "arifle_MXM_DMS_F", "arifle_MXM_DMS_LP_BI_snds_F", "arifle_MXM_F", "arifle_MXM_Hamr_LP_BI_F", "arifle_MXM_Hamr_pointer_F", "arifle_MXM_khk_F", "arifle_MXM_khk_MOS_Pointer_Bipod_F", "arifle_MXM_RCO_pointer_snds_F", "arifle_MXM_SOS_pointer_F", "arifle_SPAR_03_blk_F", "arifle_SPAR_03_blk_MOS_Pointer_Bipod_F", "arifle_SPAR_03_khk_F", "arifle_SPAR_03_snd_F" \
], "Marksman"]

#define GearLimitationAT  [{_unit getUnitTrait 'derp_AT'}, [ \
    "launch_B_Titan_F", "launch_I_Titan_F", "launch_O_Titan_F", "launch_B_Titan_short_F", "launch_I_Titan_short_F", "launch_O_Titan_short_F", "launch_O_Titan_ghex_F", "launch_B_Titan_tna_F", "launch_O_Titan_short_ghex_F", "launch_B_Titan_short_tna_F" \
], "AT specialist"]

#define GearLimitationSniper [{_unit getUnitTrait 'derp_sniper'}, [ \
    "optic_LRPS", "optic_LRPS_ghex_F", "optic_LRPS_tna_F", \
 \
    "srifle_GM6_F", "srifle_GM6_SOS_F", "srifle_GM6_LRPS_F", "srifle_LRR_F", "srifle_LRR_SOS_F", "srifle_LRR_LRPS_F", "srifle_GM6_camo_F", "srifle_GM6_camo_SOS_F", "srifle_GM6_camo_LRPS_F", "srifle_LRR_camo_F", "srifle_LRR_camo_F", "srifle_LRR_camo_LRPS_F", "srifle_GM6_ghex_F", "srifle_GM6_ghex_LRPS_F", "srifle_LRR_tna_F", "srifle_LRR_tna_LRPS_F" \
], "Sniper"]

#define GearLimitationMMG [{_unit getUnitTrait 'derp_machinegunner'}, [ \
    "MMG_01_hex_F", "MMG_01_tan_F", "MMG_01_hex_ARCO_LP_F", "MMG_02_camo_F", "MMG_02_black_F", "MMG_02_sand_F", "MMG_02_sand_RCO_LP_F", "MMG_02_black_RCO_BI_F", "LMG_Mk200_F", "LMG_Mk200_BI_F", "LMG_Mk200_LP_BI_F", "LMG_Zafir_F", "LMG_Zafir_pointer_F", "LMG_Zafir_ARCO_F", "LMG_03_F", "arifle_MX_SW_Black_F", "arifle_MX_SW_Black_Hamr_pointer_F", "arifle_MX_SW_F", "arifle_MX_SW_Hamr_pointer_F", "arifle_MX_SW_khk_F", "arifle_MX_SW_khk_Pointer_F", "arifle_MX_SW_pointer_F", "arifle_SPAR_02_blk_F", "arifle_SPAR_02_blk_Pointer_F", "arifle_SPAR_02_khk_F", "arifle_SPAR_02_snd_F", "arifle_CTARS_ghex_F", "arifle_CTARS_hex_F", "arifle_CTARS_blk_F", "arifle_CTARS_blk_Pointer_F" \
], "Autorifleman"]

#define GearLimitationUAVOperator [{_unit getUnitTrait 'derp_uavOperator'}, ["B_UavTerminal"], "UAV operator"]

#define GearLimitationGrenadier [{_unit getUnitTrait 'derp_grenadier'}, [ \
    "arifle_Katiba_GL_F", "arifle_Katiba_GL_ACO_F", "arifle_Katiba_GL_ARCO_pointer_F", "arifle_Katiba_GL_ACO_pointer_F", "arifle_Katiba_GL_Nstalker_pointer_F", "arifle_Katiba_GL_ACO_pointer_snds_F", "arifle_Mk20_GL_F", "arifle_Mk20_GL_plain_F", "arifle_Mk20_GL_MRCO_pointer_F", "arifle_Mk20_GL_ACO_F", "arifle_MX_GL_F", "arifle_MX_GL_ACO_F", "arifle_MX_GL_ACO_pointer_F", "arifle_MX_GL_Hamr_pointer_F", "arifle_MX_GL_Holo_pointer_snds_F", "arifle_MX_GL_Black_F", "arifle_MX_GL_Black_Hamr_pointer_F", "arifle_TRG21_GL_F", "arifle_TRG21_GL_MRCO_F", "arifle_TRG21_GL_ACO_pointer_F", "arifle_AK12_GL_F", "arifle_CTAR_GL_blk_ACO_F", "arifle_CTAR_GL_blk_ACO_Pointer_Snds_F", "arifle_CTAR_GL_blk_F", "arifle_MX_GL_khk_ACO_F", "arifle_MX_GL_khk_F", "arifle_MX_GL_khk_Hamr_Pointer_F", "arifle_MX_GL_khk_Holo_Pointer_Snds_F", "arifle_SPAR_01_GL_blk_ACO_Pointer_F", "arifle_SPAR_01_GL_blk_F", "arifle_SPAR_01_GL_khk_F", "arifle_SPAR_01_GL_snd_F", "arifle_CTAR_GL_ghex_F", "arifle_CTAR_GL_hex_F" \
], "Grenadier"]
