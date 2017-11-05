
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGearISIS
{	
//==============================Squad Leader=============================
	class O_ISIS_SL
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black","kae_optic_CSZ_R"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
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
			"SmokeShellRed",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"kae_AK_74szK_SZ_Ign","Throw","Put"};
	};
	
//==============================Machine Gunner=============================
	class O_ISIS_MG
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_100Rnd_762x54r_7n14_PKM",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"Kae_PKM","Throw","Put"};
	};
	
	//==============================Machine Gunner2=============================
	class O_ISIS_MG2
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"sti_200Rnd_556x45",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShell",
			"SmokeShell",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"STI_KSP90","Throw","Put"};
	};
	
	
//==============================Rifleman=============================
	class O_ISIS_R
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
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
			"SmokeShellRed",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"kae_AK_74szK_SZ_Ign","Throw","Put"};
	};
	
//==============================Rifleman2=============================
	class O_ISIS_R2
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"30Rnd_556x45_Stanag",
			"Kae_RGD5",
			"Kae_RGD5",
			"SmokeShellRed",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"RH_M16a1","Throw","Put"};
	};
	
	//==============================Fighter=============================
	class O_ISIS_F
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_Holster1_Brown","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"RH_32Rnd_9x19_tec",
			"RH_32Rnd_9x19_tec",
			"RH_32Rnd_9x19_tec",
			"RH_32Rnd_9x19_tec",
			"RH_32Rnd_9x19_tec",
			"Kae_RGD5",
			"Kae_RGD5",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"RH_tec9","Throw","Put"};
	};
	
	//==============================Anti Tank=============================
	class O_ISIS_RPG
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"SP_OpforRig1_Tan","ItemMap","ItemCompass","ItemWatch","Balaclava_Black"};
		magazines[] = {
			"RH_20Rnd_32cal_vz61",
			"RH_20Rnd_32cal_vz61",
			"RH_20Rnd_32cal_vz61",
			"RH_20Rnd_32cal_vz61",
			"caf_OG7",
			"caf_OG7",
			"caf_OG7",
			"caf_OG7",
		};
		backpack = "kae_Backpack_RPG";
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"RH_vz61","caf_rpg7","Throw","Put"};
	};
	
	
		//==============================Sniper=============================
	class O_ISIS_Sniper
	{
		Items[] = {"AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage"};
		linkedItems[] = {"V_Rangemaster_belt","ItemMap","ItemCompass","ItemWatch","kae_optic_pso_z_2x_6x","Balaclava_Black"};
		magazines[] = {
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"Kae_30Rnd_545x39_7n6_AK",
			"RH_20Rnd_32cal_vz61",
			"RH_20Rnd_32cal_vz61",
			"RH_20Rnd_32cal_vz61",
			"Kae_RGD5",
			"Kae_RGD5",
		};
		uniformClass = "SP_0000_Standard_FieldUniform_Black";
		weapons[] = {"Kae_SVD_545","RH_vz61","Throw","Put"};
	};
	

};