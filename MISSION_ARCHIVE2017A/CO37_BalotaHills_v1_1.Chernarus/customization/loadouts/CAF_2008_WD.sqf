
#define package "CAF_"

#define uniform \
	["tin_uniform_caf_tw"] call FNC_AddItem; \
	["tin_helmet_caf_CG634_tw_scrim"] call FNC_AddItem;

#define IFAK \
	["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 2, "uniform"] call FNC_AddItem;

#define items \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_CableTie",2] call FNC_AddItem; \
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["ACE_Flashlight_MX991"] call FNC_AddItem;

#define armsRifle \
	["tin_w_c7a3_c79"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4, "vest"] call FNC_AddItem;

#define armsGren \
	["tin_w_c7a3_m203_c79"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4, "vest"] call FNC_AddItem; \
	["rhs_mag_M433_HEDP", 6, "vest"] call FNC_AddItem;

#define armsSRAAW \
	["BWA3_CarlGustaf"] call FNC_AddItem;

#define armsJAV \
	["rhs_weap_fgm148"] call FNC_AddItem;

#define armsMortar \
	["UK3CB_BAF_M6"] call FNC_AddItem;

#define armsLMG \
	["rhs_weap_m249_pip_L"] call FNC_AddItem; \
	["tb_acc_c79"] call FNC_AddItem; \
	["rhsusf_100Rnd_556x45_soft_pouch", 3] call FNC_AddItem; \
	["rhsusf_acc_anpeq15side"] call FNC_AddItem;

#define armsGPMG \
	["rhs_weap_m240G"] call FNC_AddItem; \
	["rhsusf_100Rnd_762x51", 3] call FNC_AddItem;

#define ruckBasic \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem;

#define ruckRifle \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["rhsusf_100Rnd_556x45_soft_pouch", 1, "backpack"] call FNC_AddItem;

#define ruckCmd \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["Chemlight_red", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_green", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_yellow", 2, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["rhs_weap_rsp30_white", 2, "backpack"] call FNC_AddItem;

#define ruckNCO \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["Chemlight_red", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_green", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_yellow", 2, "backpack"] call FNC_AddItem; \
	["rhs_weap_rsp30_white", 2, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["rhsusf_100Rnd_556x45_soft_pouch", 1, "backpack"] call FNC_AddItem;

#define ruckNCOW \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["Chemlight_red", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_green", 2, "backpack"] call FNC_AddItem; \
	["Chemlight_yellow", 2, "backpack"] call FNC_AddItem; \
	["rhs_weap_rsp30_white", 2, "backpack"] call FNC_AddItem; \
	["rhsusf_100Rnd_762x51", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["BWA3_CarlGustaf_HEAT", 1, "backpack"] call FNC_AddItem;

#define ruckCLS \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["ACE_fieldDressing", 6, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 8, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 6, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 6, "backpack"] call FNC_AddItem; \
	["ACE_atropine", 2, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 2, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 2, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 3, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 3, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["Chemlight_yellow", 3, "backpack"] call FNC_AddItem;

#define ruckGren \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_M433_HEDP", 12, "backpack"] call FNC_AddItem; \
	["rhs_mag_m714_White", 2, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4, "backpack"] call FNC_AddItem;

#define ruckLMG \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhsusf_100Rnd_556x45_soft_pouch", 3, "backpack"] call FNC_AddItem;

#define ruckMedic \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["ACE_salineIV", 2, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 4, "backpack"] call FNC_AddItem; \
	["ACE_adenosine", 10, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 10, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 10, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 16, "backpack"] call FNC_AddItem; \
	["ACE_fieldDressing", 16, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 16, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 20, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 5, "backpack"] call FNC_AddItem; \
	["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem; \
	["Chemlight_yellow", 3, "backpack"] call FNC_AddItem;

#define ruckSRAAW \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["BWA3_CarlGustaf_HEAT", 2, "backpack"] call FNC_AddItem;

#define ruckSRAAW2 \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["BWA3_CarlGustaf_HEAT", 2, "backpack"] call FNC_AddItem;

#define ruckGPMG \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem;

#define ruckGPMG2 \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["rhsusf_100Rnd_762x51", 3, "backpack"] call FNC_AddItem; \
	["ACE_SpareBarrel", 1, "backpack"] call FNC_AddItem;

#define ruckJAV \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_fgm148_magazine_AT", 1, "backpack"] call FNC_AddItem;

#define ruckMortar \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 3, "backpack"] call FNC_AddItem;	\
	["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 1, "backpack"] call FNC_AddItem;

#define ruckMortar2 \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 6, "backpack"] call FNC_AddItem;	\
	["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 2, "backpack"] call FNC_AddItem;

#define ruckRTO \
	["tin_backpack_caf_fast_tw"] call FNC_AddItem; \
	["rhsusf_ANPVS_14", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5, "backpack"] call FNC_AddItem; \
	["ACRE_PRC117F"] call FNC_AddItem;

case (package + "oc"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCmd;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["rhs_mag_m18_green", 1, "vest"] call FNC_AddItem;
	["rhs_mag_m18_red", 1, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;
};

case (package + "coy2ic"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCmd;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["rhs_mag_m18_green", 1, "vest"] call FNC_AddItem;
	["rhs_mag_m18_red", 1, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;
};

case (package + "cqms"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckBasic;

	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "storesman"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckBasic;

	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "plcomd"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCmd;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["rhs_mag_m18_green", 1, "vest"] call FNC_AddItem;
	["rhs_mag_m18_red", 1, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "pl2ic"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckCmd;

	["ACE_Vector"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["rhs_mag_m18_green", 1, "vest"] call FNC_AddItem;
	["rhs_mag_m18_red", 1, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "sig"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRTO;

	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "medic"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMedic;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "sectcomd"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["Binocular"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "sect2ic"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "rifleman"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRifle;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "grenadier"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsGren;
	ruckGren;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};

case (package + "lmg"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsLMG;
	ruckLMG;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "wepcomd"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCOW;

	["Binocular"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;
};

case (package + "gpmg"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsGPMG;
	ruckGPMG;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "gpmgno2"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckGPMG2;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "sraawm"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	armsSRAAW;
	ruckSRAAW;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "sraawmno2"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckSRAAW2;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "javelincomd"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["Binocular"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;
};

case (package + "javelingunner"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	armsJAV;
	ruckJAV;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "javelinno2"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckJAV;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "mortarcomd"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["Binocular"] call FNC_AddItem;
	["ACE_DAGR", 1, "vest"] call FNC_AddItem;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;
	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;

	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1, "vest"] call FNC_AddItem;
};

case (package + "mortargunner"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	armsMortar;
	ruckMortar;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};

case (package + "mortarno2"): {

	["tin_vest_caf_tw"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMortar2;

	["ACRE_PRC343", 1, "vest"] call FNC_AddItem;

	["rhs_mag_m67", 2, "vest"] call FNC_AddItem;
	["SmokeShell", 2, "vest"] call FNC_AddItem;
};