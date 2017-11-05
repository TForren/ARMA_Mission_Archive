//Allow player to respawn with his loadout? If true unit will respawn with all ammo from initial save! Set to false to disable this and rely on other scripts!
vas_onRespawn = true;
//Preload Weapon Config?
vas_preload = false;
//If limiting weapons its probably best to set this to true so people aren't loading custom loadouts with restricted gear.
vas_disableLoadSave = false;
//Amount of save/load slots
vas_customslots = 14; //14 is actually 15 slots, starts from 0 to whatever you set, so always remember when setting a number to minus by 1, i.e 12 will be 11.
//Disable 'VAS hasn't finished loading' Check !!! ONLY RECOMMENDED FOR THOSE THAT USE ACRE AND OTHER LARGE ADDONS !!!
vas_disableSafetyCheck = false;
/*
	NOTES ON EDITING!
	YOU MUST PUT VALID CLASS NAMES IN THE VARIABLES IN AN ARRAY FORMAT, NOT DOING SO WILL RESULT IN BREAKING THE SYSTEM!
	PLACE THE CLASS NAMES OF GUNS/ITEMS/MAGAZINES/BACKPACKS/GOGGLES IN THE CORRECT ARRAYS! TO DISABLE A SELECTION I.E
	GOGGLES vas_goggles = [""]; AND THAT WILL DISABLE THE ITEM SELECTION FOR WHATEVER VARIABLE YOU ARE WANTING TO DISABLE!
	
														EXAMPLE
	vas_weapons = ["srifle_EBR_ARCO_point_grip_F","arifle_Khaybar_Holo_mzls_F","arifle_TRG21_GL_F","Binocular"];
	vas_magazines = ["30Rnd_65x39_case_mag","20Rnd_762x45_Mag","30Rnd_65x39_caseless_green"];
	vas_items = ["ItemMap","ItemGPS","NVGoggles"];
	vas_backpacks = ["B_Bergen_sgg_Exp","B_AssaultPack_rgr_Medic"];
	vas_goggles = [""];				

												Example for side specific (TvT)
*/
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_weapons = [];
			vas_items = []; 
			vas_goggles = []; //Remove diving goggles from VAS
		};
		//Opfor
		case east:
		{
			vas_weapons = ["arifle_mas_ak_74m", 
			"arifle_mas_ak_74m_gl", "arifle_mas_ak_74m_c", "arifle_mas_ak_74m_gl_c", "arifle_mas_aks74", "arifle_mas_aks74_gl", "arifle_mas_ak_74m_sf", 
			"arifle_mas_ak_74m_sf_gl", "arifle_mas_ak_74m_sf_c", "arifle_mas_ak_74m_sf_gl_c", "arifle_mas_akms", "arifle_mas_akms_gl", "arifle_mas_akms_c", 
			"arifle_mas_akms_gl_c", "arifle_mas_akm", "arifle_mas_akm_gl", "arifle_mas_bizon", "arifle_mas_saiga", "arifle_mas_m70", "arifle_mas_m70_gl", 
			"arifle_mas_m70ab", "arifle_mas_m70ab_gl", "srifle_mas_m91", "LMG_mas_m72_F", "srifle_mas_svd", "srifle_mas_ksvk", "srifle_mas_ksvk_c", "srifle_mas_ksvk_c_sd", 
			"arifle_mas_aks74u", "arifle_mas_aks74u_c", "LMG_mas_rpk_F", "LMG_mas_rpk_F_sd", "LMG_mas_pkm_F", "hgun_mas_mak_F", "hgun_mas_mak_F_sd" ];
			vas_items = []; 
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};

/*
//If the arrays below are empty (as they are now) all weapons, magazines, items, backpacks and goggles will be available
//Want to limit VAS to specific weapons? Place the classnames in the array!

vas_weapons = [];
//Want to limit VAS to specific magazines? Place the classnames in the array!
vas_magazines = []; 
//Want to limit VAS to specific items? Place the classnames in the array!
vas_items = [];
//Want to limit backpacks? Place the classnames in the array!
vas_backpacks = [];
//Want to limit goggles? Place the classnames in the array!
vas_glasses = [];
*/

/*
	NOTES ON EDITING:
	THIS IS THE SAME AS THE ABOVE VARIABLES, YOU NEED TO KNOW THE CLASS NAME OF THE ITEM YOU ARE RESTRICTING. THIS DOES NOT WORK IN 
	CONJUNCTION WITH THE ABOVE METHOD, THIs IS ONLY FOR RESTRICTING / LIMITING ITEMS FROM VAS AND NOTHING MORE
	
														EXAMPLE
	vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
	vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
	vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
	
												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//Below are variables you can use to restrict certain items from being used.
//Remove Weapon
vas_r_weapons = [];
vas_r_backpacks = [];
//Magazines to remove from VAS
vas_r_magazines = [];
//Items to remove from VAS
vas_r_items = [];
//Goggles to remove from VAS
vas_r_glasses = [];
