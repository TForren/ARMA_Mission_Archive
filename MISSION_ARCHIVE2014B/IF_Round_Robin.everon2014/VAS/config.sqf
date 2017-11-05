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
			vas_weapons = ["srifle_EBR_F","arifle_MX_GL_F", "arifle_MX_SW_Black_F", "arifle_MX_SW_F", "arifle_MXC_F", "arifle_MXM_DMS_F", 
			"arifle_mas_hk416", "arifle_mas_hk416_gl", "arifle_mas_hk416_m203", "arifle_mas_hk416_v", "arifle_mas_hk416_gl_v", 
			"arifle_mas_hk416_m203_v", "arifle_mas_hk416_d", "arifle_mas_hk416_gl_d", "arifle_mas_hk416_m203_d", "arifle_mas_hk416c", 
			"arifle_mas_hk416_m203c", "arifle_mas_hk416c_v", "arifle_mas_hk416_m203c_v", "arifle_mas_hk416c_d", "arifle_mas_hk416_m203c_d", 
			"arifle_mas_hk417c", "arifle_mas_hk417_m203c", "arifle_mas_hk417c_v", "arifle_mas_hk417_m203c_v", 
			"arifle_mas_hk417c_d", "arifle_mas_hk417_m203c_d", "arifle_mas_m4", "arifle_mas_m4_gl", "arifle_mas_m4_m203", "arifle_mas_m4_v",
			"arifle_mas_m4_gl_v", "arifle_mas_m4_m203_v", "arifle_mas_m4_d", "arifle_mas_m4_gl_d", "arifle_mas_m4_m203_d", "arifle_mas_m4c", 
			"arifle_mas_m4_m203c", "arifle_mas_m4_m203c_v", "arifle_mas_m4c_d", "arifle_mas_m4_m203c_d", "arifle_mas_m16", "arifle_mas_m16_gl", 
			"arifle_mas_g3", "arifle_mas_g3s", "arifle_mas_g3s_m203", "arifle_mas_fal", "arifle_mas_fal_m203", "arifle_mas_m1014", 
			"srifle_mas_hk417", "srifle_mas_hk417_d", "srifle_mas_sr25_v", "srifle_mas_sr25_d", "srifle_mas_ebr", "srifle_mas_m107", 
			"srifle_mas_m107_v", "srifle_mas_m107_d", "srifle_mas_m24", "srifle_mas_m24_v", "srifle_mas_m24_d", "arifle_mas_mp5", "arifle_mas_mp5_v", 
			"arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds", "LMG_mas_Mk200_F", "LMG_mas_M249_F", "LMG_mas_M249_F_v", "LMG_mas_M249_F_d", 
			"LMG_mas_M249a_F", "LMG_mas_Mk48_F", "LMG_mas_Mk48_F_v", "LMG_mas_Mk48_F_d", "LMG_mas_M240_F", "LMG_mas_mg3_F", "srifle_EBR_ACO_F", 
			
			//Launchers
			"launch_Titan_F", "mas_launch_Stinger_F", "launch_Titan_short_F", "MineDetector",
			
			//Pistols
			"hgun_mas_m9_F", "hgun_mas_bhp_F", "hgun_mas_glock_F", "hgun_mas_m9_F_sd", "hgun_mas_bhp_F_sd", "hgun_mas_glock_F_sd", "hgun_mas_m9_F", 
			"hgun_mas_bhp_F", "hgun_mas_glock_F", "hgun_mas_m9_F_sd", "hgun_mas_bhp_F_sd", "hgun_mas_glock_F_sd", "hgun_ACPC2_F", "hgun_P07_F", "hgun_Pistol_heavy_01_F",
			
			//SMG
			"SMG_01_F", "SMG_02_ACO_F", hgun_PDW2000_F];
			vas_items = []; 
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
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

vas_weapons = ["arifle_mas_hk416", "arifle_mas_hk416_gl", "arifle_mas_hk416_m203", "arifle_mas_hk416_v", "arifle_mas_hk416_gl_v", 
"arifle_mas_hk416_m203_v", "arifle_mas_hk416_d", "arifle_mas_hk416_gl_d", "arifle_mas_hk416_m203_d", "arifle_mas_hk416c", 
"arifle_mas_hk416_m203c", "arifle_mas_hk416c_v", "arifle_mas_hk416_m203c_v", "arifle_mas_hk416c_d", "arifle_mas_hk416_m203c_d", 
"arifle_mas_hk417c", "arifle_mas_hk417_m203c", "arifle_mas_hk417c_v", "arifle_mas_hk417_m203c_v", 
"arifle_mas_hk417c_d", "arifle_mas_hk417_m203c_d", "arifle_mas_m4", "arifle_mas_m4_gl", "arifle_mas_m4_m203", "arifle_mas_m4_v",
"arifle_mas_m4_gl_v", "arifle_mas_m4_m203_v", "arifle_mas_m4_d", "arifle_mas_m4_gl_d", "arifle_mas_m4_m203_d", "arifle_mas_m4c", 
"arifle_mas_m4_m203c", "arifle_mas_m4_m203c_v", "arifle_mas_m4c_d", "arifle_mas_m4_m203c_d", "arifle_mas_m16", "arifle_mas_m16_gl", 
"arifle_mas_g3", "arifle_mas_g3s", "arifle_mas_g3s_m203", "arifle_mas_fal", "arifle_mas_fal_m203", "arifle_mas_m1014", 
"srifle_mas_hk417", "srifle_mas_hk417_d", "srifle_mas_sr25_v", "srifle_mas_sr25_d", "srifle_mas_ebr", "srifle_mas_m107", 
"srifle_mas_m107_v", "srifle_mas_m107_d", "srifle_mas_m24", "srifle_mas_m24_v", "srifle_mas_m24_d", "arifle_mas_mp5", "arifle_mas_mp5_v", 
"arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds", "LMG_mas_Mk200_F", "LMG_mas_M249_F", "LMG_mas_M249_F_v", "LMG_mas_M249_F_d", 
"LMG_mas_M249a_F", "LMG_mas_Mk48_F", "LMG_mas_Mk48_F_v", "LMG_mas_Mk48_F_d", "LMG_mas_M240_F", "LMG_mas_mg3_F", "mas_launch_Stinger_F",
"hgun_mas_m9_F", "hgun_mas_bhp_F", "hgun_mas_glock_F", 
"hgun_mas_m9_F_sd", "hgun_mas_bhp_F_sd", "hgun_mas_glock_F_sd", "hgun_mas_mak_F", "hgun_mas_mak_F_sd" ];


//Want to limit VAS to specific magazines? Place the classnames in the array!
vas_magazines = ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer","20Rnd_556x45_UW_mag","30Rnd_556x45_Stanag","200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box_Tracer"]; 

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
