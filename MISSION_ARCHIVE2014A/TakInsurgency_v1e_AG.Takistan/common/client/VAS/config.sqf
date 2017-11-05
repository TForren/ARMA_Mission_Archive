//Allow player to respawn with his loadout? If true unit will respawn with all ammo from initial save! Set to false to disable this and rely on other scripts!
vas_onRespawn = true;
//Preload Weapon Config?
vas_preload = true;
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
	vas_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
	vas_magazines = ["CAF_100Rnd_762x54_PKM","caf_10Rnd_762x54_SVD","CAF_30Rnd_545x39_AK","CAF_30Rnd_762x39_AK","CAF_75rnd_545x39_RPK","caf_AA_rocket","caf_OG7","caf_PG7V"];
	vas_items = ["ItemMap","ItemGPS","NVGoggles"];
	vas_backpacks = ["B_Bergen_sgg_Exp","B_AssaultPack_rgr_Medic"];
	vas_goggles = [""];				

												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

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


/*
	NOTES ON EDITING:
	THIS IS THE SAME AS THE ABOVE VARIABLES, YOU NEED TO KNOW THE CLASS NAME OF THE ITEM YOU ARE RESTRICTING. THIS DOES NOT WORK IN 
	CONJUNCTION WITH THE ABOVE METHOD, THIs IS ONLY FOR RESTRICTING / LIMITING ITEMS FROM VAS AND NOTHING MORE
	
														EXAMPLE
	vas_r_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
	vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
	vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
	
												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_r_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_r_weapons = ["caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//Below are variables you can use to restrict certain items from being used.
//Remove Weapon
vas_r_weapons = ["hgun_Pistol_Signal_F","caf_AK47","caf_AK74","caf_ak74gl","caf_pkm","caf_rpg7","caf_rpk74","caf_Strela","caf_svd"];
vas_r_backpacks = [];
//Magazines to remove from VAS
vas_r_magazines = ["FlareGreen_F","FlareRed_F","FlareWhite_F","FlareYellow_F","O_IR_Grenade","I_IR_Grenade","CAF_100Rnd_762x54_PKM","caf_10Rnd_762x54_SVD","CAF_30Rnd_545x39_AK","CAF_30Rnd_762x39_AK","CAF_75rnd_545x39_RPK","caf_AA_rocket","caf_OG7","caf_PG7V"];
//Items to remove from VAS
vas_r_items = ["ASDG_Atlis_Bipod_Base","ASDG_Atlis_ABR_D","ASDG_Atlis_ABR_S","ASDG_Atlis_Katiba_D","ASDG_Atlis_Katiba_S","ASDG_Atlis_MK20_D","ASDG_Atlis_MK20_S","ASDG_Atlis_MX_D","ASDG_Atlis_MX_S","ASDG_Atlis_MXM_D","ASDG_Atlis_MXM_S","ASDG_Atlis_Rahim_D","ASDG_Atlis_Rahim_S","ASDG_Atlis_TRG21_D","ASDG_Atlis_TRG21_S"];
//Goggles to remove from VAS
vas_r_glasses = [];
