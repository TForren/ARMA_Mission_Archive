
#define package "VDV_"

#define uniform \
	["rhs_uniform_vdv_flora"] call FNC_AddItem; \
	["rhs_6b26"] call FNC_AddItem;

#define uniformCrew \
	["rhs_uniform_vdv_flora"] call FNC_AddItem; \
	["rhs_tsh4"] call FNC_AddItem;

#define uniformPilot \
	["rhs_uniform_df15"] call FNC_AddItem; \
	["rhs_zsh7a_mike"] call FNC_AddItem;

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
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["ACE_Flashlight_KSF1"] call FNC_AddItem;

#define armsRifle \
	["rhs_weap_ak74m_fullplum"] call FNC_AddItem; \
	["rhs_acc_dtk"] call FNC_AddItem; \
	["rhs_30Rnd_545x39_AK_no_tracers", 7, "vest"] call FNC_AddItem;

#define armsGren \
	["rhs_weap_ak74m_fullplum_gp25"] call FNC_AddItem; \
	["rhs_acc_dtk"] call FNC_AddItem; \
	["rhs_30Rnd_545x39_AK_no_tracers", 7, "vest"] call FNC_AddItem; \
	["rhs_VOG25", 10, "vest"] call FNC_AddItem;

#define armsFAC \
	["rhs_weap_ak74m_fullplum_gp25"] call FNC_AddItem; \
	["rhs_acc_dtk"] call FNC_AddItem; \
	["rhs_30Rnd_545x39_AK_no_tracers", 7, "vest"] call FNC_AddItem; \
	["rhs_GDM40", 2, "vest"] call FNC_AddItem; \
	["rhs_VG40OP_green", 2, "vest"] call FNC_AddItem; \
	["rhs_VG40OP_red", 2, "vest"] call FNC_AddItem;

#define armsMG \
	["rhs_weap_pkp"] call FNC_AddItem; \
	["rhs_100Rnd_762x54mmR", 1, "vest"] call FNC_AddItem;

#define armsRPG \
	["rhs_weap_rpg7"] call FNC_AddItem; \
	["rhs_acc_pgo7v2"] call FNC_AddItem;

#define armsCrew \
	["rhs_weap_ak74m_fullplum_folded"] call FNC_AddItem; \
	["rhs_30Rnd_545x39_AK_no_tracers", 3, "vest"] call FNC_AddItem;

#define armsPilot \
	["rhs_weap_makarov_pm"] call FNC_AddItem; \
	["rhs_mag_9x18_8_57N181S", 5, "vest"] call FNC_AddItem;

#define ruckNCO \
	["B_AssaultPack_khk"] call FNC_AddItem; \
	["rhs_mag_rdg2_white", 2, "backpack"] call FNC_AddItem; \
	["rhs_mag_nspd", 2, "backpack"] call FNC_AddItem; \
	["rhs_mag_nspn_green", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_nspn_red", 1, "backpack"] call FNC_AddItem; \
	["rhs_mag_nspn_yellow", 1, "backpack"] call FNC_AddItem; \
	["ACE_SpraypaintRed", 1, "backpack"] call FNC_AddItem; \
	["ACE_SpraypaintGreen", 1, "backpack"] call FNC_AddItem; \
	["ACE_SpraypaintBlue", 1, "backpack"] call FNC_AddItem; \
	["ACE_M26_Clacker", 1, "backpack"] call FNC_AddItem; \
	["DemoCharge_Remote_Mag", 2, "backpack"] call FNC_AddItem;

#define ruckFAC \
	["B_AssaultPack_khk"] call FNC_AddItem; \
	["rhs_mag_nspd", 4, "backpack"] call FNC_AddItem; \
	["rhs_mag_rdg2_white", 4, "backpack"] call FNC_AddItem; \
	["rhs_VG40OP_white", 4, "backpack"] call FNC_AddItem; \
	["rhs_VG40OP_green", 2, "backpack"] call FNC_AddItem; \
	["rhs_VG40OP_red", 2, "backpack"] call FNC_AddItem; \
	["rhs_VG40MD_White", 1, "backpack"] call FNC_AddItem; \
	["rhs_VG40MD_Green", 1, "backpack"] call FNC_AddItem; \
	["rhs_VG40MD_Red", 1, "backpack"] call FNC_AddItem;

#define ruckMG \
	["rhs_sidor"] call FNC_AddItem; \
	["rhs_100Rnd_762x54mmR", 2, "backpack"] call FNC_AddItem;

#define ruckRPG \
	["rhs_rpg_empty"] call FNC_AddItem; \
	["rhs_rpg7_PG7VL_mag", 2, "backpack"] call FNC_AddItem; \
	["rhs_rpg7_OG7V_mag", 2, "backpack"] call FNC_AddItem;

#define ruckCLS \
	["B_FieldPack_oli"] call FNC_AddItem; \
	["ACE_fieldDressing", 6, "backpack"] call FNC_AddItem; \
	["ACE_elasticBandage", 8, "backpack"] call FNC_AddItem; \
	["ACE_quikclot", 6, "backpack"] call FNC_AddItem; \
	["ACE_packingBandage", 6, "backpack"] call FNC_AddItem; \
	["ACE_atropine", 2, "backpack"] call FNC_AddItem; \
	["ACE_epinephrine", 2, "backpack"] call FNC_AddItem; \
	["ACE_morphine", 2, "backpack"] call FNC_AddItem; \
	["ACE_tourniquet", 3, "backpack"] call FNC_AddItem; \
	["ACE_salineIV_500", 3, "backpack"] call FNC_AddItem;

#define ruckMedic \
	["B_Carryall_oli"] call FNC_AddItem; \
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
	["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem;

case (package + "PLCOMD"): {

	["rhs_6b13_Flora_6sh92_headset_mapcase"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["rhs_pdu4"] call FNC_AddItem;

	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;
	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green", 1, "vest"] call FNC_AddItem;
};

case (package + "PL2IC"): {

	["rhs_6b13_Flora_6sh92_headset_mapcase"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["rhs_pdu4"] call FNC_AddItem;

	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green", 1, "vest"] call FNC_AddItem;
};

case (package + "FAC"): {

	["rhs_6b13_Flora_6sh92_headset_mapcase"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsFAC;
	ruckFAC;

	["rhs_pdu4"] call FNC_AddItem;

	["ACRE_PRC148", 1, "vest"] call FNC_AddItem;
	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;
};

case (package + "MEDIC"): {

	["rhs_6b13_Flora_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMedic;

	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;
};

case (package + "SECTCOMD"): {

	["rhs_6b13_Flora_6sh92_radio"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckNCO;

	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;

	["Binocular"] call FNC_AddItem;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem;
};

case (package + "SECT2IC"): {

	["rhs_6b13_Flora_6sh92_vog"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsGren;

	["ACRE_SEM52SL", 1, "vest"] call FNC_AddItem;

	["Binocular"] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green"] call FNC_AddItem;

	["rhs_weap_rshg2"] call FNC_AddItem;
};

case (package + "RIFLEMAN"): {

	["rhs_6b23_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "GREN"): {

	["rhs_6b13_Flora_6sh92_vog"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsGren;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "MG"): {

	["rhs_6b13_Flora_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsMG;
	ruckMG;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;
};

case (package + "MGASST"): {

	["rhs_6b23_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMG;

	["Binocular"] call FNC_AddItem;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;
};

case (package + "AT"): {

	["rhs_6b13_Flora_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	armsRPG;
	ruckRPG;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;
};

case (package + "ATASST"): {

	["rhs_6b13_Flora_6sh92"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRPG;

	["rhs_mag_rgd5", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgn", 1, "vest"] call FNC_AddItem;
	["rhs_mag_rgo", 1, "vest"] call FNC_AddItem;
};

////////////////////////////////////////////////
////////////////////////////////////////////////

case (package + "IFVCOM"): {

	["rhs_6b23_crewofficer"] call FNC_AddItem;

	uniformCrew;
	IFAK;
	items;
	armsCrew;
	armsPilot;

	["Binocular"] call FNC_AddItem;

	["rhs_scarf"] call FNC_AddItem;
};

case (package + "IFVCREW"): {

	["rhs_6b23_crew"] call FNC_AddItem;

	uniformCrew;
	IFAK;
	items;
	armsCrew;

	["rhs_scarf"] call FNC_AddItem;
};

case (package + "HELICREW"): {

	["rhs_vest_commander"] call FNC_AddItem;

	uniformPilot;
	IFAK;
	items;
	armsPilot;

	["ACRE_PRC152", 1, "vest"] call FNC_AddItem;

	["SmokeShell", 1, "vest"] call FNC_AddItem;
};