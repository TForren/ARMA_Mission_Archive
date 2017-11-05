
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGear
{	
//==============================Squad Leader=============================
	class B_marpatW_RS_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
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
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",

		};
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"RH_M4A1_ris_m203","RH_m9","Binocular","Throw","Put"};
	};
	
//==============================Team Leader=============================
	class B_marpatW_RS_TL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
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
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};
	
//==============================Rifleman=============================
	class B_marpatW_RS_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_compM4s"};
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
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Throw","Put"};
	};
	
//==============================Medic=============================
	class B_marpatW_RS_Med
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine",
					"AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Epipen",
					"AGM_BloodBag","AGM_BloodBag","AGM_BloodBag","AGM_BloodBag",
					"AGM_EarBuds","RH_SFM952V"};					
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_compM4s"};
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
			"SmokeShell",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Throw","Put"};
	};
	
	//==============================Grenadier=============================
	class B_marpatW_RS_Gren
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};				
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_compM4s"};
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
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"RH_M4A1_ris_m203","Throw","Put"};
	};
	
	//==============================AutoRifleman=============================
	class B_marpatW_RS_AR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","AGM_SpareBarrel","SureFire_ej"};
		linkedItems[] = {"US_2010_Multicam2_PlateCarrier","US_2010_Multicam2_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","tf_anprc152","FHQ_optic_AIM"};
		magazines[] = {
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"Chemlight_green",
			"HandGrenade",
			"SmokeShell",
		};
		backpack = "US_2010_Multicam2_Carryall";
		uniformClass = "US_2010_Multicam2_FieldUniform2";
		weapons[] = {"STI_M249","Throw","Put"};
	};
	
	
};