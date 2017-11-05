
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGear
{	
//==============================Squad Leader=============================
	class B_RS_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V","AGM_MapTools","AGM_CableTie","AGM_CableTie"};
		linkedItems[] = {"AV_PlateCarrier1_OCP","AV_ACH3_OCP",
						"ItemMap","ItemCompass","ItemWatch","AV_ESS_blk_clr","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeRed_Grenade_shell",
			"1Rnd_SmokeRed_Grenade_shell",
			"1Rnd_SmokeBlue_Grenade_shell",
			"1Rnd_SmokeBlue_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"Chemlight_green",
			"UGL_FlareGreen_F",
			"UGL_FlareGreen_F",
			"UGL_FlareGreen_F",
			"UGL_FlareGreen_F",
			"AV_15Rnd_9x19_Mag",
			"AV_15Rnd_9x19_Mag",
			"AV_15Rnd_9x19_Mag",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",

		};
		backpack = "AV_Kitbag_OCP";
		uniformClass = "AV_CombatUniform2_OCP";
		weapons[] = {"RH_M4A1_ris_m203","av_m9","Binocular","Throw","Put"};
	};
	
//==============================Team Leader=============================
	class B_RS_TL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V","AGM_MapTools","AGM_CableTie","AGM_CableTie"};
		linkedItems[] = {"AV_PlateCarrier1_OCP","AV_ACH3_OCP",
						"ItemMap","ItemCompass","ItemWatch","AV_ESS_blk_clr","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",
			"SmokeShell",
			"SmokeshellRed",
			"SmokeShellOrange",
			"Chemlight_green",

		};
		backpack = "AV_Kitbag_OCP";
		uniformClass = "AV_CombatUniform2_OCP";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};
	
//==============================Rifleman=============================
	class B_RS_RM
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V","AGM_MapTools","AGM_CableTie","AGM_CableTie"};
		linkedItems[] = {"AV_PlateCarrier1_OCP","AV_ACH3_OCP",
						"ItemMap","ItemCompass","ItemWatch","AV_ESS_blk_clr","RH_peq2","tf_anprc152","RH_compM4s"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",

		};
		backpack = "AV_Kitbag_OCP";
		uniformClass = "AV_CombatUniform2_OCP";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};
	

	
	//==============================Grenadier=============================
	class B_RS_GR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V","AGM_MapTools","AGM_CableTie","AGM_CableTie"};				
		linkedItems[] = {"AV_PlateCarrier1_OCP","AV_ACH3_OCP",
						"ItemMap","ItemCompass","ItemWatch","AV_ESS_blk_clr","RH_peq2","tf_anprc152","RH_compM4s"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
		};
		backpack = "AV_Kitbag_OCP";
		uniformClass = "AV_CombatUniform2_OCP";
		weapons[] = {"RH_M4A1_ris_m203","Throw","Put"};
	};
	
	//==============================AutoRifleman=============================
	class B_RS_AR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","AGM_SpareBarrel","SureFire_ej","AGM_MapTools","AGM_CableTie","AGM_CableTie"};
		linkedItems[] = {"AV_PlateCarrier1_OCP","AV_ACH3_OCP",
						"ItemMap","ItemCompass","ItemWatch","AV_ESS_blk_clr","tf_anprc152","RH_compm4s"};
		magazines[] = {
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"Chemlight_green",
			"HandGrenade",
			"SmokeShell",
		};
		backpack = "AV_Kitbag_OCP";
		uniformClass = "AV_CombatUniform2_OCP";
		weapons[] = {"STI_M249","Throw","Put"};
	};
	
	
};