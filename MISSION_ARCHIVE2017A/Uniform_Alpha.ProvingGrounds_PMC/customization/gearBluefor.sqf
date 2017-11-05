// Info: Ukrainian Armed Forces - Updated 12/08/2017
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - Olsen's Debug (in settings.sqf) will have to be turned off when uploading the mission to the server
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
#define I_svd "rhs_weap_svdp_pso1"
#define I_svdmag "rhs_10Rnd_762x54mmR_7N1"

//Common ammo
#define I_74mag "rhs_30Rnd_545x39_AK"
#define I_74mag_7n10 "rhs_30Rnd_545x39_7N10_AK"
#define I_rpk74mag "rhs_45Rnd_545X39_AK"

#define I_47mag "rhs_30Rnd_762x39mm"

#define I_glmag "rhs_VOG25"
#define I_glsmokemag "rhs_VG40OP_white"

//Carbine
#define aks74u "rhs_weap_aks74u"

//Assualt Rifles
#define I_ak47 "hlc_rifle_ak47"
#define I_akm "rhs_weap_akm"
#define I_akm_gl "rhs_weap_akm_gp25"
#define I_akms "rhs_weap_akms"
#define I_akms_gl "rhs_weap_akms_gp25"

#define I_ak74 "rhs_weap_ak74"
#define I_ak74_gl "rhs_weap_ak74_gp25"

#define I_ak74m "rhs_weap_ak74m"
#define I_ak74m_gl "rhs_weap_ak74m_gp25"

//Machine Guns
#define I_rpk74 "hlc_rifle_rpk74n"

#define I_pkm "rhs_weap_pkm"
#define I_pkmag "rhs_100Rnd_762x54mmR"


// Secondary
#define I_sidearm "rhs_weap_makarov_pm"
#define I_rsp "rhs_weap_rsp30_red","rhs_weap_rsp30_green","rhs_weap_rsp30_white"

// Magazines
#define I_samag "rhs_mag_9x18_8_57N181S"

// Launchers
#define I_mat "rhs_weap_rpg7_pgo"
#define I_rat "rhs_weap_rpg26"

// Magazines
#define I_mat_heat "rhs_rpg7_PG7VL_mag"
#define I_mat_frag "rhs_rpg7_OG7V_mag"
#define I_mat_thermo "rhs_rpg7_TBG7V_mag"


// Grenades
#define I_rgd5 "rhs_mag_rgd5"
#define I_rgn "rhs_mag_rgn"
#define I_rgo "rhs_mag_rgo"
#define I_smoke "rhs_mag_rdg2_white"
#define I_smokeo "rhs_mag_nspd"
					
//=== MISC ===

//Chemical lights
#define I_chemblue "Chemlight_blue"
#define I_chemgreen "Chemlight_green"

// CE equipment - what everyone should have
#define I_ace_army_default \
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;

//ACE
#define I_ace_sparebarrel "ACE_SpareBarrel"
#define I_cuffs "ACE_CableTie"
#define I_nana "ACE_Banana"
#define I_toolkit "ToolKit"
#define I_binoculars "Binocular"
#define I_range "rhs_pdu4"
#define I_maptools "ACE_MapTools"

//Radio
#define I_longrange "ACRE_PRC148"
#define I_shortrange "ACRE_PRC343"

//=== Clothes ===
//UKR will have all equipment semi-matching, otherwise it looks bad, hence the green and tan below
//Uniform              
#define I_default_uniform [ [["LOP_U_UKR_Fatigue_TTsKO"]],[20],[["LOP_U_UKR_Fatigue_IzlomTTsKO"]],[20],[["LOP_U_UKR_Fatigue_TanMTP"]],[20], [["LOP_U_UKR_Fatigue_Digit"]],[20], [["LOP_U_UKR_Fatigue_DPMWDPMD"]],[20]] call FNC_AddItemRandomPercent;


//rifleman
#define I_vest_default_green [ [["LOP_V_6B23_6Sh92_TTKO_OLV"]],[20],[["LOP_V_6B23_6Sh92_TTKO"]],[20],[["LOP_V_6B23_Rifleman_TTKO"]],[20],[["rhs_vydra_3m"]],[20],[["rhs_6Sh92"]],[20]] call FNC_AddItemRandomPercent;
#define I_vest_default_tan [[["V_AFGH_6Sh92_bleached"]],[40],[["LOP_V_6B23_6Sh92_TAN_DMPi"]],[20],[["LOP_V_6B23_Rifleman_TAN"]],[20],[["LOP_V_6B23_6Sh92_TAN_ACU"]],[20]] call FNC_AddItemRandomPercent;

//Leader
#define I_vest_leader_green "LOP_V_6B23_6Sh92_TTKO_OLV"
#define I_vest_leader_tan "LOP_V_6B23_6Sh92_TAN_DMPi"

#define I_leader_headgear_green "LOP_H_Fieldcap_UKR"
#define I_leader_headgear_tan "rhs_fieldcap_khk"

//ftl
#define I_vest_ftl_green [ [["rhs_6sh92_vog"]],[40],[["LOP_V_6B23_6Sh92_TTKO_OLV"]],[20],[["LOP_V_6B23_6Sh92_TTKO"]],[20], [["LOP_V_6B23_Rifleman_TTKO"]],[20]] call FNC_AddItemRandomPercent;
#define I_vest_ftl_tan [ [["LOP_V_6B23_6Sh92_TAN_DMPi"]],[30],[["LOP_V_6B23_Rifleman_TAN"]],[30],[["V_AFGH_6Sh92_Vog_TAN"]],[20],[["V_AFGH_6Sh92_Vog_bleached"]],[20]] call FNC_AddItemRandomPercent;


//medic
#define I_vest_medic_green "LOP_V_6B23_Medic_TTKO"
#define I_vest_medic_tan "LOP_V_6B23_Medic_TAN"

//mg
#define I_vest_mg_green "LOP_V_6B23_TTKO"
#define I_vest_mg_tan "LOP_V_6B23_TAN"

//Sniper
#define I_vest_sniper_green "LOP_V_6B23_sniper"
#define I_vest_sniper_tan "V_AFGH_6B23_Sniper_bleached"

//Crew
#define I_vest_crew_green "LOP_V_6B23_TTKO"
#define I_vest_crew_tan "LOP_V_6B23_TAN"

//headgear
#define I_default_headgear_green [ [["LOP_H_SSh68Helmet_OLV"]],[17],[["LOP_H_6B27M_Izlom"]],[17],[["LOP_H_6B27M_wz93"]],[17], [["LOP_H_Beanie_flec"]],[17],[["LOP_H_Beanie_marpat"]],[16],[["rhs_beanie_green"]],[16]] call FNC_AddItemRandomPercent;
#define I_default_headgear_tan [ [["LOP_H_6B27M_MTP"]],[25],[["LOP_H_6B27M_Digit"]],[25],[["LOP_H_Beanie_multicam"]],[13],[["LOP_H_Beanie_digit"]],[13], [["LOP_H_Beanie_mtp"]],[12],[["LOP_H_Beanie_tan"]],[12]] call FNC_AddItemRandomPercent;

#define I_vcrew_headgear "rhs_tsh4"

//Backpack
#define I_default_backpack "rhs_sidor"
#define I_rpg_backpack "rhs_rpg_empty"


//=== EQUIPMENT ===
#define I_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define I_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


//Motorized Platoon HQ

//Platoon Commander
case "I_PC": {
	I_default_uniform 
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		[I_vest_leader_green] call FNC_AddItem;
		[I_leader_headgear_green] call FNC_AddItem;
	} else {
		[I_vest_leader_tan] call FNC_AddItem;
		[I_leader_headgear_tan] call FNC_AddItem;
	};
	
	
	I_ace_army_default 
	[I_smoke,1,"uniform"] call FNC_AddItem;
	[I_longrange,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,1,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	[I_rpk74mag,1,"vest"] call FNC_AddItem;
	
	[I_samag, 1] call FNC_AddItem;
	[I_sidearm] call FNC_AddItem;
	
	[I_binoculars] call FNC_AddItem;
};

case "I_SL": {
	I_default_uniform 
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		[I_vest_leader_green] call FNC_AddItem;
		[I_leader_headgear_green] call FNC_AddItem;
	} else {
		[I_vest_leader_tan] call FNC_AddItem;
		[I_leader_headgear_tan] call FNC_AddItem;
	};
	
	I_ace_army_default 
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_longrange,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	[I_rpk74mag,1,"vest"] call FNC_AddItem;
	
	[I_samag, 1] call FNC_AddItem;
	[I_sidearm] call FNC_AddItem;
	
	[I_binoculars] call FNC_AddItem;
};

case "I_FTL": {
	I_default_uniform 
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		I_vest_ftl_green
		I_default_headgear_green
	} else {
		I_vest_ftl_tan
		I_default_headgear_tan
	};
	
	I_ace_army_default 
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	
	[I_74mag,1] call FNC_AddItem;
	[I_glmag,1] call FNC_AddItem;
	[I_ak74_gl] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,3,"vest"] call FNC_AddItem;
	[I_glmag,9,"vest"] call FNC_AddItem;
	[I_glsmokemag,2,"vest"] call FNC_AddItem;
	
	[I_binoculars] call FNC_AddItem;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_GRE": {
	I_default_uniform 
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		I_vest_ftl_green
		I_default_headgear_green
	} else {
		I_vest_ftl_tan
		I_default_headgear_tan
	};
	
	I_ace_army_default 
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	//Assigned Items
	I_default_equipment;
	
	//Weapons
	
	
	[I_74mag,1] call FNC_AddItem;
	[I_glmag,1] call FNC_AddItem;
	[I_ak74_gl] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,4,"vest"] call FNC_AddItem;
	[I_glmag,9,"vest"] call FNC_AddItem;
	[I_glsmokemag,2,"vest"] call FNC_AddItem;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_MG": {
	I_default_uniform 
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		[I_vest_mg_green] call FNC_AddItem;
		I_default_headgear_green
	} else {
		[I_vest_mg_tan] call FNC_AddItem;
		I_default_headgear_tan
	};
	
	[I_default_backpack] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;
	
	//Uniform

	I_ace_army_default
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	

	//Vest

	//Backpack
	[
	
	[
	[I_rpk74mag,1],
	[I_rpk74],
	[I_rpk74mag,10,"backpack"],
	[I_rpk74mag,1,"vest"]
	],[80],
	
	[
	[I_pkmag,1], 
	[I_pkm],
	[I_pkmag,2,"backpack"]
	],[20]

			
	] call FNC_AddItemRandomPercent;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_RPG": {
	I_default_uniform
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		I_vest_default_green
		I_default_headgear_green
	} else {
		I_vest_default_tan
		I_default_headgear_tan
	};
	[I_rpg_backpack] call FNC_AddItem;
	

	//Uniform

	I_ace_army_default;
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	[I_rpk74mag,1,"vest"] call FNC_AddItem;
	//Backpack
	
	[
	
	[
	[I_mat_heat,2,"backpack"],
	[I_mat_frag,2,"backpack"]
	],[85],
	
	[
	[I_mat_heat,1,"backpack"],
	[I_mat_frag,1,"backpack"],
	[I_mat_thermo,1,"backpack"]
	],[15]
	
	] call FNC_AddItemRandomPercent;
	
	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_mat] call FNC_AddItem;
	
	//Extra Mags
	[I_mat_heat,1,"backpack"] call FNC_AddItem;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_RPGA": {
	I_default_uniform
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		I_vest_default_green
		I_default_headgear_green
	} else {
		I_vest_default_tan
		I_default_headgear_tan
	};
	[I_rpg_backpack] call FNC_AddItem;
	

	//Uniform

	I_ace_army_default;
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	
	//Vest
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	[I_rpk74mag,1,"vest"] call FNC_AddItem;

	//Backpack
	
	[
	
	[
	[I_mat_heat,2,"backpack"],
	[I_mat_frag,2,"backpack"]
	],[80],
	
	[
	[I_mat_heat,1,"backpack"],
	[I_mat_frag,1,"backpack"],
	[I_mat_thermo,1,"backpack"]
	],[20]
	
	] call FNC_AddItemRandomPercent;
	
	//Assigned Items
	I_default_equipment;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_RAT": {
	I_default_uniform
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		I_vest_default_green
		I_default_headgear_green
	} else {
		I_vest_default_tan
		I_default_headgear_tan
	};
	I_ace_army_default
	[I_rgd5,2,"uniform"] call FNC_AddItem;


	//Assigned Items
	I_default_equipment;

	//Weapons
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	[I_rpk74mag,1,"vest"] call FNC_AddItem;
	
	[
	[[I_rat]],[50],
	[[]], [50]
	
	] call FNC_AddItemRandomPercent;
	
	[I_rsp] call FNC_AddItemRandom;
	
	if (_unit hasWeapon I_rat) then {
		_unit setVariable ['uo_unitDescription', "Rifleman (AT)"];
	} else {
		_unit setVariable ['uo_unitDescription', "Rifleman"];
	};
};

case "I_MED": {
	I_default_uniform
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		[I_vest_medic_green] call FNC_AddItem;
		I_default_headgear_green
	} else {
		[I_vest_medic_tan] call FNC_AddItem;
		I_default_headgear_tan
	};
	
	I_ace_army_default;
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	
	//Vest

	["ACE_elasticBandage",6,"vest"] call FNC_AddItem; 
	["ACE_packingBandage",10,"vest"] call FNC_AddItem; 
	["ACE_fieldDressing",12,"vest"] call FNC_AddItem; 
	["ACE_morphine",8,"vest"] call FNC_AddItem; 
	["ACE_epinephrine",4,"vest"] call FNC_AddItem;

	//Assigned Items
	I_default_equipment;
	
	//Weapons
	[I_74mag,1] call FNC_AddItem;
	[I_ak74] call FNC_AddItem;
	[I_74mag,2,"uniform"] call FNC_AddItem;
	[I_74mag,5,"vest"] call FNC_AddItem;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_MARK": {
	I_default_uniform
	_uniform = uniform _unit;
	if (_uniform == "LOP_U_UKR_Fatigue_TTsKO" || _uniform == "LOP_U_UKR_Fatigue_IzlomTTsKO" || _uniform == "LOP_U_UKR_Fatigue_DPMWDPMD") then {
		[I_vest_sniper_green] call FNC_AddItem;
		I_default_headgear_green
	} else {
		[I_vest_sniper_tan] call FNC_AddItem;
		I_default_headgear_tan
	};
	
	I_ace_army_default;
	[I_rgd5,1,"uniform"] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	
	//Assigned Items
	I_default_equipment;

	[I_svdmag,1] call FNC_AddItem;
	[I_svd] call FNC_AddItem;
	[I_smoke,1,"uniform"] call FNC_AddItem;
	[I_svdmag,12,"vest"] call FNC_AddItem;
	
	[I_rsp] call FNC_AddItemRandom;
};

case "I_VG": {
	["LOP_U_UKR_Fatigue_TTsKO","LOP_U_UKR_Fatigue_IzlomTTsKO","LOP_U_UKR_Fatigue_DPMWDPMD"] call FNC_AddItemRandom;
	[I_vest_crew_green] call FNC_AddItem;
	[I_vcrew_headgear] call FNC_AddItem;
	
	//Uniform
	[I_74mag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	
	//Vest
	[I_74mag,1,"vest"] call FNC_AddItem;  
	[I_longrange,1,"vest"] call FNC_AddItem;

	//Assigned Items
	I_leader_equipment;

	//Weapons
	[aks74u] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[I_74mag,1,"uniform"] call FNC_AddItem;
};

//Vehicle Driver
case "I_VD": {
	["LOP_U_UKR_Fatigue_TTsKO","LOP_U_UKR_Fatigue_IzlomTTsKO","LOP_U_UKR_Fatigue_DPMWDPMD"] call FNC_AddItemRandom;
	[I_vest_crew_green] call FNC_AddItem;
	[I_vcrew_headgear] call FNC_AddItem;
	[I_default_backpack] call FNC_AddItem;

	//Uniform
	[I_74mag,2,"uniform"] call FNC_AddItem;
	
	I_ace_default;
	
	//Vest
	[I_74mag,2,"vest"] call FNC_AddItem; 
	
	//Backpack
	[I_toolkit,1,"backpack"] call FNC_AddItem;
	
	//Assigned Items
	I_leader_equipment;
	
	//Weapons
	[aks74u] call FNC_AddItem;
	[I_rsp] call FNC_AddItemRandom;
	
	//Extra Mag
	[I_74mag,1,"uniform"] call FNC_AddItem;
};