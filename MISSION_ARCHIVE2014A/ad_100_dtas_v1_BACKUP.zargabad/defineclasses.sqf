#include "islandspecific.hpp"

private ["_standardAttackerPrimary", "_standardAttackerMagazine", "_standardAttackerAttachments", "_standardAttackerHelm", "_standardAttackerUniform", "_standardAttackerBackpack", "_standardDefenderPrimary", "_standardDefenderMagazine", "_standardDefenderAttachments", "_standardDefenderUniform", "_standardDefenderHelm", "_standardAttackerHandgun", "_standardAttackerHandgunMagazine", "_standardAttackerGlasses", "_standardDefenderBackpack"];


//_standardAttackerPrimary = "arifle_TRG21_ACO_point_F";
//_standardAttackerMagazine = "30Rnd_65x39_case_mag";
_standardAttackerPrimary = "RH_M4A1_ris";
_standardAttackerMagazine = "30rnd_556x45_STANAG";
_standardAttackerAttachments = ["RH_compM4s", "RH_peq2"];
if (nightVision == 0) then
{
	_standardAttackerAttachments set [1, "RH_SFM952V"];
};

_standardAttackerHelm = "US_2003_MulticamScorpion_PASGTHelmet2";
_standardAttackerUniform = "US_2003_MulticamScorpion_FieldUniform2";
_standardAttackerVest = "US_2003_MulticamScorpion_PlateCarrier";
_standardAttackerBackpack = "US_2003_MulticamScorpion_Carryall";
_standardAttackerGlasses = "G_Combat";

_standardAttackerHandgun = "RH_m9";
_standardAttackerHandgunMagazine = "RH_15Rnd_9x19_M9";


_standardDefenderUniform = "kae_TK_Uniform";
_standardDefenderHelm = "SP_SSh68NetHelmet_Tan1";
_standardDefenderPrimary = "caf_AK74";
_standardDefenderMagazine = "CAF_30Rnd_545x39_AK";

_standardDefenderVest = "kae_SZ_Belt_light_Rifle";
_standardDefenderBackpack = "kae_Backpack_small";
_standardDefenderBackpack = "kae_Backpack_small";
_standardDefenderAttachments = if (nightVision >= 0) then {["acc_flashlight"]} else {[]};

if (defenderGearQuality > 0) then
{
	_standardDefenderVest = "SP_OpforRig1_Tan";
	_standardDefenderAttachments set [count _standardDefenderAttachments, "optic_ACO_grn"];
};

if (isIDF) then
{
	_standardAttackerHelm = "IDF_Helmet_CQB_Golani";
	_standardAttackerUniform = "IDF_Uniform";
	_standardAttackerBackpack = "B_AssaultPack_rgr";
	_standardAttackerVest = "IDF_Vest";
	
	//_standardDefenderUniform = "U_B_CombatUniform_mcam_tshirt";
	//_standardDefenderHelm = "";
};


aClasses =
[
	// 0:Description, 1:uniform, 2:vest, 3:backpack, 4:helmet, 5:eyewear, 6:weapons, 7:magazines, 8:items, 9:weapon attachments, 10:handgun attachments, 11:condition
	
	[
		localize "STR_Marksman"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,["RH_SAMR", _standardAttackerHandgun]
		,[["RH_30Rnd_556x45_Mk262", 7], ["HandGrenade", 1], ["SmokeShell", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,(_standardAttackerAttachments - [_standardAttackerAttachments select 0]) + [if (nightVision > 0) then {"RH_ta31rco_2D"} else {"RH_ta31rco_2D"}]
		,[]
		,"true"
	]

	,[
		localize "STR_Rifleman"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,[_standardAttackerPrimary, _standardAttackerHandgun]
		,[[_standardAttackerMagazine, 8], ["HandGrenade", 3], ["SmokeShell", 2], ["SmokeShellGreen", 1], [_standardAttackerHandgunMagazine, 4]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_SuppressedRifleman"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,[_standardAttackerPrimary, _standardAttackerHandgun]
		,[[_standardAttackerMagazine, 7], ["HandGrenade", 1], ["SmokeShell", 1], ["SmokeShellGreen", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments + ["RH_qdss_nt4"]
		,[]
		,"true"
	]
	
	,[
		localize "STR_Medic"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,[_standardAttackerPrimary, _standardAttackerHandgun]
		,[[_standardAttackerMagazine, 7], ["HandGrenade", 1], ["SmokeShell", 1], ["SmokeShellGreen", 2], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 25], ["AGM_Morphine", 7],["AGM_Epipen", 5], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_ATGunner"
		,_standardAttackerUniform
		,_standardAttackerVest
		,_standardAttackerBackpack
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,[_standardAttackerPrimary, "Maaws", _standardAttackerHandgun]
		,[["MAAWS_HEDP", 2], [_standardAttackerMagazine, 7], ["HandGrenade", 1], ["SmokeShell", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_Grenadier"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,["RH_M4A1_ris_m203"]
		,[[_standardAttackerMagazine, 7], ["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 4], ["UGL_FlareWhite_F", 8], ["HandGrenade", 1], ["SmokeShell", 1]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_AutomaticRifleman"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,["STI_M249", _standardAttackerHandgun]
		,[["sti_200Rnd_556x45", 4], ["HandGrenade", 1], ["SmokeShell", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_Machinegunner"
		,_standardAttackerUniform
		,_standardAttackerVest
		,""
		,_standardAttackerHelm
		,_standardAttackerGlasses
		,["STI_M240G", _standardAttackerHandgun]
		,[["sti_100Rnd_762x51", 4], ["HandGrenade", 0], ["SmokeShell", 0], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments - [_standardAttackerAttachments select 0]
		,[]
		,"true"
	]
	
	,[
		localize "STR_Sniper"
		,if (isIDF) then {_standardAttackerUniform} else {"U_B_GhillieSuit"}
		,"V_BandollierB_rgr"
		,""
		,if (isIDF) then {"IDF_Cap_Golani"} else {""}
		,""
		,["srifle_LRR_SOS_F", _standardAttackerHandgun]
		,[["7Rnd_408_Mag", 9], ["SmokeShell", 1], ["SmokeShellGreen", 2], [_standardAttackerHandgunMagazine, 4]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,if (nightVision > 0) then {["optic_NVS"]} else {[]}
		,[]
		,"true"
	]
	
	,[
		localize "STR_Spotter"
		,if (isIDF) then {_standardAttackerUniform} else {"U_B_GhillieSuit"}
		,"V_BandollierB_rgr"
		,""
		,if (isIDF) then {"IDF_Cap_Golani"} else {""}
		,""
		,[_standardAttackerPrimary, "Rangefinder", _standardAttackerHandgun]
		,[[_standardAttackerMagazine, 7], ["HandGrenade", 1], ["SmokeShell", 3], ["SmokeShellGreen", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_UAVOperator"
		,_standardAttackerUniform
		,"V_BandollierB_rgr"
		,if (sidePlayer == WEST) then {"B_UAV_01_backpack_F"} else {"O_UAV_01_backpack_F"}
		,if (isIDF) then {"IDF_Cap_Golani"} else {"H_Booniehat_mcamo"}
		,_standardAttackerGlasses
		,["SMG_02_F", if (sidePlayer == WEST) then {"B_UavTerminal"} else {"O_UavTerminal"}, _standardAttackerHandgun]
		,[["30Rnd_9x21_Mag", 7], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardAttackerAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_Diver"
		,"U_B_Wetsuit"
		,"V_RebreatherB"
		,""
		,""
		,"G_Diving"
		,["arifle_SDAR_F", _standardAttackerHandgun]
		,[["30Rnd_556x45_Stanag", 6], ["20Rnd_556x45_UW_mag", 2], ["HandGrenade", 2], ["SmokeShell", 1], [_standardAttackerHandgunMagazine, 3]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,[]
		,[]
		,"true"
	]

];

dClasses =
[
	// 0:Description, 1:uniform, 2:vest, 3:backpack, 4:helmet, 5:eyewear, 6:weapons, 7:magazines, 8:items, 9:weapon attachments, 10:condition
	
	[
		localize "STR_Rifleman"
		,_standardDefenderUniform
		,_standardDefenderVest
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"T_HoodTanBlk"
		,[_standardDefenderPrimary]
		,[[_standardDefenderMagazine, 7], ["Kae_RGD5", 3], ["SmokeShell", 2]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_SpecOps"
		,_standardDefenderUniform
		,if (defenderGearQuality > 0) then {"SP_OpforRig1_Tan"} else {"kae_SZ_Belt_light_Rifle"}
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"SAS_shemagh_Tan"
		,["Kae_AK_74szU_slab_grip"]
		,[["Kae_30Rnd_545x39_7n6_AK", 7], ["Kae_RGD5", 1], ["SmokeShell", 2]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments + [if (defenderGearQuality > 0) then {"kae_optic_pso_z_3x_9x"} else {"Kae_Bipod_S"}]
		,[]
		,"true"
	]
	
	,[
		localize "STR_Medic"
		,_standardDefenderUniform
		,_standardDefenderVest
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"T_HoodTanBlk"
		,[_standardDefenderPrimary]
		,[[_standardDefenderMagazine, 5 + 2 * defenderGearQuality], ["Kae_RGD5", defenderGearQuality], ["SmokeShell", defenderGearQuality], ["SmokeShellBlue", 1]]
		,[["AGM_Bandage", 20], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_AutomaticRifleman"
		,_standardDefenderUniform
		,_standardDefenderVest
		,"kae_Backpack_small_ammo"
		,_standardDefenderHelm
		,"T_HoodTanBlk"
		,["caf_rpk74"]
		,[["CAF_75rnd_545x39_RPK", 3 + defenderGearQuality]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_Grenadier"
		,_standardDefenderUniform
		,_standardDefenderVest
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"T_HoodTanBlk"
		,["caf_ak74gl"]
		,[["CAF_30Rnd_545x39_AK", 6] ,["1Rnd_HE_Grenade_shell", 4 + 3 * defenderGearQuality], ["1Rnd_SmokeBlue_Grenade_shell", 3], ["UGL_FlareWhite_F", 5]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
		
	,[
		localize "STR_RPG"
		,_standardDefenderUniform
		,_standardDefenderVest
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"SAS_shemagh_Tan"
		,[_standardDefenderPrimary, "kae_RPG7v"]
		,[["kae_PG_7VL_mag", 1], [_standardDefenderMagazine, 7], ["SmokeShell", 1]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
	
	,[
		localize "STR_AssistantRPG"
		,_standardDefenderUniform
		,_standardDefenderVest
		,"kae_Backpack_small_RPG"
		,_standardDefenderHelm
		,"SAS_shemagh_Tan"
		,[_standardDefenderPrimary]
		,[["kae_PG_7VL_mag", 2],["kae_TBG_7V_mag", 2], [_standardDefenderMagazine, 6], ["SmokeShell", 1]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]

	,[
		localize "STR_Saboteur"
		,_standardDefenderUniform
		,_standardDefenderVest
		,_standardDefenderBackpack
		,_standardDefenderHelm
		,"SAS_shemagh_Tan"
		,[_standardDefenderPrimary]
		,[[_standardDefenderMagazine, 7], ["APERSTripMine_Wire_Mag", 2 + defenderGearQuality], ["SmokeShell", 1]]
		,[["AGM_Bandage", 8], ["AGM_Morphine", 2], ["Epipen", 1], ["AGM_EarBuds", 1]]
		,_standardDefenderAttachments
		,[]
		,"true"
	]
	
];

if (defenderGearQuality > 0) then
{
	dClasses =
		[
			[
				localize "STR_Marksman"
				,_standardDefenderUniform
				,_standardDefenderVest
				,_standardDefenderBackpack
				, _standardDefenderHelm
				,"T_HoodTanBlk"
				,["Kae_SVD_545"]
				,[["Kae_30Rnd_545x39_7n6_AK", 5], ["SmokeShell", 3]]
				,[]
				,_standardDefenderAttachments - ["optic_ACO_grn"] + [if (nightVision > 1) then {"kae_optic_pso_z_3x_9x"} else {"kae_optic_pso_z_3x_9x"}]
				,[]
				,"true"
			]
		]
		+
		dClasses
		+
		[
			[
				localize "STR_MortarGunner"
				,_standardDefenderUniform
				,"V_BandollierB_cbr"
				,"B_Mortar_01_weapon_F"
				,_standardDefenderHelm
				,""
				,[_standardDefenderPrimary]
				,[[_standardDefenderMagazine, 6], ["SmokeShell", 1]]
				,[]
				,_standardDefenderAttachments - ["optic_ACO_grn"]
				,[]
				,"true"
			]
	
			,[
				localize "STR_MortarAssistant"
				,_standardDefenderUniform
				,"V_BandollierB_cbr"
				,"B_Mortar_01_support_F"
				,_standardDefenderHelm
				,""
				,[_standardDefenderPrimary, "Rangefinder"]
				,[[_standardDefenderMagazine, 6], ["SmokeShell", 2],["Chemlight_yellow",3]]
				,[]
				,_standardDefenderAttachments - ["optic_ACO_grn"]
				,[]
				,"true"
			]
		];
};