class USA {
// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]	
// 'MERICA BlueFor Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them

//		Infantry Loadouts
//		PC			- Platoon Commander 
//		RTO 			- Radio Operator
//		SL 			- Squad Leader
//		MED 			- Medic
//		FTL			- Fire Team Leader
//		RIF 			- Rifleman
//		RAT			- Rifleman (AT)
//		GRE			- Grenadier
//		AR 			- Automatic Rifleman 
//		AT			- AT Specialist
//		ATA			- AT Assistant
//		WSL			- Weapons Squad Leader
//		MARK			- Marksman
//		SN			- Sniper
//		SP			- Spotter (for sniper)
//		MG			- Machine Gunner
//		MGA			- MG Assistant
//		VC			- Vehicle Commander 
//		VG			- Vehicle Gunner 
//		VD			- Vehicle Driver (repair) 
//		PIL			- Pilot / Co-Pilot 
//		CC			- Crew Chief (repair) 
//		AIRCR			- Air Vehicle Crew
//		ENG			- Engineer 
//		ENGDEMO			- Engineer (demo) 
//		ENGMINE			- Engineer (mines) 
//
//		Vehicle Cargo Loadouts
//		V_CAR		- car/4x4/jeep
//		V_TR		- truck
//		V_IFV		- ifv


//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define rifle "hlc_smg_MP5N"

//Attachments
#define mp5_suppressor "muzzle_snds_L"
#define ir_laser "rhsusf_acc_anpeq15A"

//Ammo
#define riflemag "hlc_30Rnd_9x19_B_MP5"
#define riflemag_tr "hlc_30Rnd_9x19_SD_MP5"

//Grenades
#define frag "HandGrenade"
#define stun "rhs_ammo_m84"
#define smokewhite "SmokeShell"
#define smokegreen "SmokeShellGreen"
#define smokered "SmokeShellRed"
#define flarered "ace_HandFlare_Red"
#define flaregreen "ace_HandFlare_Green"
#define flarewhite "ace_HandFlare_White"
#define flareyellow "ace_HandFlare_Yellow"


//=== MISC ===

//Chemical lights
#define chemblue "Chemlight_blue"

// ace equipment - what everyone should have
#define ace_default	{"ACE_fieldDressing",5}, \
					{"ace_Morphine",2}, \
					{"ace_EarBuds",1}

//Override for a Medic					
#define ace_medic	{"ACE_fieldDressing",20}, \
					{"ace_Morphine",10}, \
					{"ace_Epipen",10}, \
					{"ace_Bloodbag",3}, \
					{"ace_EarBuds",1}

//ace
#define ace_epipen "ace_Epipen" // For PC, SL, FTL
#define ace_sparebarrel "ace_SpareBarrel"
#define ace_defuse "ace_DefusalKit"
#define ace_firing_device "ace_Clacker"

//Double Misc
#define toolkit "ToolKit"
#define explosive "DemoCharge_Remote_Mag"
#define at_mine "ATMine_Range_Mag"
#define ap_mine "APERSBoundingMine_Range_Mag"
#define minedetector "MineDetector"
#define binoculars "ace_Vector"

//Radio 
#define long_range "tf_anprc152" //Long range - Short-wave
		
//=== Clothes ===

//Uniform		
#define default_uniform "TRYK_U_B_BLK"
	
//Headgear
#define default_headgear "TRYK_H_PASGT_BLK"

//Backpack
#define default_backpack "TRYK_B_Kitbag_blk"

//Vests
#define vest_default "RNR_Rys_m_KORA_black"

//Face
#define glasses "TRYK_kio_balaclava_BLK"

//=== EQUIPMENT ===
//MUST BE ONE LINE
#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_anprc152","ItemWatch","rhsusf_ANPVS_14" //With GPS

//================Rifleman==================
class RIF {
	weapons[] = {rifle};
	magazines[] = {	}; //do not use if using specific allocation of magazines
	backpack[] = {default_backpack};
		backpackMagazines[] = {
		};
		backpackItems[] = {
			ace_default,
			{flashlight,1},
			{chemblue,2},
			{frag,2}
		};
	headgear[] = {default_headgear};
	uniform[] = {default_uniform};
		uniformMagazines[] = {
			{riflemag,2}
		};
		uniformItems[] = {
		};
	goggles[] = {glasses};
	vest[] = {vest_default};
		vestMagazines[] = {
			{riflemag,7},
			{riflemag_tr,2},
		};
	assignedItems[] = {leader_equipment};
	items[] = {	}; //do not use if using specific allocation of items
	
	priKit[] = {mp5_suppressor,ir_laser,"rhsusf_acc_eotech_552"};
	secKit[] = {};
};
};