
#define package "AAF_"

#define uniform \
	["rhs_uniform_g3_rgr"] call FNC_AddItem; \
	["rhs_beanie_green"] call FNC_AddItem;

#define IFAK \
	["ACE_fieldDressing", 2] call FNC_AddItem; \
	["ACE_elasticBandage", 2] call FNC_AddItem; \
	["ACE_packingBandage", 2] call FNC_AddItem; \
	["ACE_quikclot", 2] call FNC_AddItem; \
	["ACE_morphine", 1] call FNC_AddItem; \
	["ACE_tourniquet", 1] call FNC_AddItem;

#define items \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem;

#define armsRifle \
	["hlc_rifle_g3a3v"] call FNC_AddItem; \
	["hlc_20rnd_762x51_b_G3", 5] call FNC_AddItem;

#define armsMG \
	["hlc_lmg_m60"] call FNC_AddItem; \
	["hlc_100Rnd_762x51_M_M60E4", 3] call FNC_AddItem;

#define armsRPG \
	["tb_launcher_mk13"] call FNC_AddItem;

#define ruckMG \
	["B_FieldPack_oli"] call FNC_AddItem; \
	["hlc_100Rnd_762x51_M_M60E4", 5, "backpack"] call FNC_AddItem;

#define ruckRPG \
	["B_FieldPack_oli"] call FNC_AddItem; \
	["tb_mk13_hedp", 1, "backpack"] call FNC_AddItem; \
	["tb_mk13_heat", 2, "backpack"] call FNC_AddItem;

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

case (package + "SECTCOMD"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["ACRE_SEM52SL", 1] call FNC_AddItem;

	["Binocular"] call FNC_AddItem;

	["rhs_mag_m67", 1] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem;
};

case (package + "SECT2IC"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["ACRE_SEM52SL", 1] call FNC_AddItem;

	["Binocular"] call FNC_AddItem;

	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem;

	["rhs_weap_rshg2"] call FNC_AddItem;
};

case (package + "RF"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["rhs_mag_m67", 1] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "RFAT"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["rhs_mag_m67", 1] call FNC_AddItem;

	["rhs_weap_rpg26"] call FNC_AddItem;
};

case (package + "RFAP"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;

	["rhs_mag_m67", 1] call FNC_AddItem;

	["rhs_weap_rshg2"] call FNC_AddItem;
};

case (package + "MG"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsMG;
	ruckMG;

	["rhs_mag_m67", 1] call FNC_AddItem;
};

case (package + "MGASST"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckMG;

	["Binocular"] call FNC_AddItem;

	["rhs_mag_m67", 1] call FNC_AddItem;
};

case (package + "AT"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	armsRPG;
	ruckRPG;

	["rhs_mag_m67", 1] call FNC_AddItem;
};

case (package + "ATASST"): {

	["rhsgref_otv_khaki"] call FNC_AddItem;

	uniform;
	IFAK;
	items;
	armsRifle;
	ruckRPG;

	["rhs_mag_m67", 1] call FNC_AddItem;
};