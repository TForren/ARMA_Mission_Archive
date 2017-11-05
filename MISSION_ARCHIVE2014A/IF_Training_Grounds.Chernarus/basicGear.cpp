
// [this,["missionconfigfile","cfgGear","O_Diver"]] call BIS_fnc_loadInventory

class CfgGear
{	
//==============================Instructor=============================
	class Instructor
	{
		Items[] = {"AGM_Bandage","AGM_Morphine","AGM_EarBuds","RH_ttracker"};
		linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","tf_anprc152","SP_Beret_Yellow"};
		magazines[] = {
			"Chemlight_green",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"SmokeShell",
		};
		uniformClass = "US_2010_Multicam2_WorkUniform1";
		weapons[] = {"Binocular","Throw","Put"};
	};
	
	
	//==============================Trainee=============================
	class Trainee
	{
		Items[] = {"AGM_Bandage","AGM_Morphine","AGM_EarBuds","RH_ttracker_g"};
		linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","tf_anprc152","US_2010_Multicam2_BaseballCap"};
		magazines[] = {
			"Chemlight_green",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"RH_6Rnd_45ACP_Mag",
			"SmokeShell",
		};
		uniformClass = "US_2010_Multicam2_FieldUniform1_SS";
		weapons[] = {"Throw","Put"};
	};
	
		//==============================Leader=============================
	class Leader
	{
		Items[] = {"AGM_Bandage","AGM_Morphine","AGM_EarBuds"};
		linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","tf_anprc152","SP_OfficerHat_US_Army"};
		magazines[] = {
			"Chemlight_green",
			"SmokeShell",
		};
		uniformClass = "US_2010_Multicam2_WorkUniform1";
		weapons[] = {"Throw","Put"};
	};
};