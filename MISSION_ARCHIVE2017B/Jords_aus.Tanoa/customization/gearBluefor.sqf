// Info: Australia SAS 80s Loadout
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Infantry Loadouts
//PC - Platoon Commander
//SGT - Platoon Sgt.
//MED - Medic
//SL - Squad Leader
//FTL - Fire Team Leader
//SCO - Scout
//GRE - Grenadier
//AR - Autorifleman

                       


//========================Equipment Definitions========================
//=== Weapons ===
 
//Primary
#define B_rifle "UK3CB_BAF_L1A1"
#define B_glrifle "RH_M16A1gl"
#define B_ar "rhs_weap_m249"

#define B_sidearm "rhsusf_weap_m1911a1"
#define B_sidearm_mag "rhsusf_mag_7x45acp_MHP"
  
//Launcher
#define B_rat "rhs_weap_m72a7"
 
//Attachments
#define B_3x "UK3CB_BAF_SUIT"

//Ammo
#define B_riflemag "UK3CB_BAF_762_20Rnd"
#define B_riflemag_tr "UK3CB_BAF_762_20Rnd_T"
#define B_glriflemag "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define B_glriflemag_tr "rhs_mag_30Rnd_556x45_Mk318_Stanag"
#define B_armag "rhs_200rnd_556x45_M_SAW"
#define B_glhe "1Rnd_HE_Grenade_shell"
#define B_glflare "rhs_mag_M441_HE"
#define B_glsmoke "rhs_mag_m714_White"
#define B_glsmokered "1Rnd_SmokeRed_Grenade_shell"

//Grenades
#define B_frag "rhs_mag_m67"
#define B_stun "rhs_ammo_m84"
#define B_smokewhite "smokeshell"
#define B_smokegreen "smokeshellgreen"
#define B_smokered "rhs_mag_m713_Red"
#define B_flarered "ace_HandFlare_Red"
#define B_flaregreen "ace_HandFlare_Green"
#define B_flarewhite "ace_HandFlare_White"
#define B_flareyellow "ace_HandFlare_Yellow"

//=== MISC ===
                       
//Chemical lights
#define B_chemblue "Chemlight_blue"
#define B_chemgreen "Chemlight_green"
                       
// CE equipment - what everyone should have	
#define B_ace_default \
["ACE_quikclot",2,"uniform"] call FNC_AddItem; \
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem; \
["ACE_packingBandage",3,"uniform"] call FNC_AddItem; \
["ACE_morphine",1,"uniform"] call FNC_AddItem; \
["ACE_tourniquet",1,"uniform"] call FNC_AddItem; 

//ACE
#define Bandage "ACE_fieldDressing"
#define B_morphine "ACE_morphine"
#define B_epipen "ACE_epinephrine"
#define B_ace_sparebarrel "ACE_SpareBarrel"
#define B_ace_defuse "ACE_DefusalKit"
#define B_ace_firing_device "ACE_Clacker"
#define B_ace_cabletie "ACE_CableTie"
#define B_ace_wirecutters "ACE_wirecutter"
#define B_carkeys "ACE_key_west"
#define B_carpick "ACE_key_lockpick"
                       
//Double Misc
#define B_toolkit "ToolKit"
#define B_explosive "DemoCharge_Remote_Mag"
#define B_at_mine "ATMine_Range_Mag"
#define B_ap_mine "APERSBoundingMine_Range_Mag"
#define B_minedetector "MineDetector"
#define Binoculars "Binocular"

//=== Clothes ===
 
//Uniform              
#define B_default_uniform "rhsgref_uniform_tigerstripe"

//Vests
#define B_vest_default "UK3CB_BAF_V_PLCE_Webbing_OLI"

//Headgear
#define B_default_headgear "usm_bdu_boonie_tgrstp"

                       
//=== EQUIPMENT ===
#define B_leader_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;

#define B_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"] call FNC_AddItem;


	//Platoon
	
	//Platoon Commander
	case "B_PC": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		B_ace_default;

		//Vest
		[B_frag,2,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_sidearm_mag,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		
		[B_riflemag,1,"uniform"] call FNC_AddItem; 
		[B_sidearm_mag,1,"vest"] call FNC_AddItem; 
		
		//Attachments
		[B_3x] call FNC_AddItem;
	};
	
	//Platoon Sgt.
	case "B_SGT": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		B_ace_default;

		//Vest
		[B_frag,2,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_sidearm_mag,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		
		[B_riflemag,1,"uniform"] call FNC_AddItem; 
		[B_sidearm_mag,1,"vest"] call FNC_AddItem; 
		[B_3x] call FNC_AddItem;
	};
	
	//Platoon Medic
	case "B_MED": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_riflemag,1,"vest"] call FNC_AddItem;

		["ACE_elasticBandage",10,"vest"] call FNC_AddItem; 
		["ACE_packingBandage",10,"vest"] call FNC_AddItem; 
		["ACE_quikclot",10,"vest"] call FNC_AddItem; 
		["ACE_morphine",5,"vest"] call FNC_AddItem; 
		["ACE_epinephrine",5,"vest"] call FNC_AddItem; 
		["ACE_atropine",5,"vest"] call FNC_AddItem; 
		["ACE_salineIV_500",4,"vest"] call FNC_AddItem; 
		["ACE_plasmaIV_500",4,"vest"] call FNC_AddItem; 
		["ACE_personalAidKit",4,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;

		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
	};
	
	//Rifle and Weapons Squad Lead
	case "B_SL": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		B_ace_default;

		//Vest
		[B_frag,2,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		[B_sidearm_mag,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[B_sidearm] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		
		[B_riflemag,1,"uniform"] call FNC_AddItem; 
		[B_sidearm_mag,1,"vest"] call FNC_AddItem; 
	};
	
	//Rifle Squad
	
	//Fire Team Leader
	case "B_FTL": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		B_ace_default;

		//Vest
		[B_frag,2,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		
		[B_riflemag,1,"uniform"] call FNC_AddItem; 
	};
	
	//Scout
	case "B_SCO": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_riflemag,2,"uniform"] call FNC_AddItem;
		B_ace_default;

		//Vest
		[B_frag,2,"vest"] call FNC_AddItem;
		[B_smokewhite,1,"vest"] call FNC_AddItem;
		[B_riflemag,5,"vest"] call FNC_AddItem; 
		[B_riflemag_tr,2,"vest"] call FNC_AddItem; 
		
		//Assigned Items
		B_leader_equipment;
		
		//Weapons
		[B_rifle] call FNC_AddItem;
		[Binoculars] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		[B_3x] call FNC_AddItem;
		
		[B_riflemag,1,"uniform"] call FNC_AddItem; 
	};
	
	//Grenadier
	case "B_GRE": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		[B_glriflemag,2,"uniform"] call FNC_AddItem;
		
		B_ace_default;
		//[B_smokewhite,1,"uniform"] call FNC_AddItem;
		//[B_frag,1,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_glriflemag,4,"vest"] call FNC_AddItem; 
		[B_glriflemag_tr,2,"vest"] call FNC_AddItem; 

		[B_glhe,8,"vest"] call FNC_AddItem;
		[B_glsmoke,2,"vest"] call FNC_AddItem;
		[B_glsmokered,2,"vest"] call FNC_AddItem;
		
		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_glrifle] call FNC_AddItem;
		[B_rat] call FNC_AddItem;
		
		//Extra Mag
		[B_riflemag,1,"uniform"] call FNC_AddItem;
		[B_glhe,1,"vest"] call FNC_AddItem;
	};
	
	//Autorifleman
	case "B_AR": {
		[B_default_headgear] call FNC_AddItem;
		[B_default_uniform] call FNC_AddItem;
		[B_vest_default] call FNC_AddItem;
		
		//Uniform
		B_ace_default;
		[B_smokewhite,1,"uniform"] call FNC_AddItem;
		[B_frag,2,"uniform"] call FNC_AddItem;
		
		//Vest
		[B_armag,3,"vest"] call FNC_AddItem;

		//Assigned Items
		B_default_equipment;
		
		//Weapons
		[B_ar] call FNC_AddItem;
		
		//Extra Mag
		[B_armag,1,"vest"] call FNC_AddItem; 
	};