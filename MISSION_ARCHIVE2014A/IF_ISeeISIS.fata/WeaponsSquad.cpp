
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGear2
{	
//==============================Squad Leader=============================
	class B_WS_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"Chemlight_green",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"HandGrenade",
			"SmokeShell",
			"SmokeShell",
			"SmokeShellRed",
			"SmokeShellOrange",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",

		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","RH_m9","Rangefinder","Throw","Put"};
	};
	
//==============================Machine Gunner=============================
	class B_WS_MMG
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","AGM_SpareBarrel"};
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_ta31rco_2d"};
		magazines[] = {
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"RH_15Rnd_9x19_M9",
			"Chemlight_green",
			"HandGrenade",
			"SmokeShell",
			"Chemlight_green",

		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"STI_M240G","RH_M9","Binocular","Throw","Put"};
	};
	
//==============================Assistant Machine Gunner=============================
	class B_WS_AMG
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_compM4s"};
		magazines[] = {
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
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",

		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Binocular","Throw","Put"};
	};
	
//==============================Ammo Bearer=============================
	class B_WS_AB
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V","AGM_SpareBarrel"};
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
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
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",
			"sti_100Rnd_762x51",

		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Throw","Put"};
	};
	
	//==============================Anti Tank Specialist=============================
	class B_WS_AT
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};				
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","RH_peq2","tf_anprc152","RH_compM4s"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"MAAWS_HEAT",
			"MAAWS_HEAT",
			"MAAWS_HEDP",
			"MAAWS_HEDP",
			"Chemlight_green",
			"HandGrenade",
			"SmokeShell",
		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Maaws","Throw","Put"};
	};
	
	//==============================Assistant Anti Tank=============================
	class B_WS_AAT
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds","RH_SFM952V"};
		linkedItems[] = {"US_2010_Multicam_PlateCarrier","US_2010_Multicam_ACHHelmet1",
						"ItemMap","ItemCompass","ItemWatch","NVGoggles","G_Combat","tf_anprc152","RH_peq2","tf_anprc152","RH_compM4s"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"MAAWS_HEAT",
			"MAAWS_HEAT",
			"MAAWS_HEDP",
			"MAAWS_HEDP",
			"Chemlight_green",
			"HandGrenade",
			"SmokeShell",
		};
		backpack = "US_2010_Multicam_Carryall";
		uniformClass = "US_2010_Multicam_FieldUniform2";
		weapons[] = {"RH_M4A1_ris","Rangefinder","Throw","Put"};
	};

};