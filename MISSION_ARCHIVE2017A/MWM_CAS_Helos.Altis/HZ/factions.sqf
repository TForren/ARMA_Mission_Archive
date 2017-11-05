_chosenFaction = _this select 0;
_factionUnits = [];
_factionVehicles = [];
_factionVehiclesArmed = [];
_factionAA = [];
_factionArtillery = [];
_factionTanks = [];
_factionHelicopters = [];
_factionJets = [];
_hvtTargets = [];

switch (_chosenFaction) do {
    case "ChDKZ": {
		//Pilot, crew, squad leader, every,one,else
		_factionUnits = ["CUP_O_INS_Pilot","CUP_O_INS_Crew","CUP_O_INS_Officer",'CUP_O_INS_Soldier_AA', 'CUP_O_INS_Soldier_Ammo', 'CUP_O_INS_Soldier_AT', 'CUP_O_INS_Soldier_AR', 'CUP_O_INS_Sniper', 'CUP_O_INS_Soldier_Exp', 'CUP_O_INS_Soldier_AK74', 'CUP_O_INS_Soldier', 'CUP_O_INS_Medic', 'CUP_O_INS_Soldier_MG', 'CUP_O_INS_Soldier_GL', 'CUP_O_INS_Soldier_Engineer', 'CUP_O_INS_Saboteur'];
		_factionVehicles = ['CUP_O_UAZ_Open_CHDKZ', 'CUP_O_Ural_CHDKZ', 'CUP_O_Ural_Reammo_CHDKZ', 'CUP_O_Ural_Refuel_CHDKZ', 'CUP_O_Ural_Repair_CHDKZ'];
		_factionVehiclesArmed = ['CUP_O_Datsun_PK', 'CUP_O_Datsun_PK_Random', 'CUP_O_UAZ_AGS30_CHDKZ', 'CUP_O_UAZ_MG_CHDKZ', 'CUP_O_UAZ_METIS_CHDKZ', 'CUP_O_UAZ_SPG9_CHDKZ'];
		_factionAA = ['CUP_O_Ural_ZU23_CHDKZ', 'CUP_O_ZSU23_ChDKZ', 'CUP_O_ZU23_ChDKZ', 'rhs_gaz66_zu23_msv', 'CUP_O_BMP2_ZU_TKA', 'CUP_O_2S6M_RU'];
		_factionArtillery = ['CUP_O_BM21_CHDKZ', 'CUP_O_D30_ChDKZ'];
		_factionTanks = ['CUP_O_T72_CHDKZ', 'rhs_t80', 'rhs_t80a', 'rhs_t80b'];
		_factionHelicopters = ['CUP_O_Mi8_CHDKZ'];
		_factionJets = ['RHS_Su25SM_CAS_vvsc'];
		_hvtTargets = ["CUP_O_INS_Story_Bardak","CUP_O_INS_Story_Lopotev","CUP_O_INS_Commander","CUP_O_INS_Officer"];
	};
    case "MSV": { 
		_factionUnits = ['rhs_pilot_combat_heli','rhs_msv_combatcrew','rhs_msv_sergeant','rhs_msv_aa', 'rhs_msv_at', 'rhs_msv_rifleman', 'rhs_msv_grenadier', 'rhs_msv_LAT', 'rhs_msv_RShG2', 'rhs_msv_arifleman', 'rhs_msv_efreitor', 'rhs_msv_engineer', 'rhs_msv_strelok_rpg_assist', 'rhs_msv_machinegunner', 'rhs_msv_machinegunner_assistant', 'rhs_msv_medic', 'rhs_msv_grenadier_rpg', 'rhs_msv_junior_sergeant', 'rhs_msv_marksman'];
		_factionVehicles = ['rhs_tigr_msv', 'rhs_tigr_3camo_msv', 'rhs_tigr_m_msv', 'rhs_tigr_m_3camo_msv', 'RHS_UAZ_MSV_01', 'rhs_uaz_open_MSV_01', 'rhs_gaz66_msv', 'rhs_gaz66_ammo_msv', 'rhs_gaz66_r142_msv', 'RHS_Ural_Fuel_MSV_01', 'rhs_gaz66_repair_msv'];
		_factionVehiclesArmed = ['rhs_tigr_sts_msv', 'rhs_btr70_msv', 'rhs_btr80_msv', 'rhs_btr80a_msv'];
		_factionAA = ['rhs_gaz66_zu23_msv', 'RHS_Ural_Zu23_MSV_01', 'rhs_Igla_AA_pod_msv', 'RHS_ZU23_MSV', 'CUP_O_2S6M_RU', 'rhs_zsu234_aa'];
		_factionArtillery = ['rhs_D30_msv', 'rhs_D30_at_msv', 'rhs_2b14_82mm_msv', 'RHS_BM21_MSV_01'];
		_factionTanks = ['rhs_btr70_msv', 'rhs_btr80_msv', 'rhs_btr80a_msv', 'rhs_Ob_681_2', 'rhs_brm1k_msv', 'rhs_bmp3mera_msv', 'rhs_bmp3m_msv', 'rhs_bmp3_late_msv', 'rhs_bmp2k_msv', 'rhs_bmp2d_msv', 'rhs_bmp2_msv', 'rhs_bmp2e_msv', 'rhs_t90a_tv', 'rhs_t90_tv', 'rhs_t80um', 'rhs_t80uk', 'rhs_t80ue1', 'rhs_t80u45m', 'rhs_t80u'];
		_factionHelicopters = ['RHS_Ka52_vvsc', 'RHS_Ka52_UPK23_vvsc', 'RHS_Mi24P_AT_vvsc', 'RHS_Mi24P_CAS_vvsc', 'RHS_Mi24P_vvsc', 'RHS_Mi24V_AT_vvsc', 'RHS_Mi24V_vvsc', 'RHS_Mi24V_FAB_vvsc', 'RHS_Mi24V_UPK23_vvsc', 'RHS_Mi24Vt_vvsc', 'RHS_Mi8AMTSh_vvsc', 'RHS_Mi8AMTSh_FAB_vvsc', 'RHS_Mi8AMTSh_UPK23_vvsc', 'RHS_Mi8MTV3_vvsc', 'RHS_Mi8MTV3_FAB_vvsc', 'RHS_Mi8MTV3_UPK23_vvsc'];
		_factionJets = ['RHS_Su25SM_vvsc', 'RHS_Su25SM_CAS_vvsc', 'RHS_Su25SM_KH29_vvsc', 'RHS_T50_vvs_generic', 'RHS_T50_vvs_052', 'RHS_T50_vvs_blueonblue'];
		_hvtTargets = ['rhs_msv_sergeant', 'rhs_msv_officer'];
	};
	
    default { hint "default" };
};

//Return
[_chosenFaction,_factionUnits,_factionVehicles,_factionVehiclesArmed,_factionAA,_factionArtillery,_factionTanks,_factionHelicopters,_factionJets,_hvtTargets];