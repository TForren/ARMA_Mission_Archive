#include "core\gearCore.sqf" //DO NOT REMOVE

		["ItemMap"] call FNC_AddItem;
		["ItemCompass"] call FNC_AddItem;
		["ItemWatch"] call FNC_AddItem;
		

switch (_type) do {		
	case "SL": {
		["Binocular"] call FNC_AddItem;
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbv_rmp"] call FNC_AddItem;
		["usm_helmet_pasgt_g_w"] call FNC_AddItem;
		["ItemRadio"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;
		["ACE_EarPlugs"] call FNC_AddItem;
		["ACE_personalAidKit"] call FNC_AddItem;
		["ACE_salineIV_250"] call FNC_AddItem;
		["ACE_morphine",2] call FNC_AddItem;
		["ACE_fieldDressing",4] call FNC_AddItem;
		["ACE_packingBandage",2] call FNC_AddItem;
		["ACE_elasticBandage",2] call FNC_AddItem;
		["ACE_tourniquet"] call FNC_AddItem;
		["ACE_MapTools"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
		["rhs_mag_m67",2] call FNC_AddItem;
		["rhs_mag_an_m8hc",2] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
	};	
	
	case "AR": {
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbe_mg"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["ItemRadio"] call FNC_AddItem;
		["ACE_EarPlugs"] call FNC_AddItem;
		["ACE_personalAidKit"] call FNC_AddItem;
		["ACE_salineIV_250"] call FNC_AddItem;
		["ACE_morphine",2] call FNC_AddItem;
		["ACE_fieldDressing",4] call FNC_AddItem;
		["ACE_packingBandage",2] call FNC_AddItem;
		["ACE_elasticBandage",2] call FNC_AddItem;
		["ACE_tourniquet",1] call FNC_AddItem;
		["ACE_MapTools",1] call FNC_AddItem;
		["rhs_mag_m67",2] call FNC_AddItem;
		["rhsusf_200Rnd_556x45_soft_pouch",3] call FNC_AddItem;
		["rhs_weap_m249_pip_L"] call FNC_AddItem;
	};		
	case "ASL": {
		["Binocular"] call FNC_AddItem;
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbv_rm"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
		["ACE_personalAidKit",1,"vest"] call FNC_AddItem;
		["ACE_salineIV_250",1,"vest"] call FNC_AddItem;
		["ACE_morphine",2,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",4,"vest"] call FNC_AddItem;
		["ACE_packingBandage",2,"vest"] call FNC_AddItem;
		["ACE_elasticBandage",2,"vest"] call FNC_AddItem;
		["ACE_tourniquet",1,"vest"] call FNC_AddItem;
		["ACE_MapTools",1,"vest"] call FNC_AddItem;
		["rhs_mag_m67",4,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
	};		
	
	case "GREN": {
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbe_gr"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
		["ACE_personalAidKit",1,"vest"] call FNC_AddItem;
		["ACE_salineIV_250",1,"vest"] call FNC_AddItem;
		["ACE_morphine",2,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",4,"vest"] call FNC_AddItem;
		["ACE_packingBandage",2,"vest"] call FNC_AddItem;
		["ACE_elasticBandage",2,"vest"] call FNC_AddItem;
		["ACE_tourniquet",1,"vest"] call FNC_AddItem;
		["ACE_MapTools",1,"vest"] call FNC_AddItem;
		["rhs_mag_m67",4,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
		["rhs_mag_M433_HEDP",15,"vest"] call FNC_AddItem;
		["rhs_mag_m713_Red",4,"vest"] call FNC_AddItem;
		["rhs_mag_m714_White",4,"vest"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle_M203"] call FNC_AddItem;
	};	
	
	case "RIFLE": {
		["rhs_weap_m72a7"] call FNC_AddItem;
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbe_rm"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
		["ACE_personalAidKit",1,"vest"] call FNC_AddItem;
		["ACE_salineIV_250",1,"vest"] call FNC_AddItem;
		["ACE_morphine",2,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",4,"vest"] call FNC_AddItem;
		["ACE_packingBandage",2,"vest"] call FNC_AddItem;
		["ACE_elasticBandage",2,"vest"] call FNC_AddItem;
		["ACE_tourniquet",1,"vest"] call FNC_AddItem;
		["ACE_MapTools",1,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem;
		["rhs_mag_m67",4,"vest"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
	};	
	case "MED": {
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbe_rm"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["usm_pack_m5_medic"] call FNC_AddItem;
		["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
		["ACE_morphine",2,"uniform"] call FNC_AddItem;
		["ACE_MapTools",1,"uniform"] call FNC_AddItem;
		["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
		["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
		["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
		["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
		["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
		["rhs_mag_m18_purple",1,"vest"] call FNC_AddItem;
		["rhs_mag_m18_yellow",1,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",16,"backpack"] call FNC_AddItem;
		["ACE_packingBandage",12,"backpack"] call FNC_AddItem;
		["ACE_elasticBandage",12,"backpack"] call FNC_AddItem;
		["ACE_tourniquet",4,"backpack"] call FNC_AddItem;
		["ACE_morphine",6,"backpack"] call FNC_AddItem;
		["ACE_epinephrine",6,"backpack"] call FNC_AddItem;
		["ACE_salineIV_250",4,"backpack"] call FNC_AddItem;
		["ACE_personalAidKit",3,"backpack"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
	};		
	case "RTO": {
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbe_rm"] call FNC_AddItem;
		["usm_pack_st138_prc77"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;	
		["ItemRadio"] call FNC_AddItem;
		["ACE_packingBandage",1] call FNC_AddItem;
		["ACE_MapTools",1] call FNC_AddItem;
		["ACE_Flashlight_MX991",1] call FNC_AddItem;
		["ACE_EarPlugs",1] call FNC_AddItem;
		["ACE_morphine",1] call FNC_AddItem;
		["ACE_fieldDressing",4,"vest"] call FNC_AddItem;
		["ACE_tourniquet",1,"vest"] call FNC_AddItem;
		["ACE_packingBandage",1,"vest"] call FNC_AddItem;
		["ACE_morphine",2,"vest"] call FNC_AddItem;
		["ACRE_PRC148",1,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,"vest"] call FNC_AddItem;
		["rhs_mag_m67",1,"vest"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;
	};	
	
	case "MG": {
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbv_mg"] call FNC_AddItem;
		["usm_pack_762x51_bandoliers"] call FNC_AddItem;
		["usm_helmet_pasgt_w"] call FNC_AddItem;
		["ACE_fieldDressing",4,"uniform"] call FNC_AddItem;
		["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
		["ACE_plasmaIV_250",1,"uniform"] call FNC_AddItem;
		["ACE_morphine",1,"uniform"] call FNC_AddItem;
		["ACE_morphine",1,"vest"] call FNC_AddItem;
		["ACE_packingBandage",2,"vest"] call FNC_AddItem;
		["ACE_MapTools",1,"vest"] call FNC_AddItem;
		["ACE_Flashlight_MX991",1,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",3,"vest"] call FNC_AddItem;
		["hlc_100Rnd_762x51_M_M60E4",4,"vest"] call FNC_AddItem;
		["hlc_lmg_m60"] call FNC_AddItem;
	};
	
	case "MGA": {	
		["Binocular"] call FNC_AddItem;
		["usm_bdu_w"] call FNC_AddItem;
		["usm_vest_rba_lbv_mg"] call FNC_AddItem;
		["usm_pack_762x51_ammobelts"] call FNC_AddItem;
		["hlc_100Rnd_762x51_M_M60E4",4,"backpack"] call FNC_AddItem;
		["usm_helmet_pasgt_g_w"] call FNC_AddItem;
		["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
		["ACE_personalAidKit",1,"vest"] call FNC_AddItem;
		["ACE_salineIV_250",1,"vest"] call FNC_AddItem;
		["ACE_morphine",2,"vest"] call FNC_AddItem;
		["ACE_fieldDressing",4,"vest"] call FNC_AddItem;
		["ACE_packingBandage",2,"vest"] call FNC_AddItem;
		["ACE_elasticBandage",2,"vest"] call FNC_AddItem;
		["ACE_tourniquet",1,"vest"] call FNC_AddItem;
		["ACE_MapTools",1,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_Mk318_Stanag",7,"vest"] call FNC_AddItem;
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem;
		["rhs_mag_m67",4,"vest"] call FNC_AddItem;
		["rhs_weap_m16a4_carryhandle"] call FNC_AddItem;

	};
};