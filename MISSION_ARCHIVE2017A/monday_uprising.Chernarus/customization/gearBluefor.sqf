// Info: Civ Rebels (Russian) - SPECIAL LOADOUT
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom
// - If you want non-motorised squad, just replace the Vehicle Gunner and Driver with 2 Grenadiers/Rifleman

//Infantry Loadouts
//I_CIV - Civ
//I_CIV_AB - Civ Ammo Bearer

//=== Weapons ===
 
// Primary

//The Mosin
#define O_mosin "rhs_weap_m38"
#define O_mosinmag "rhsgref_5Rnd_762x54_m38"
 
// Secondary - maybe
#define O_sidearm "rhs_weap_makarov_pm"
#define O_samag "rhs_mag_9x18_8_57N181S"

// CE equipment - what everyone should have
//["MOLOTOV_MAG",1,"uniform"] call FNC_AddItem;
#define O_ace_default \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
//=== Clothes ===

//Uniform              
#define O_default_uniform_r "rds_uniform_Worker1","rds_uniform_Worker2","rds_uniform_Worker3","rds_uniform_Worker4","rds_uniform_Woodlander1","rds_uniform_Woodlander2","rds_uniform_Woodlander3","rds_uniform_Woodlander4","rds_uniform_Villager1","rds_uniform_Villager2","rds_uniform_Villager3","rds_uniform_Villager4","rds_uniform_Rocker1","rds_uniform_Rocker2","rds_uniform_Rocker3","rds_uniform_Rocker4","rds_uniform_Profiteer1","rds_uniform_Profiteer2","rds_uniform_Profiteer3","rds_uniform_Profiteer4","rds_uniform_citizen1","rds_uniform_citizen2","rds_uniform_citizen3","rds_uniform_citizen4"

//
#define O_headgear_r "rds_worker_cap1","rds_worker_cap2","rds_worker_cap3","rds_worker_cap4","rds_Villager_cap1","rds_Villager_cap2","rds_Villager_cap3","rds_Villager_cap4","rds_Woodlander_cap1","rds_Woodlander_cap2","rds_Woodlander_cap3","rds_Woodlander_cap4","rds_Profiteer_cap1","rds_Profiteer_cap2","rds_Profiteer_cap3","rds_Profiteer_cap4"
 
//Backpack
#define O_default_backpack "rhs_sidor"


	//Angry Mob - minus the AK47s
	case "I_CIV": {
		[O_default_uniform_r] call FNC_AddItemRandom;  
		[O_headgear_r] call FNC_AddItemRandom;
		
		[O_mosinmag,1,"uniform"] call FNC_AddItem;
		[O_mosin] call FNC_AddItem;
		
		O_ace_default 
		[O_mosinmag,1,"uniform"] call FNC_AddItem;
		
		//Assigned Items
        
		[
       
        [
		["ItemMap"],
		["ItemCompass"]
        ],[70],
       
        [
        ["ItemMap"],
		["ItemCompass"],
		["ItemWatch"]
        ],[25],
		
        [
        ["ItemMap"]
        ],[5]
               
        ] call FNC_AddItemRandomPercent;
		
	};
	
	case "I_CIV_AB": {
		[O_default_uniform_r] call FNC_AddItemRandom;  
		[O_headgear_r] call FNC_AddItemRandom;
		[O_default_backpack] call FNC_AddItem;
		
		[O_mosinmag,1,"uniform"] call FNC_AddItem;
		[O_mosin] call FNC_AddItem;
		
		O_ace_default 
		[O_mosinmag,1,"uniform"] call FNC_AddItem;
		
		[O_mosinmag,12,"backpack"] call FNC_AddItem;
		//Assigned Items
        
		[
       
        [
		["ItemMap"],
		["ItemCompass"]
        ],[70],
       
        [
        ["ItemMap"],
		["ItemCompass"],
		["ItemWatch"]
        ],[25],
		
        [
        ["ItemMap"]
        ],[5]
               
        ] call FNC_AddItemRandomPercent;
		
	};