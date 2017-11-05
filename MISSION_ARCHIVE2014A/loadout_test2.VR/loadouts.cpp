
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

//Items: Stuff that just goes in the inventory. Not assigned.
//linkedItems: Stuff that has an assign slot such as compass, goggles, weapon attachments, etc.
//Magazines: Guess
//weapons: the array of weapons the unit has. Do not remove Throw and Put. (I think they're important)

/*
//==============================TEMPLATE LOADOUT=============================
	class B_marpatD_RS_TL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};

*/


class CfgGear
{	
//==============================Squad Leader=============================
	class B_marpatD_RS_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris_m203","RH_m9","Binocular","Throw","Put"};
	};
	
//==============================Team Leader=============================
	class B_marpatD_RS_TL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};
	
//==============================Rifleman=============================
	class B_marpatD_RS_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Throw","Put"};
	};
	
//==============================Medic=============================
	class B_marpatD_RS_Med
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Morphine",
					"AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Epipen",
					"AGM_BloodBag","AGM_BloodBag","AGM_BloodBag","AGM_BloodBag",
					"AGM_EarBuds","RH_SFM952V"};					
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
			"30rnd_556x45_STANAG",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
			"HandGrenade",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","RH_m9","Throw","Put"};
	};
	
	//==============================Grenadier=============================
	class B_marpatD_RS_Gren
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};				
		linkedItems[] = {"US_2001_MarpatDesert_PlateCarrier","US_2001_MarpatDesert_PASGTHelmet1",
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
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"HandGrenade",
			"HandGrenade",
		};
		backpack = "US_2001_MarpatDesert_Carryall";
		uniformClass = "US_2001_MarpatDesert_FieldUniform2";
		weapons[] = {"RH_M4A1_ris_m203","Throw","Put"};
	};
	
	//==============================AutoRifleman=============================
	class B_marpatW_RS_AR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","AGM_SpareBarrel","SureFire_ej"};
		linkedItems[] = {"US_2010_MarpatWoodland_PlateCarrier","US_2010_MarpatWoodland_PASGTHelmet1",
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
		backpack = "US_2010_MarpatWoodland_Carryall";
		uniformClass = "US_2010_MarpatWoodland_FieldUniform2";
		weapons[] = {"STI_M249","Throw","Put"};
	};
	
	
}; //This is the end of the entire loadout definition. Every loadout should be above this bracket!