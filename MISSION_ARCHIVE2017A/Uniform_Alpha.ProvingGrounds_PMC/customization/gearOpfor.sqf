// Info: Novorossiyan Army (Either DNR or LNR) - Updated 14/01/2017
// - For multi line definitions use \
// - Olsen's Debug (in settings.sqf) will have to be turned off when uploading the mission to the server
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers/Rifleman

//Infantry Loadouts
//PC - Platoon Leader
//SL - Section Leader/Assistant Platoon Leader
//FTL - Senior Rifleman
//GRE - Grenadier
//MG - Machine Gunner
//RPG - Grenadier (AT)
//RPGA - Grenadier Assistant (AT)
//RIF - Rifleman (Maybe AT)
//MED - Combat Life Saver
//MARK - Marksman
//VG - Vehicle Gunner
//VD - Vehicle Driver (repair)

//=== Weapons ===

// Primary

//Marksman Rifles
#define O_svd "rhs_weap_svdp_pso1"
#define O_svdmag "rhs_10Rnd_762x54mmR_7N1"

#define O_mosin "rhs_weap_m38"
#define O_mosinmag "rhsgref_5Rnd_762x54_m38"

#define O_vss "rhs_weap_vss"
#define O_vssmag "rhs_20rnd_9x39mm_SP6"

#define O_pso1m "rhs_acc_pso1m2"

//Shotgun
#define O_saiga "hlc_rifle_saiga12k"
#define O_saigabuck "hlc_10rnd_12g_buck_S12"
#define O_saigaslug "hlc_10rnd_12g_slug_S12"

//Common ammo
#define O_74mag "rhs_30Rnd_545x39_AK"
#define O_74mag_7n10 "rhs_30Rnd_545x39_7N10_AK"
#define O_rpk74mag "rhs_45Rnd_545X39_AK"

#define O_47mag "rhs_30Rnd_762x39mm"

#define O_glmag "rhs_VOG25"
#define O_glsmokemag "rhs_VG40OP_white"

//Carbine
#define aks74u "rhs_weap_aks74u"

//Assualt Rifles
#define O_ak47 "hlc_rifle_ak47"
#define O_akm "rhs_weap_akm"
#define O_akm_gl "rhs_weap_akm_gp25"
#define O_akms "rhs_weap_akms"
#define O_akms_gl "rhs_weap_akms_gp25"

#define O_ak74 "hlc_rifle_ak74"
#define O_ak74worn "hlc_rifle_ak74_dirty"
#define O_ak74worn2 "hlc_rifle_ak74_dirty2"
#define O_aks74 "hlc_rifle_aks74"
#define O_aks74_gl "hlc_rifle_aks74_GL"

#define O_ak74m "rhs_weap_ak74m"
#define O_ak74m_gl "rhs_weap_ak74m_gp25"

#define O_val "rhs_weap_asval"
#define O_valmag "rhs_20rnd_9x39mm_SP5"

//Machine Guns
#define O_rpk "hlc_rifle_rpk"
#define O_rpkmag "hlc_45Rnd_762x39_m_rpk"
#define O_rpkmag_t "hlc_45Rnd_762x39_t_rpk"
#define O_rpkdrum "hlc_75Rnd_762x39_m_rpk"

#define O_rpk74 "hlc_rifle_rpk74n"

#define O_pkm "rhs_weap_pkm"
#define O_pkp "rhs_weap_pkp"
#define O_pkmag "rhs_100Rnd_762x54mmR"


// Secondary
#define O_sidearm "rhs_weap_makarov_pm"
#define O_rsp "rhs_weap_rsp30_red","rhs_weap_rsp30_green","rhs_weap_rsp30_white"

// Magazines
#define O_samag "rhs_mag_9x18_8_57N181S"

// Launchers
#define O_mat "rhs_weap_rpg7_pgo"
#define O_rat "rhs_weap_rpg26"

// Magazines
#define O_mat_heat "rhs_rpg7_PG7VL_mag"
#define O_mat_frag "rhs_rpg7_OG7V_mag"
#define O_mat_thermo "rhs_rpg7_TBG7V_mag"


// Grenades
#define O_rgd5 "rhs_mag_rgd5"
#define O_rgn "rhs_mag_rgn"
#define O_rgo "rhs_mag_rgo"
#define O_smoke "rhs_mag_rdg2_white"
#define O_smokeo "rhs_mag_nspd"
					
//=== MISC ===

//Chemical lights
#define O_chemblue "Chemlight_blue"
#define O_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define O_ace_army_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define O_ace_sparebarrel "ACE_SpareBarrel"
#define O_cuffs "ACE_CableTie"
#define O_nana "ACE_Banana"
#define O_toolkit "ToolKit"
#define O_binoculars "Binocular"
#define O_range "rhs_pdu4"
#define O_maptools "ACE_MapTools"

//Radio
#define O_longrange "ACRE_PRC148"
#define O_shortrange "ACRE_PRC343"

//=== Clothes ===
//Multi line got borked
//Uniform              
#define O_default_uniform [ [["LOP_U_US_Fatigue_06"]],[12],	[["LOP_U_US_Fatigue_10"]],[11], [["LOP_U_US_Fatigue_07"]],[11], [["LOP_U_US_Fatigue_12"]],[11], [["LOP_U_US_Fatigue_08"]],[11], [["LOP_U_US_Fatigue_03"]],[11], [["LOP_U_US_Fatigue_11"]],[11], [["LOP_U_US_Fatigue_04"]],[11], [["LOP_U_US_Fatigue_01"]],[11] ] call FNC_AddItemRandomPercent;

#define O_winter_uniform_r "CORX_Gorka_Schneetarn","CORX_Gorka_KLMKreverse"

#define O_vest_default [ [["rhs_6Sh92"]],[11],[["V_AFGH_6Sh92_sage"]],[11],[["V_AFGH_6Sh92_TAN"]],[10],[["rhs_vydra_3m"]],[8],[["RHS_6B23_Rifleman"]],[6],[["LOP_V_6B23_Rifleman_TTKO"]],[6],[["rhsgref_6b23_khaki_rifleman"]],[6],[["rhs_6b23_ML_rifleman"]],[6],[["V_AFGH_6B23_Rifleman_sage"]],[6],[["rhsgref_6b23_ttsko_digi_rifleman"]],[6],[["rhsgref_6b23_ttsko_forest_rifleman"]],[6],[["rhsgref_6b23_ttsko_mountain_rifleman"]],[6],[["V_AFGH_6B23_Rifleman_TAN"]],[6],[["LOP_V_6B23_Rifleman_M81"]],[6] ] call FNC_AddItemRandomPercent;

#define O_vest_leader [ [["rhs_6sh92_radio"]],[22], [["rhsgref_6b23_ttsko_mountain_nco"]],[13],[["rhs_6b23_crew"]],[13],[["rhsgref_6b23_khaki_nco"]],[13],[["rhs_6b23_ML_crew"]],[13],[["rhsgref_6b23_ttsko_digi_nco"]],[13],[["rhsgref_6b23_ttsko_mountain_nco"]],[13]	] call FNC_AddItemRandomPercent;

#define O_vest_ftl [ [["rhs_6sh92_vog"]],[13],[["V_AFGH_6Sh92_Vog_sage"]],[13],[["V_AFGH_6Sh92_Vog_TAN"]],[13],[["RHS_6B23_Rifleman"]],[13],[["rhsgref_6b23_ttsko_digi_rifleman"]],[12],[["LOP_V_6B23_Rifleman_TTKO"]],[12],[["rhsgref_6b23_khaki_rifleman"]],[12],[["rhs_6b23_ML_rifleman"]],[12]] call FNC_AddItemRandomPercent;

#define O_vest_medic [ [["rhs_6B23_Medic"]],[14],[["V_AFGH_6B23_Medic_TAN"]],[13],[["LOP_V_6B23_Medic_TTKO"]],[13],[["rhs_6b23_ML_medic"]],[12],[["V_AFGH_6B23_Medic_sage"]],[12],[["rhsgref_6b23_ttsko_digi_medic"]],[12],[["rhsgref_6b23_ttsko_mountain_medic"]],[12],[["LOP_V_6B23_Medic_M81"]],[12]] call FNC_AddItemRandomPercent;

#define O_vest_mg [ [["rhs_6b23"]],[20],[["LOP_V_6B23_TTKO"]],[10],[["rhs_6b23_ML"]],[10],[["V_AFGH_6B23_sage"]],[10],[["rhsgref_6b23_ttsko_digi"]],[10],[["rhsgref_6b23_ttsko_forest"]],[10],[["rhsgref_6b23_ttsko_mountain"]],[10],[["V_AFGH_6B23_TAN"]],[10],[["LOP_V_6B23_M81"]],[10] ] call FNC_AddItemRandomPercent;

#define O_vest_sniper [ [["rhs_6Sh92"]],[10],[["rhs_6b23_sniper"]],[10],[["rhsgref_6b23_khaki_sniper"]],[10],[["rhs_6b23_ML_sniper"]],[10],[["V_AFGH_6B23_Sniper_sage"]],[10],[["rhsgref_6b23_ttsko_digi_sniper"]],[10],[["rhsgref_6b23_ttsko_mountain_sniper"]],[10],[["V_AFGH_6B23_Sniper_TAN"]],[10],[["LOP_V_6B23_sniper"]],[10],[["LOP_V_6B23_sniper_M81"]],[10] ] call FNC_AddItemRandomPercent;

#define O_vest_crew [ [["LOP_6sh46"]],[20],	[["rhs_6b23_engineer"]],[20],[["rhsgref_6b23_khaki"]],[20],[["rhs_6b23_ML_engineer"]],[10],[["rhsgref_6b23_ttsko_digi"]],[10],	[["rhsgref_6b23_ttsko_forest"]],[10],[["rhsgref_6b23_ttsko_mountain"]],[10] ] call FNC_AddItemRandomPercent;


#define O_default_headgear [ [["LOP_H_Beanie_m81"],["rhs_scarf"]],[4],[["LOP_H_Beanie_marpat"],["rhs_scarf"]],[4],[["LOP_H_Beanie_dpmw"],["rhs_scarf"]],[4],[["LOP_H_Beanie_multicam"],["rhs_scarf"]],[4],[["rhs_beanie"],["rhs_scarf"]],[4],[["rhs_beanie_green"],["rhs_scarf"]],[4],[["rhs_balaclava"],["rhsgref_ssh68_ttsko_digi"]],[3],[["rhsgref_ssh68_ttsko_forest"],["rhs_balaclava"]],[3],[["rhsgref_ssh68_ttsko_mountain"],["rhs_balaclava"]],[3],[["rhs_zsh12_black"],["rhs_balaclava"]],[3],[["rhsgref_6b27m_ttsko_digi"],["rhs_balaclava"]],[3],[["rhsgref_6b27m_ttsko_forest"],["rhs_balaclava"]],[3],[["rhsgref_6b27m_ttsko_mountain"],["rhs_balaclava"]],[3],[["rhsgref_6b27m_ttsko_urban"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_Flora"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_Izlom"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_M81"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_WDL"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_MTP"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_Skol"],["rhs_balaclava"]],[3],[["LOP_H_6B27M_UKR"],["rhs_balaclava"]],[4],[["LOP_H_6B27M_wz93"],["rhs_balaclava"]],[4],[["rhs_6b26_green"],["rhs_balaclava"]],[4],[["rhs_6b26_bala_green"]],[4],[["rhs_6b47_bala"]],[4],[["rhs_6b7_1m_bala2"]],[2],[["rhs_6b7_1m_bala1"]],[2],[["rhs_6b7_1m_bala2_flora"]],[2],[["rhs_6b7_1m_bala1_flora"]],[2],[["rhs_6b7_1m_bala2_olive"]],[2],[["rhs_6b7_1m_bala1_olive"]],[2],[["rhs_6b27m_ml_bala"]],[2]] call FNC_AddItemRandomPercent;

#define O_leader_headgear [ [["rhsgref_fieldcap_ttsko_digi"],["rhs_scarf"]],[9],[["rhsgref_fieldcap_ttsko_mountain"],["rhs_scarf"]],[9],[["rhsgref_fieldcap_ttsko_forest"],["rhs_scarf"]],[9],[["rhsgref_fieldcap_ttsko_forest"],["rhs_scarf"]],[9],[["rhsgref_fieldcap_ttsko_urban"],["rhs_scarf"]],[9],[["rhs_fieldcap_ml"],["rhs_scarf"]],[9],[["rhs_fieldcap"],["rhs_scarf"]],[9],[["rhs_6b26_bala_green"]],[8],[["rhs_6b47_bala"]],[8],[["rhs_6b7_1m_bala1"]],[7],[["rhs_6b7_1m_bala2_olive"]],[7],[["rhs_6b27m_ml_bala"]],[7] ]call FNC_AddItemRandomPercent;

#define O_vcrew_headgear_r "rhs_tsh4_bala","rhs_tsh4_ess_bala","rhs_zsh12_bala"

//Backpack
#define O_default_backpack "rhs_sidor"
#define O_rpg_backpack "rhs_rpg_empty"


//=== EQUIPMENT ===
#define O_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define O_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Motorized Platoon HQ

//Platoon Commander
case "O_PC": {
	O_default_uniform 
	O_vest_leader 
	O_leader_headgear
	
	O_ace_army_default 
	[O_smoke,1,"uniform"] call FNC_AddItem;
	[O_longrange,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	
	
	[
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,1,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[40],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,1,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[20],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,1,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,1,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[6],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[4]
			
	] call FNC_AddItemRandomPercent;
	
	[O_samag, 1] call FNC_AddItem;
	[O_sidearm] call FNC_AddItem;
	
	[O_binoculars] call FNC_AddItem;
};

case "O_SL": {
	O_default_uniform 
	O_vest_leader 
	O_leader_headgear
	
	O_ace_army_default 
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_longrange,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	
	
	[
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[30],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[20],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[15],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[15],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[5],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[5]
			
	] call FNC_AddItemRandomPercent;
	
	[O_samag, 1] call FNC_AddItem;
	[O_sidearm] call FNC_AddItem;
	
	[O_binoculars] call FNC_AddItem;
};

case "O_FTL": {
	O_default_uniform 
	O_vest_ftl
	O_default_headgear
	
	O_ace_army_default 
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	
	
	[
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_aks74_gl],
	[O_74mag,2,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[50],
	
	
	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akm_gl],
	[O_47mag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[23],
	
	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akms_gl],
	[O_47mag,1,"uniform"],
	[O_glmag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[22],
	
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_ak74m_gl],
	[O_glmag,1,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[5]
			
	] call FNC_AddItemRandomPercent;
	
	[O_binoculars] call FNC_AddItem;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_GRE": {
	O_default_uniform 
	O_vest_default
	O_default_headgear
	
	O_ace_army_default 
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	//Assigned Items
	O_default_equipment;
	
	//Weapons
	
	
	[
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_aks74_gl],
	[O_74mag,2,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[50],
	
	
	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akm_gl],
	[O_47mag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[23],
	
	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akms_gl],
	[O_47mag,1,"uniform"],
	[O_glmag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[22],
	
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_ak74m_gl],
	[O_glmag,1,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[5]
			
	] call FNC_AddItemRandomPercent;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_MG": {
	O_default_uniform 
	O_vest_mg
	O_default_headgear
	[O_default_backpack] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Uniform

	O_ace_army_default
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	

	//Vest

	//Backpack
	[
	[
	[O_pkmag,1],
	[O_pkm],
	[O_pkmag,3,"backpack"]
	],[40],
	
	[
	[O_rpkmag,1],
	[O_rpk],
	[O_rpkdrum,4,"backpack"],
	[O_rpkmag,1,"backpack"],
	[O_rpkmag_t,1,"backpack"]
	],[25],
	
	[
	[O_rpk74mag,1],
	[O_rpk74],
	[O_rpk74mag,10,"backpack"],
	[O_rpk74mag,1,"vest"]
	],[25],
	
	[
	[O_pkmag,1],
	[O_pkp],
	[O_pkmag,3,"backpack"]
	],[10]
			
	] call FNC_AddItemRandomPercent;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_RPG": {
	O_default_uniform
	O_vest_default
	O_default_headgear
	[O_rpg_backpack] call FNC_AddItem;
	

	//Uniform

	O_ace_army_default;
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[25],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[25],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[16],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[15],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[15],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[2],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[2]
			
	] call FNC_AddItemRandomPercent;

	//Backpack
	
	[
	
	[
	[O_mat_heat,2,"backpack"],
	[O_mat_frag,2,"backpack"]
	],[85],
	
	[
	[O_mat_heat,1,"backpack"],
	[O_mat_frag,1,"backpack"],
	[O_mat_thermo,1,"backpack"]
	],[15]
	
	] call FNC_AddItemRandomPercent;
	
	//Assigned Items
	O_default_equipment;

	//Weapons
	[O_mat] call FNC_AddItem;
	
	//Extra Mags
	[O_mat_heat,1,"backpack"] call FNC_AddItem;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_RPGA": {
	O_default_uniform
	O_vest_default
	O_default_headgear
	[O_rpg_backpack] call FNC_AddItem;
	

	//Uniform

	O_ace_army_default;
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[36],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[25],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[15],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[2],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[2]
			
	] call FNC_AddItemRandomPercent;

	//Backpack
	
	[
	
	[
	[O_mat_heat,2,"backpack"],
	[O_mat_frag,2,"backpack"]
	],[80],
	
	[
	[O_mat_heat,1,"backpack"],
	[O_mat_frag,1,"backpack"],
	[O_mat_thermo,1,"backpack"]
	],[20]
	
	] call FNC_AddItemRandomPercent;
	
	//Assigned Items
	O_default_equipment;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_RIF": {
	O_default_uniform
	O_vest_default
	O_default_headgear
	
	O_ace_army_default
	[O_rgd5,2,"uniform"] call FNC_AddItem;


	//Assigned Items
	O_default_equipment;

	//Weapons
	[
	
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn2],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_aks74_gl],
	[O_74mag,2,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],

	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akm_gl],
	[O_47mag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	
	[
	[O_47mag,1],
	[O_ak47],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[5],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[3],
	
	[
	[O_saigabuck,1],
	[O_saiga],
	[O_saigabuck,1,"uniform"],
	[O_saigabuck,4,"vest"],
	[O_saigaslug,2,"vest"]
	],[2]
			
	] call FNC_AddItemRandomPercent;
	
	[
	[[O_rat]],[50],
	[[]], [50]
	
	] call FNC_AddItemRandomPercent;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_RAT": {
	O_default_uniform
	O_vest_default
	O_default_headgear
	
	O_ace_army_default
	[O_rgd5,2,"uniform"] call FNC_AddItem;


	//Assigned Items
	O_default_equipment;

	//Weapons
	[
	
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn2],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[10],
	
	
	[
	[O_74mag,1],
	[O_glmag,1],
	[O_aks74_gl],
	[O_74mag,2,"uniform"],
	[O_74mag,4,"vest"],
	[O_glmag,9,"vest"],
	[O_glsmokemag,2,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],

	[
	[O_47mag,1],
	[O_glmag,1],
	[O_akm_gl],
	[O_47mag,1,"uniform"],
	[O_47mag,4,"vest"],
	[O_glmag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	
	[
	[O_47mag,1],
	[O_ak47],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[5],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"],
	[O_rpk74mag,1,"vest"]
	],[3],
	
	[
	[O_saigabuck,1],
	[O_saiga],
	[O_saigabuck,1,"uniform"],
	[O_saigabuck,4,"vest"],
	[O_saigaslug,2,"vest"]
	],[2]
			
	] call FNC_AddItemRandomPercent;
	
	["rhs_weap_rpg26"] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
};

case "O_MED": {
	O_default_headgear
	O_default_uniform
	O_vest_medic
	
	O_ace_army_default;
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	
	//Vest

	["ACE_elasticBandage",6,"vest"] call FNC_AddItem; 
	["ACE_packingBandage",10,"vest"] call FNC_AddItem; 
	["ACE_fieldDressing",12,"vest"] call FNC_AddItem; 
	["ACE_morphine",8,"vest"] call FNC_AddItem; 
	["ACE_epinephrine",4,"vest"] call FNC_AddItem;

	//Assigned Items
	O_default_equipment;
	
	//Weapons
	[
	
	[
	[O_74mag,1],
	[O_ak74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"]
	],[20],
	
	[
	[O_74mag,1],
	[O_ak74worn],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"]
	],[20],
	
	[
	[O_74mag,1],
	[O_aks74],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akm],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_akms],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_74mag,1],
	[O_ak74worn2],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"]
	],[10],
	
	[
	[O_47mag,1],
	[O_ak47],
	[O_47mag,1,"uniform"],
	[O_47mag,5,"vest"]
	],[10],
	
	[
	[O_valmag,1],
	[O_val],
	[O_valmag,1,"uniform"],
	[O_valmag,5,"vest"]
	],[5],
	
	[
	[O_74mag,1],
	[O_ak74m],
	[O_74mag,2,"uniform"],
	[O_74mag,5,"vest"]
	],[5]
			
	] call FNC_AddItemRandomPercent;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_MARK": {
	O_default_headgear
	O_default_uniform
	O_vest_sniper
	
	O_ace_army_default;
	[O_rgd5,1,"uniform"] call FNC_AddItem;
	[O_smoke,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	O_default_equipment;

	//Weapons
	[
	[
	[O_svdmag,1],
	[O_svd],
	[O_smoke,1,"uniform"],
	[O_svdmag,12,"vest"]
	],[60],
	
	[
	[O_mosinmag,1],
	[O_mosin],
	[O_mosinmag,1,"uniform"],
	[O_mosinmag,5,"vest"]
	],[30],
	
	[
	[O_vssmag,1],
	[O_vss],
	[O_pso1m],
	[O_vssmag,1,"uniform"],
	[O_vssmag,5,"vest"]
	],[10]
			
	] call FNC_AddItemRandomPercent;
	
	[O_rsp] call FNC_AddItemRandom;
};

case "O_VG": {
	[O_vcrew_headgear_r] call FNC_AddItemRandom;
	O_default_uniform
	O_vest_crew
	
	//Uniform
	[O_74mag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_74mag,3,"vest"] call FNC_AddItem;  

	[O_smoke,1,"vest"] call FNC_AddItem;
	[O_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	O_leader_equipment;

	//Weapons
	[aks74u] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[O_74mag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Driver
case "O_VD": {
	[O_vcrew_headgear_r] call FNC_AddItemRandom;
	O_default_uniform
	O_vest_crew
	[O_default_backpack] call FNC_AddItem;

	//Uniform
	[O_74mag,2,"uniform"] call FNC_AddItem;
	
	O_ace_default;
	
	//Vest
	[O_74mag,3,"vest"] call FNC_AddItem; 
	[O_smoke,1,"vest"] call FNC_AddItem;
	
	//Backpack
	[O_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	O_leader_equipment;
	
	//Weapons
	[aks74u] call FNC_AddItem;
	[O_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[O_74mag,1,"uniform"] call FNC_AddItem;
};