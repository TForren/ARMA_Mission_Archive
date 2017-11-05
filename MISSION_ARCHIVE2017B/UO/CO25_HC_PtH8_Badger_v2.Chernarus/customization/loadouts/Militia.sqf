//[this, "RURiflePlatoon_SL"] call FNC_GearScript;
//[this, "RURiflePlatoon_TL"] call FNC_GearScript;
//[this, "RURiflePlatoon_AR"] call FNC_GearScript;
//[this, "RURiflePlatoon_MD"] call FNC_GearScript;
//[this, "RURiflePlatoon_RF"] call FNC_GearScript;
//[this, "RURiflePlatoon_RFAT"] call FNC_GearScript;

#define package "Militia_"

#define uniform \
//	["rhs_uniform_vdv_emr_des"] call FNC_AddItem; \
//	["rhs_assault_umbts"] call FNC_AddItem; \
//	["rhs_6b28"] call FNC_AddItemRandom;
	
#define IFAK \
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 2, "uniform"] call FNC_AddItem; \
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
	
#define items \
	["ACRE_PRC343", 1] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["ACE_CableTie", 2] call FNC_AddItem; \
	["NVGoggles_INDEP"] call FNC_AddItem; \
	["ACE_Flashlight_XL50"] call FNC_AddItem; \
	["Chemlight_red", 2] call FNC_AddItem; \
	["Chemlight_green", 2] call FNC_AddItem;

//	for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
	
case (package + "SL"): {
	
//	["rhs_6b23_digi_6sh92_headset_mapcase"] call FNC_AddItem; 
//Vest
	
//	uniform;
	["rhsgref_uniform_woodland_olive"] call FNC_AddItem;
	["V_TacVest_camo"] call FNC_AddItem;
	["usm_bdu_cap_portliz"] call FNC_AddItem;
	["rhs_balaclava"] call FNC_AddItem;

	["rhs_assault_umbts"] call FNC_AddItem; //back
	
	IFAK;
	items;
	
	["ACE_Vector"] call FNC_AddItem;
	
	["ACRE_PRC152", 1] call FNC_AddItem; //Long range radio
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem; //Magazines
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rdg2_black", 1] call FNC_AddItem; //Black smoke
	["rhs_mag_rgd5", 2] call FNC_AddItem; //Frag grenade

	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
};

case (package + "TL"): {
	
//	["rhs_6b23_digi_6sh92_radio"] call FNC_AddItem;  //Vest
	
//	uniform;
	["U_I_C_Soldier_Para_3_F"] call FNC_AddItem;
	["V_TacVest_camo"] call FNC_AddItem;
//	["usm_bdu_cap_portliz"] call FNC_AddItem;
	["G_Balaclava_oli"] call FNC_AddItem;

	["rhs_assault_umbts"] call FNC_AddItem; //back	
	
	IFAK;
	items;
	
	["ACRE_PRC152", 1] call FNC_AddItem; //Long range radio
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem; //Magazines
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rdg2_black", 1] call FNC_AddItem; //Black smoke
	["rhs_mag_rgd5", 2] call FNC_AddItem; //Frag grenade

	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
};

case (package + "AR"): {
	
//	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
//	uniform;
	["U_I_C_Soldier_Para_1_F"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
	["H_Bandanna_khk_hs"] call FNC_AddItem; //head
	["G_Bandanna_blk"] call FNC_AddItem; //face
	["rhs_assault_umbts"] call FNC_AddItem; //back

	IFAK;
	items;
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_100Rnd_762x54mmR", 3] call FNC_AddItem; //Magazines
	
	["rhs_weap_pkp"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	["ACE_SpareBarrel", 1] call FNC_AddItem;  // Spare Barrel
	
};

case (package + "RFAT"): {
	
//	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
//	uniform;

	["U_I_C_Soldier_Para_3_F"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
	["H_Cap_oli_hs"] call FNC_AddItem; //head
	["G_Bandanna_khk"] call FNC_AddItem; //face
	["rhs_rpg_empty"] call FNC_AddItem; //back

	IFAK;
	items;
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
//	["rhs_weap_rpg26"] call FNC_AddItem; //Anti tank launcher

	["rhs_rpg7_PG7VL_mag", 2] call FNC_AddItem; //Anti tank launcher
	["rhs_weap_rpg7"] call FNC_AddItem; //Anti tank launcher
	this addSecondaryWeaponItem "rhs_acc_pgo7v";
	["rhs_rpg7_OG7V_mag", 2] call FNC_AddItem; //Anti tank launcher
//	["rhs_rpg7_PG7VR_mag"] call FNC_AddItem; // Tandem round	
	
	this additemtobackpack "rhs_acc_1pn93_2"; // night vis scope RPG
	
};


case (package + "RFATA"): {
	
//	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
//	uniform;

	["U_I_C_Soldier_Para_2_F"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
//	["H_Cap_oli_hs"] call FNC_AddItem; //head
	["rhs_balaclava"] call FNC_AddItem; //face
	["rhs_rpg_empty"] call FNC_AddItem; //back

	IFAK;
	items;
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
//	["rhs_weap_rpg26"] call FNC_AddItem; //Anti tank launcher

	["rhs_rpg7_PG7VL_mag", 2] call FNC_AddItem; //Anti tank launcher
	["rhs_rpg7_OG7V_mag", 2] call FNC_AddItem; //Anti tank launcher
//	["rhs_rpg7_PG7VR_mag"] call FNC_AddItem; //Tandem round
	
	["rhs_100Rnd_762x54mmR", 1] call FNC_AddItem;	// AR rounds
	
};

case (package + "RF"): {
	
//	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
//	uniform;

	["rhsgref_uniform_flecktarn"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
	["H_Watchcap_camo"] call FNC_AddItem; //head
	["G_Bandanna_oli"] call FNC_AddItem; //face
	
	IFAK;
	items;
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem; //Magazines
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rdg2_black", 1] call FNC_AddItem; //Black smoke
	["rhs_mag_rgd5", 2] call FNC_AddItem; //Frag grenade

	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
};

case (package + "UAV"): {
	
//	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
//	uniform;

	["rhsgref_uniform_flecktarn"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
	["H_Watchcap_camo"] call FNC_AddItem; //head
	["G_Bandanna_oli"] call FNC_AddItem; //face
	
	IFAK;
	items;
	
	["ACE_UAVBattery", 1] call FNC_AddItem;
//	["I_UAV_01_backpack_F", 1] call FNC_AddItem;
	["I_UavTerminal", 1] call FNC_AddItem;
	
	["rhs_30Rnd_545x39_7N10_AK", 4] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green", 1] call FNC_AddItem; //Magazines
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rdg2_black", 1] call FNC_AddItem; //Black smoke
	["rhs_mag_rgd5", 2] call FNC_AddItem; //Frag grenade

	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight

	["ACRE_PRC152", 1] call FNC_AddItem; //Long range radio
	
};

case (package + "MD"): {
	
	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
	uniform;
	IFAK;
	items;
	
	["rhs_mag_rdg2_white", 4] call FNC_AddItem; //White smoke
	
	["rhs_30Rnd_545x39_7N10_AK", 6] call FNC_AddItem; //Magazines
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pkas"] call FNC_AddItem; //Red dot sight
	
	//Extra Medic Supplies
	["ACE_fieldDressing", 15] call FNC_AddItem;
	["ACE_elasticBandage", 20] call FNC_AddItem;
	["ACE_packingBandage", 20] call FNC_AddItem;
	["ACE_quikclot", 12] call FNC_AddItem;
	["ACE_atropine", 10] call FNC_AddItem;
	["ACE_morphine", 8] call FNC_AddItem;
	["ACE_epinephrine", 8] call FNC_AddItem;
	["ACE_tourniquet", 5] call FNC_AddItem;
	["ACE_salineIV_500", 1] call FNC_AddItem;
	["ACE_surgicalKit", 3] call FNC_AddItem;
	["ACE_personalAidKit", 3] call FNC_AddItem;
	
};

case (package + "SN"): { 
	
//	uniform;
	["U_I_C_Soldier_Para_1_F"] call FNC_AddItem; 
	["V_TacVest_camo"] call FNC_AddItem;
	["H_Bandanna_khk_hs"] call FNC_AddItem; //head
	["G_Bandanna_blk"] call FNC_AddItem; //face
	["rhs_assault_umbts"] call FNC_AddItem; //back

	IFAK;
	items;
	
	["ACE_Vector"] call FNC_AddItem;
	
	["ACRE_PRC152", 1] call FNC_AddItem; //Long range radio
	
	["rhs_10Rnd_762x54mmR_7N1", 8] call FNC_AddItem; //Magazines
		
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rdg2_black", 1] call FNC_AddItem; //Black smoke
	["rhs_mag_rgd5", 2] call FNC_AddItem; //Frag grenade

	["rhs_weap_svdp"] call FNC_AddItem; //Primary rifle
	["rhs_acc_pso1m2"] call FNC_AddItem; //sight
	
	["rhs_acc_1pn93_1", 1, "backpack"] call FNC_AddItem;
	
};






