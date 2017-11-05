_chosenFaction = _this select 0;
_factionUnits = [];
_factionVehicles = [];
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
		_factionVehicles = ['CUP_O_Datsun_PK', 'CUP_O_Datsun_PK_Random', 'CUP_O_UAZ_AGS30_CHDKZ', 'CUP_O_UAZ_MG_CHDKZ', 'CUP_O_UAZ_METIS_CHDKZ', 'CUP_O_UAZ_Open_CHDKZ', 'CUP_O_UAZ_SPG9_CHDKZ', 'CUP_O_Ural_CHDKZ', 'CUP_O_Ural_Reammo_CHDKZ', 'CUP_O_Ural_Refuel_CHDKZ', 'CUP_O_Ural_Repair_CHDKZ'];
		_factionAA = ['CUP_O_Ural_ZU23_CHDKZ', 'CUP_O_ZSU23_ChDKZ', 'CUP_O_ZU23_ChDKZ', 'rhs_gaz66_zu23_msv', 'CUP_O_BMP2_ZU_TKA', 'CUP_O_2S6M_RU'];
		_factionArtillery = ['CUP_O_BM21_CHDKZ', 'CUP_O_D30_ChDKZ'];
		_factionTanks = ['CUP_O_T72_CHDKZ', 'rhs_t80', 'rhs_t80a', 'rhs_t80b'];
		_factionHelicopters = ['CUP_O_Mi8_CHDKZ'];
		_factionJets = ['RHS_Su25SM_CAS_vvsc'];
		_hvtTargets = ["CUP_O_INS_Story_Bardak","CUP_O_INS_Story_Lopotev","CUP_O_INS_Commander","CUP_O_INS_Officer"];
	};
    case "MSV": { 
		hint "2"; 
	};
	
    default { hint "default" };
};

//Return
[_chosenFaction,_factionUnits,_factionVehicles,_factionAA,_factionArtillery,_factionTanks,_factionHelicopters,_factionJets,_hvtTargets];