
//weapons
#define O_rifle "hlc_rifle_ak74"
#define O_riflemag "hlc_30Rnd_545x39_B_AK"
#define O_glrifle "hlc_rifle_aks74_GL"
#define O_glriflemag "hlc_30Rnd_545x39_B_AK"
#define O_glmag "hlc_VOG25_AK"
#define O_ar "rhs_weap_pkm"
#define O_armag "rhs_100Rnd_762x54mmR"
#define O_rat "rhs_weap_rpg26"
#define O_ratmag "rhs_rpg26_mag"

#define O_mg "rhs_weap_pkm"
#define O_mgmag "rhs_100Rnd_762x54mmR"

#define O_rat "rhs_weap_rpg26"
#define O_ratmag "rhs_rpg26_mag"

#define O_mat "rhs_weap_rpg7"

#define O_frag "rhs_mag_rgd5"

//Uniform
#define O_default_uniform_r "RNR_RUuniforms_KZM_05", "RNR_RUuniforms_KZM_05_SS", "RNR_FieldUniform_Gorka_02", "RNR_FieldUniform_Gorka_02_SS", "RNR_FieldUniform_Spectre_04"
#define O_leader_uniform_r "RNR_FieldUniform_Gorka_03", "RNR_RUuniforms_KZM_01", "RNR_RUuniforms_Gorka_04", "RNR_RUuniforms_UkrDigi_02"

#define O_leader_headgear_r "rnr_Altyn_ch_ochki_SKVO", "rnr_Altyn_ch_SKVO"
#define O_default_headgear_r "RNR_shlem6b27ch_KZMgs", "RNR_shlem6b27ch_UAdig", "rnr_SH_60_uadg", "rnr_SH_60_khk"


//vest
#define O_vest_default "RNR_Smersh_kora_PK"
#define O_vest_leader "RNR_def_molle_hard_s_skvo"

#define O_default_backpack "rhs_sidor"

//Rifle and Weapons Squad Lead
case "O_SL": {
	[O_leader_headgear_r] call FNC_AddItemRandom;
	[O_leader_uniform_r] call FNC_AddItemRandom;
	[O_vest_leader] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_glriflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_glriflemag,5,"vest"] call FNC_AddItem; 
	
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[O_glrifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;

};

//Rifle Squad
case "O_FTL": {
	[O_leader_headgear_r] call FNC_AddItemRandom;
	[O_leader_uniform_r] call FNC_AddItemRandom;
	[O_vest_leader] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,3,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	[O_frag,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_riflemag,5,"vest"] call FNC_AddItem; 
	
	[B_ace_cabletie,2,"uniform"] call FNC_AddItem;
	[B_shortrange,1,"vest"] call FNC_AddItem; 
	
	[B_glhe,18,"backpack"] call FNC_AddItem;
	//Assigned Items
	B_leader_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[B_range] call FNC_AddItem;

};

case "O_RIF": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_default_backpack] call FNC_AddItem;
	[O_vest_default] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[O_riflemag,7,"vest"] call FNC_AddItem; 
	[O_mgmag,1,"backpack"] call FNC_AddItem;
	[O_frag,2,"backpack"] call FNC_AddItem;

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;

};

case "O_RAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[O_riflemag,7,"vest"] call FNC_AddItem; 
	[O_mgmag,1,"backpack"] call FNC_AddItem;
	
	[O_frag,2,"backpack"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	[O_rat] call FNC_AddItem;
	
};


case "O_MG": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[O_default_backpack] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;

	//Uniform
	B_ace_default;
	[O_frag,2,"uniform"] call FNC_AddItem;
	
	//Vest
	[O_mgmag,1,"vest"] call FNC_AddItem; 

	//Backpack
	[O_mgmag,3,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[O_mg] call FNC_AddItem;
	
	//Extra Mag
	[O_mgmag,1,"vest"] call FNC_AddItem; 
	
};

case "O_MAT": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[B_RPG_backpack] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[O_riflemag,7,"vest"] call FNC_AddItem; 

	
	[O_frag,2,"uniform"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
	
};
case "O_MATA": {
	[O_default_headgear_r] call FNC_AddItemRandom;
	[O_default_uniform_r] call FNC_AddItemRandom;
	[O_vest_default] call FNC_AddItem;
	[B_RPG_backpack] call FNC_AddItem;
	[O_glasses] call FNC_AddItem;
	
	
	//Uniform
	[O_riflemag,2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	[O_riflemag,7,"vest"] call FNC_AddItem; 

	
	[O_frag,2,"uniform"] call FNC_AddItem;

	
	//Assigned Items
	B_default_equipment;
	
	//Weapons
	[O_rifle] call FNC_AddItem;
	
};
case "O_VD": {
	["rhs_tsh4_ess"] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	["RNR_p2_ak"] call FNC_AddItem;
	["G_Bandanna_khk"] call FNC_AddItem;
	
	
	//Uniform
	["hlc_30Rnd_545x39_B_AK",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	["hlc_30Rnd_545x39_B_AK",5,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["hlc_rifle_aks74u"] call FNC_AddItem;
	
};
case "O_VG": {
	["rhs_tsh4_ess"] call FNC_AddItem;
	[O_default_uniform_r] call FNC_AddItemRandom;
	["RNR_p2_ak"] call FNC_AddItem;
	["G_Bandanna_khk"] call FNC_AddItem;
	
	
	//Uniform
	["hlc_30Rnd_545x39_B_AK",2,"uniform"] call FNC_AddItem;
	
	B_ace_default;
	
	//Vest
	["hlc_30Rnd_545x39_B_AK",5,"vest"] call FNC_AddItem; 

	//Assigned Items
	B_default_equipment;
	
	//Weapons
	["hlc_rifle_aks74u"] call FNC_AddItem;
	
};