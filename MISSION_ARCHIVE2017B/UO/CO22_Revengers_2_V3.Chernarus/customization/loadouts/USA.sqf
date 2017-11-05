//SL, TL, RF, AR, GL, MD, pilot


#define dress \
	["rhs_uniform_cu_ocp"] call FNC_AddItem;
	
#define IFAK \
	["ACE_fieldDressing", 4, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 4, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;

#define stuff \
	["ACRE_PRC343", 1] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["rhsusf_ANPVS_15"] call FNC_AddItem;
	
#define helmet [[["rhsusf_ach_helmet_ESS_ocp"]], [["rhsusf_ach_helmet_ocp"], ["rhs_googles_yellow"]]] call FNC_AddItemRandom;

case ("SL"): {
	["rhsusf_iotv_ocp_Squadleader"] call FNC_AddItem; //vest
	["rhsusf_ach_helmet_headset_ess_ocp"] call FNC_AddItem; //helmet
	
	dress;
	IFAK;
	stuff;
	
	["ACE_MapTools"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;
	["ACRE_PRC152",1] call FNC_AddItem;
	["ItemGPS"] call FNC_AddItem;
	
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_compm4"] call FNC_AddItem; //optic
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2] call FNC_AddItem; //tracers
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m18_purple", 2] call FNC_AddItem; //Purple Smoke
	["rhs_mag_m18_red", 2] call FNC_AddItem; //Red Smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
	
};

case ("TL"): {
	["rhsusf_iotv_ocp_Teamleader"] call FNC_AddItem; //vest
	["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem; //helmet
	
	dress;
	IFAK;
	stuff;
	
	["ACE_MapTools"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;
	["ItemGPS"] call FNC_AddItem;
	
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 9] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_ACOG3"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m18_purple", 1] call FNC_AddItem; //Purple Smoke
	["rhs_mag_m18_red", 1] call FNC_AddItem; //Red Smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
};

case ("RF"): {
	["rhsusf_iotv_ocp_Rifleman"] call FNC_AddItem; //vest
	["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem; //backpack
	
	helmet;
	
	dress;
	IFAK;
	stuff;
		
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_compm4"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
	
	["rhs_200rnd_556x45_M_SAW", 2] call FNC_AddItem; //spare AR ammo
};

case ("RFAT"): {
	["rhsusf_iotv_ocp_Rifleman"] call FNC_AddItem; //vest
	
	helmet;
	
	dress;
	IFAK;
	stuff;
		
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_compm4"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
	
	["rhs_weap_M136"] call FNC_AddItem; //AT-4
};

case ("AR"): {
	["rhsusf_iotv_ocp_SAW"] call FNC_AddItem; //vest
	["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem; //backpack
	
	helmet;
	
	dress;
	IFAK;
	stuff;
		
	["rhs_weap_m249_pip_L"] call FNC_AddItem; //gun
	["rhs_200rnd_556x45_M_SAW", 3] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_ACOG"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
};

case ("GL"): {
	["rhsusf_iotv_ocp_Grenadier"] call FNC_AddItem; //vest
	
	helmet;
	
	dress;
	IFAK;
	stuff;
		
	["rhs_weap_m4a1_m320"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 9] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_compm4"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 1] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 1] call FNC_AddItem; //Frag grenade
	
	
	["rhs_mag_M433_HEDP", 2] call FNC_AddItem; //HEDP 203
	["rhs_mag_M441_HE", 10] call FNC_AddItem; //Frag Grenade  (m203)
	["rhs_mag_m713_Red", 2] call FNC_AddItem; //Red Smoke  (m203)
	["rhs_mag_m715_Green", 2] call FNC_AddItem; //Green Smoke  (m203)
	["rhs_mag_m714_White", 2] call FNC_AddItem; //White Smoke  (m203)
};

case ("MD"): {
	["rhsusf_iotv_ocp_Medic"] call FNC_AddItem; //vest
	["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem; //backpack
	
	helmet;
	
	dress;
	IFAK;
	stuff;
		
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7] call FNC_AddItem; //basic ammo
	
	["rhsusf_acc_compm4"] call FNC_AddItem; //optic
	
	["rhs_mag_an_m8hc", 2] call FNC_AddItem; //White smoke
	["rhs_mag_m67", 2] call FNC_AddItem; //Frag grenade
	
	["ACE_fieldDressing", 15] call FNC_AddItem;
	["ACE_elasticBandage", 15] call FNC_AddItem;
	["ACE_packingBandage", 10] call FNC_AddItem;
	["ACE_quikclot", 10] call FNC_AddItem;
	["ACE_atropine", 2] call FNC_AddItem;
	["ACE_morphine", 8] call FNC_AddItem;
	["ACE_epinephrine", 3] call FNC_AddItem;
	["ACE_tourniquet", 5] call FNC_AddItem;
	["ACE_salineIV_500", 4] call FNC_AddItem;
	["ACE_surgicalKit", 1] call FNC_AddItem;
	["ACE_personalAidKit", 1] call FNC_AddItem;
};

case ("pilot"): {
	["rhsusf_iotv_ocp"] call FNC_AddItem; //vest
	["rhsusf_hgu56p"] call FNC_AddItem; //helmet
	
	["ItemGPS"] call FNC_AddItem;
	
	dress;
	IFAK;
	stuff;
	
	["rhs_weap_m4a1"] call FNC_AddItem; //gun
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4] call FNC_AddItem; //basic ammo
	["rhs_mag_an_m8hc", 1] call FNC_AddItem; //White smoke
};