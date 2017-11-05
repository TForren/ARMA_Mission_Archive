
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class UkrainGear
{	
//==============================Ammo Bearer=============================
	class I_UkRebel_AB
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_SZ_Belt_Rifle_G",
						"ItemMap","ItemCompass","ItemWatch","SAS_shemagh_OD","SP_Kneepads_Black","tf_pnr1000a","kae_optic_CSZ_B"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",

		};
		backpack = "kae_Backpack_big_D";
		uniformClass = "SP_0000_Standard_FieldUniform_Hunter";
		weapons[] = {"Kae_AK_74szU_slab","Throw","Put"};
	};
	
//==============================Rifleman=============================
	class I_UkRebel_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"kae_CDF_Belt_Crew","H_caf_ag_fur2",
						"ItemMap","ItemCompass","ItemWatch","G_Bandanna_sport","tf_pnr1000a","kae_optic_CSZ_B"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",

		};
		uniformClass = "SP_0000_Standard_FieldUniform_Hunter";
		weapons[] = {"kae_AK_74szK_SZ_Ign","Throw","Put"};
	};
	
//==============================SVD=============================
	class I_UkRebel_sniper
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};				
		linkedItems[] = {"kae_CDF_Belt_Crew","SP_Bandana_Hunter","G_Bandanna_aviator",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a","kae_optic_pso_z_2x_6x"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
		};
		backpack = "kae_Backpack_RPG_G";
		uniformClass = "SP_0000_Standard_FieldUniform_Hunter";
		weapons[] = {"Kae_SVD_545","Throw","Put"};
	};
	
	//==============================Grenadier=============================
	class I_UkRebel_rpg
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};				
		linkedItems[] = {"kae_CDF_Belt_Crew","Balaclava_Black",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a","kae_optic_CSZ_B","SP_Kneepads_Black"};
		magazines[] = {
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_30Rnd_762x39_M43_AK",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
		};
		backpack = "kae_Backpack_RPG_G";
		uniformClass = "SP_0000_Standard_FieldUniform_Hunter";
		weapons[] = {"Kae_AK_47szU_grip","caf_OG7","Throw","Put"};
	};
	
	//==============================Machine Gunner=============================
	class I_UkRebel_mg
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage",
					"AGM_Morphine","AGM_Morphine","AGM_EarBuds"};				
		linkedItems[] = {"kae_CDF_Belt_Crew","G_Balaclava_lowprofile","H_Cap_headphones",
						"ItemMap","ItemCompass","ItemWatch","tf_pnr1000a","kae_optic_CSZ_B"};
		magazines[] = {
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_RGD5",
			"Kae_RGD5",
		};
		backpack = "kae_Backpack_small_ammo";
		uniformClass = "SP_0000_Standard_FieldUniform_Hunter_SS";
		weapons[] = {"Kae_PKM","Throw","Put"};
	};
	
	
};