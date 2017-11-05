class RUS {
// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]	
// Russian VDV Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
//		Infantry Loadouts
//		PC		- Platoon Commander 
//		RTO		- Platoon Sgt
//		SL 		- Squad Leader
//		MED 		- Medic
//		FTL		- Senior Rifleman
//		GRE 		- Grenadier
//		AR		- Machine Gunner
//		AAR		- Assistant Machine Gunner
//		RAT		- rifleman (AT)
//		MAT		- Anti Tank
//		MATA		- AT Assistant
//		MARK		- Marksman
//		VG		- Vehicle Gunner 
//		VD		- Vehicle Driver (repair) 
//		PIL		- Pilot / Co-Pilot 
//		PILR		- Co-Pilot (repair) / Crew Chief (repair) 
//		AIRCR		- Air Crew 
//
//		Vehicle Cargo Loadouts
//		V_CAR		- car/4x4/jeep
//		V_TR		- truck
//		V_IFV		- ifv


//========================Equipment Definitions========================
//=== Weapons ===

//Scopes
#define rifle_scope "rhs_acc_1p29"
#define rifle_scope2 "rhs_acc_1p78"
#define marksman_scope "rhs_acc_pso1m2"
#define akmb "rhs_acc_dtk"
#define akmb2 "rhs_acc_dtk1"
#define akmb3 "rhs_acc_dtk3"

// Primary
#define rifle "rhs_weap_ak74m"
#define rifle2 "rhs_weap_ak74m_2mag"
#define rifle3 "rhs_weap_ak74m_plummag"
#define glrifle "rhs_weap_ak74m_gp25"
#define carbine "rhs_weap_ak74m_folded" 
#define mg "rhs_weap_pkp"
#define dmr "rhs_weap_svdp"

// Magazines
#define riflemag "rhs_30Rnd_545x39_7n10_AK"
#define riflemag_tr "rhs_30Rnd_545x39_AK_green"
#define riflemag_ap "rhs_30Rnd_545x39_7n22_AK"
#define mgmag "rhs_100Rnd_762x54mmR_green"
#define dmrmag "rhs_10Rnd_762x54mmR_7N1"

// Secondary
#define sidearm "RH_mak"
#define sidearm2 "rhs_weap_pya"
#define rsp "rhs_weap_rsp30_red"

// Magazines
#define samag "RH_8Rnd_9x18_Mak"
#define sa2mag "rhs_mag_9x19_17"

// Launchers
#define rat "rhs_weap_rpg26"
#define tat "rhs_weap_rshg2"

// Magazines
#define ratmag "rhs_rpg26_mag"
#define tatmag "rhs_rshg2_mag"

// Grenades
#define frag "rhs_mag_rgd5"
#define smokewhite "rhs_mag_rdg2_white"
#define smokeblack "rhs_mag_rdg2_black"
#define chemred "Chemlight_red"

// GL Mags
#define glmag	{"rhs_VOG25p",9},  \
		{"rhs_GRD40_white",2}, \
		{"rhs_GRD40_green",1}, \
		{"rhs_GRD40_red",1}

//=== MISC ===

// ACE equipment - what everyone should have
#define ace_default	{"ACE_fieldDressing",5}, \
			{"ace_Morphine",2}, \
			{"ACE_epinephrine",1}, \
			{"ace_EarPlugs",1}
	
#define ace_medic	{"ACE_fieldDressing",30}, \
			{"ace_Morphine",20}, \
			{"ACE_epinephrine",10}, \
			{"ACE_bloodIV_250",5}

//Other
#define ace_sparebarrel "ace_SpareBarrel"
#define cuffs "ace_CableTie"
#define toolkit "ToolKit"
#define binoculars "Binocular"
#define range "rhs_pdu4"

//Radio
#define longrange "ACRE_PRC152"
#define shortrange "ACRE_PRC343"
		
//=== Clothes ===

//Uniform		
#define default_uniform "rhs_uniform_vdv_flora"
#define pilot_uniform "rhs_uniform_df15"
#define sniper_uniform "rhs_uniform_vdv_flora"
	
//Headgear
#define leader_headgear "rhs_6b27m", "rhs_6b27m_green"
#define default_headgear "rhs_6b27m", "rhs_6b27m_green"
#define vcrew_headgear "rhs_tsh4_ess"
#define vcrew_gunhead "rhs_tsh4"
#define pilot_headgear "rhs_zsh7a"
#define aircrew_headgear "rhs_zsh7a_mike"
#define sniper_headgear "rhs_Booniehat_flora"
#define officer_headgear "rhs_fieldcap_helm", "rhs_6b27m"

//Backpack
#define default_backpack "rhs_sidor"
#define rpg_backpack "rhs_rpg"
#define pilot_backpack "TRYK_B_Coyotebackpack_BLK"

//Vests
#define vest_default "rhs_6b23_6sh92", "rhs_6sh92"
#define vest_ftl "rhs_6b23_6sh92_vog_headset"
#define vest_medic "rhs_6b23_medic"
#define vest_grenadier "rhs_6b23_6sh92_vog", "rhs_6sh92_vog"
#define vest_sniper "rhs_6b23_sniper"
#define vest_vehiclecrew_commander "rhs_6b23_crewofficer"
#define vest_vehiclecrew "rhs_6b23_crew"
#define vest_leader "rhs_6b23_6sh92_radio", "rhs_6sh92_headset"
#define vest_officer "rhs_6b23_6sh92_headset_mapcase"
#define vest_pilot "rhs_6sh46"

//Face
#define facecover "rhs_scarf"
#define facemask "G_Bandanna_oli"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch" //With GPS
#define default_equipment "ItemMap","ItemCompass","ItemWatch"

//========================Class Loadouts Definitions========================
//================Platoon Leader==================
class PC {
	weapons[] = {rifle3,range,sidearm};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {officer_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_officer};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{samag,3}
		};
		vestItems[] = {
			{smokewhite,2},
			{cuffs,2},
			{shortrange,1},
			{longrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {rifle_scope2,akmb3};
	secKit[] = {};
};
//================Platoon Sgt.==================
class RTO {
	weapons[] = {rifle,binoculars,rsp,rat};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_leader};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{ratmag,1}
		};
		vestItems[] = {
			{smokewhite,2},
			{smokeblack,1},
			{cuffs,2},
			{shortrange,1},
			{longrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {rifle_scope,akmb2};
	secKit[] = {};
};
//================Medic==================
class MED {
	weapons[] = {rifle,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {default_backpack};
		backpackItems[] = {
			ace_medic,
			{chemred,1},
			{smokewhite,2},
			{shortrange,1}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_medic};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{riflemag_ap,2}
		};
		vestItems[] = {
			{frag,1},
			{smokewhite,3},
			{smokeblack,1},
			{cuffs,2}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {akmb};
	secKit[] = {};
};
//================Squad Leader (deputy leader)==================
class SL {
	weapons[] = {rifle3,tat,range,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {leader_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_leader};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{tatmag,1}
		};
		vestItems[] = {
			{smokewhite,2},
			{cuffs,2},
			{shortrange,1},
			{longrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {rifle_scope,akmb3};
	secKit[] = {};
};
//================Team Leader==================
class FTL {
	weapons[] = {glrifle,rat,binoculars,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{shortrange,1}
		};
	goggles[] = {""};
	vest[] = {vest_ftl};
		vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{ratmag,1}
		};
		vestItems[] = {
			glmag,
			{cuffs,2}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {rifle_scope2,akmb2};
	secKit[] = {};
};
//================Machine Gunner==================
class AR {
	weapons[] = {mg,sidearm2};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {default_backpack};
		backpackMagazines[] = {
			{mgmag,3}
		};
		backpackItems[] = {
			{smokewhite,1},
			{chemred,1}

		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{sa2mag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{shortrange,1}
		};
	goggles[] = {""};
	vest[] = {vest_default};
		vestMagazines[] = {
			{mgmag,3}
		};
		vestItems[] = {
			{cuffs,2}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Assistant Auto-Rifleman==================
class AAR {
	weapons[] = {rifle,binoculars,rsp,rat};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {default_backpack};
		backpackMagazines[] = {
			{mgmag,3},
			{riflemag,2}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{riflemag_ap,2},
			{ratmag,1}
		};
		vestItems[] = {
			{frag,1},
			{smokewhite,1},
			{cuffs,2},
			{shortrange,1}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {akmb};
	secKit[] = {};
};
//================Grenadier==================
class GRE {
	weapons[] = {glrifle,tat,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{shortrange,1}
		};
	goggles[] = {""};
	vest[] = {vest_grenadier};
		vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2},
			{tatmag,1}
		};
		vestItems[] = {
			glmag,
			{cuffs,2}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {akmb};
	secKit[] = {};
};
//================Rifleman==================
class RIF {
	weapons[] = {rifle2,rat,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,3}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2},
			{riflemag_ap,2},
			{ratmag,1}
		};
		vestItems[] = {
			{frag,1},
			{smokewhite,1},
			{shortrange,1}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {akmb};
	secKit[] = {};
};
//================Marksman==================
class MARK {
	weapons[] = {dmr,tat,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{dmrmag,5}
		};
		uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
		};
	goggles[] = {""};
	vest[] = {vest_sniper};
		vestMagazines[] = {
			{dmrmag,8},
			{tatmag,1}
		};
		vestItems[] = {
			{frag,1},
			{smokewhite,1},
			{shortrange,1}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {marksman_scope};
	secKit[] = {};
};
//================Vehicle Driver (Repair)==================
class VD {
	weapons[] = {carbine,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {"default_backpack"};
		backpackMagazines[] = {
		};
		backpackItems[] = {
			{toolkit,1}
		};
	headgear[] = {vcrew_headgear};
	uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
	goggles[] = {facemask};
	vest[] = {vest_vehiclecrew};
                vestMagazines[] = {
			{riflemag,2},
			{riflemag_tr,2}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Vehicle Gunner==================
class VG {
	weapons[] = {carbine,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {""};
	headgear[] = {vcrew_gunhead};
	uniform[] = {default_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
	goggles[] = {facecover};
	vest[] = {vest_vehiclecrew_commander};
                vestMagazines[] = {
			{riflemag,4},
			{riflemag_tr,2}
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
	assignedItems[] = {default_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Pilot==================
class PIL {
	weapons[] = {carbine,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
	headgear[] = {pilot_headgear};
	uniform[] = {pilot_uniform};
		uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
	goggles[] = {""};
	vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1},
			{longrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Pilot (Repair)==================
class PILR {
	weapons[] = {carbine,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {pilot_backpack};
                backpackMagazines[] = {
			{riflemag,3}
                };
                backpackItems[] = {
			{smoke,2},
			{toolkit,1}
                };
	headgear[] = {aircrew_headgear};
	uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
	goggles[] = {""};
	vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Air Crew==================
class AIRCR {
	weapons[] = {carbine,rsp};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {};
	headgear[] = {aircrew_headgear};
	uniform[] = {pilot_uniform};
                uniformMagazines[] = {
			{riflemag,3}
                };
                uniformItems[] = {
			ace_default,
			{frag,1},
			{chemred,1}
                };
	goggles[] = {""};
	vest[] = {vest_pilot};
                vestMagazines[] = {
                };
		vestItems[] = {
			{cuffs,2},
			{smoke,1},
			{shortrange,1}
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	priKit[] = {};
	secKit[] = {};
};
//================Vehicle Loadouts==================
class V_CAR {
	vehCargoWeapons[] = {
		{rat,2}
	};
	vehCargoMagazines[] = {
		{riflemag,30},
		{riflemag_tr,8},
		{dmrmag,5},
		{mgmag,5},
		{ratmag,2},
		{smokewhite,5},
		{frag,5},
	};
	vehCargoItems[] = {""};
	vehCargoRucks[] = {""};
};
class V_TR {
	vehCargoWeapons[] = {
		{rat,6}
	};
	vehCargoMagazines[] = {
		{riflemag,50},
		{riflemag_tr,10},
		{dmrmag,30},
		{mgmag,20},
		{smokewhite,10},
		{frag,10},
		{ratmag,6}
	};
	vehCargoItems[] = {""};
	vehCargoRucks[] = {""};
};
class V_IFV {
	vehCargoWeapons[] = { 
		{rat,5}
	};
	vehCargoMagazines[] = {
		{riflemag,30},
		{riflemag_tr,10},
		{dmrmag,10},
		{mgmag,10},
		{ratmag,5},
		{smokewhite,5},
		{frag,5}
	};
	vehCargoItems[] = {""};
	vehCargoRucks[] = {""};
};
};