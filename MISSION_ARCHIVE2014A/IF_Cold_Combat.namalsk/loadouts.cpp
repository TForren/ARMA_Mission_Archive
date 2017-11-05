
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGear
{	
//==============================Squad Leader=============================
	class B_USMC_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_SL","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"1Rnd_HE_Grenade_shell",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"9Rnd_45ACP_Mag",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16A1gl","Throw","Put"};
	};
//==============================Rifleman=============================
	class B_USMC_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_Rifle","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16a1","Throw","Put"};
	};
	
//==============================AR=============================
	class B_USMC_AR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds","AGM_sparebarrel"};
		linkedItems[] = {"kae_SZ_Belt_LMG","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"STI_M249","Throw","Put"};
	};
	
	//==============================Ammo Bearer=============================
	class B_USMC_AB
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_Rifle","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16a1","Throw","Put"};
	};
	
	//==============================medic=============================
	class B_USMC_med
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_Morphine",
					"AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Epipen",
					"AGM_BloodBag","AGM_BloodBag",
					"AGM_EarBuds"};	
		linkedItems[] = {"kae_SZ_Belt_Rifle","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16a1","Throw","Put"};
	};
	
	//==============================Grenadier=============================
	class B_USMC_Gren
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_Grenadier","kae_USMC_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
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
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16A1gl","Throw","Put"};
	};
	
		//==============================RL=============================
	class B_USMC_RL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_light_Rifle","H_Cap_oli_hs",
						"ItemMap","ItemCompass","ItemWatch","tf_rf7800str_1"};
		magazines[] = {
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"30rnd_556x45_STANAG",
			"Kae_M67",
			"Kae_M67",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big";
		uniformClass = "kae_USMC_2013_Uniform_Armoured";
		weapons[] = {"RH_M16a1","Throw","Put"};
	};
	
	
	
//============================================================================================	
//===========================================RUSKIES==========================================	
//============================================================================================	

//==============================Squad Leader=============================
	class O_Rus_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_RU_ChestRig","kae_RU_Helmet","kae_optic_CSZ_R",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"Kae_AK_47szU_slab","Throw","Put"};
	};
//==============================Rifleman=============================
	class O_Rus_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_RU_ChestRig","kae_RU_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_8Rnd_9x18_Mak",
			"Kae_8Rnd_9x18_Mak",
			"Kae_8Rnd_9x18_Mak",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"kae_AK_74szK_SZ_Ign","Throw","Put"};
	};
	
//==============================AR=============================
	class O_Rus_AR
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_CDF_Belt_LMG_P","kae_RU_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"Kae_PKM","Throw","Put"};
	};
	
	//==============================medic=============================
	class O_Rus_Med
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_Morphine",
					"AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Epipen",
					"AGM_BloodBag","AGM_BloodBag",
					"AGM_EarBuds"};	
		linkedItems[] = {"kae_TK_Belt_ChestHolster","kae_RU_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_small_P";
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"Kae_AK_74szU_slab_grip","Throw","Put"};
	};
	
	//==============================Grenadier=============================
	class O_Rus_Gren
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_light_Rifle","kae_RU_Helmet",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"caf_OG7",
			"caf_OG7",
			"caf_OG7",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_small_RPG";
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"Kae_AK_74szU_old_slab_grip","caf_rpg7","Throw","Put"};
	};
	
		//==============================RL=============================
	class O_Rus_RL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_light_Rifle","kae_RU_Hat_nomask",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a_1"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",

		};
		backpack = "kae_Backpack_small";
		uniformClass = "kae_RU_Uniform_Armoured";
		weapons[] = {"kae_AK_74szK_SZ_Ign","Throw","Put"};
	};
	
	


	
};