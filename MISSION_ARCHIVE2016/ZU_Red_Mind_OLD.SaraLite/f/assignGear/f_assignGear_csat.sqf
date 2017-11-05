// F3 - Folk Assign Gear Script - CSAT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman 
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner - NOPE
//		mmgag		- medium mg assistant - NOPE
//		matg		- medium AT gunner - NOPE
//		matag		- medium AT assistant  - Is the RAT Assistant
//		hmgg		- heavy mg gunner (deployable) - NOPE
//		hmgag		- heavy mg assistant (deployable) - NOPE
//		hatg		- heavy AT gunner (deployable) - NOPE
//		hatag		- heavy AT assistant (deployable) - NOPE
//		mtrg		- mortar gunner (deployable) - NOPE
//		mtrag		- mortar assistant (deployable) - NOPE
//		msamg		- medium SAM gunner - NOPE
//		msamag		- medium SAM assistant gunner - NOPE
//		hsamg		- heavy SAM gunner (deployable) - NOPE
//		hsamag		- heavy SAM assistant gunner (deployable) - NOPE
//		sn			- sniper - NOPE
//		sp			- spotter (for sniper) - NOPE
//		vc			- vehicle commander - NOPE
//		vg			- vehicle gunner - NOPE
//		vd			- vehicle driver (repair) - NOPE
//		pp			- air vehicle pilot / co-pilot - NOPE
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair) - NOPE
//		pc			- air vehicle crew - NOPE
//		eng			- engineer (demo) - NOPE
//		engm		- engineer (mines) - NOPE
//		uav			- UAV operator - NOPE
//		div    		- divers - NOPE
//
//		r 			- rifleman 
//		car			- carabineer
//		smg			- submachinegunner - NOPE
//		gren		- grenadier - NOPE
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "";	// IR Laser
_attach2 = "";	// Flashlight

_silencer1 = "rhs_acc_tgpa";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "rhs_acc_pkas";		// ACO
_scope2 = "rhs_acc_1p29";			// MRCO Scope - 1x - 6x
_scope3 = "rhs_acc_1p29";			// SOS Scope - 18x - 75x

// Default setup
_attachments = [_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_scope1,_silencer] = remove all, add items assigned in  _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// 9mm suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "rhs_weap_ak74m_2mag_camo";
_riflemag = "rhs_30Rnd_545x39_7N10_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green"; 

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_ak74m";
_carbinemag = "rhs_30Rnd_545x39_7N10_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner) - NOPE
_smg = "SMG_02_F"; 
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// Diver - NOPE
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25P";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Flares for FTLs, Squad Leaders, etc EDIT
_glflarewhite = "rhs_VG40OP_white";
_glflarered = "rhs_VG40OP_red";
_glflareyellow = "rhs_VG40OP_yellow";
_glflaregreen = "rhs_VG40OP_green";

// Grenades
_grenade = "rhs_mag_rgd5";
_Mgrenade = "rhs_mag_rgd5";
_smokegrenade = "rhs_mag_nspd";
_smokegrenadegreen = "rhs_mag_nspn_green";
_handFlareRed = "rhs_mag_nspn_red";
_handFlareGreen = "rhs_mag_nspn_green";
_handFlareWhite = "rhs_mag_nspn_red";
_handFlareYellow = "rhs_mag_nspn_yellow";

// misc medical items.
_bandage = "AGM_Bandage";
_morphine = "AGM_Morphine";
_epipen = "AGM_Epipen";
_bloodBag = "AGM_Bloodbag";

// misc gear.
_cabletie = "AGM_CableTie";
_DefusalKit = "AGM_DefusalKit";
_EarBuds = "AGM_EarBuds";
_VideoProbe = "MCC_videoProbe";		//Can look under doors. Good for CQB
_M47Clacker = "AGM_Clacker";		//Short range clacker
_M26Clacker = "AGM_M26_Clacker";	//Long range clacker
_mapTools = "AGM_MapTools";
_spareBarrel = "AGM_SpareBarrel";
_kestrel = "AGM_ItemKestrel";
_IRStrobe = "AGM_IR_Strobe_Item";

//Binocs
_Binocular = "Binocular";
_vector = "AGM_Vector";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles";

// UAV
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA
_uavBattery = "AGM_UAVBattery";

// Chemlights
_chemgreen =  "Chemlight_red";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_red";
_chemblue = "Chemlight_red";

// TFAR Radios
_riflemanRadio = "tf_fadak_1";
_leaderRadio = "tf_fadak_1";		
_longRangeRadio = "tf_rt1523g_big_rhs";	//backpack radio
_microdagr = "tf_microdagr";

// Backpacks
_bagsmall = "TRYK_B_Alicepack";			// carries 120, weighs 20
_bagmedium = "TRYK_B_Alicepack";			// carries 200, weighs 30
_baglarge =  "TRYK_B_Alicepack"; 			// carries 320, weighs 40

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_pkp";
_ARmag = "rhs_100Rnd_762x54mmR";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";

// Medium MG - NOPE
_MMG = "LMG_Zafir_F";
_MMGmag = "150Rnd_762x51_Box";
_MMGmag_tr = "150Rnd_762x51_Box_Tracer";

// Rifleman AT
_RAT = "rhs_weap_rpg18";
_RATmag = "rhs_rpg18_mag";

// Medium AT - NOPE
_MAT = "rhs_weap_rpg7_pgo";
_MATmag1 = "rhs_rpg7_PG7VL_mag";


// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// Who gets what vest?
_riflemen = ["r", "rat", "mmgag", "mmtag", "aar", "matg", "msamg", "msamag", "uav", "car", "smg", "dm"]; // ALl these people get the riflemen vest.
_squadLeaders = ["co", "dc", "ro"];
_teamLeaders = ["ftl"];
_grenadiers = ["gren"];
_engineers = ["eng", "engm"];
_autoRiflemen = ["ar", "mmgg"];
_medics = ["m"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_weaponCrew = ["hmgag", "hatg", "hatag", "hmgg", "mtrg", "mtrag", "hsamg", "hsamag", "hsamag"]; //Heavy weapon crew.
_ghillie = ["sn","sp"];
_specOp = [];

//Light stuff. 
_lightHeadwear = ["rhs_fieldcap_digi"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["rhs_uniform_flora"];
_baseHelmet = ["H_Watchcap_khk","H_Bandanna_khk_hs", "TRYK_H_EARMUFF", "ffaa_casco_hercules_piloto","H_Cap_headphones"];
_baseGlasses = ["G_Bandanna_khk","G_Bandanna_oli", "rhs_scarf"];

// Armored vests
_rigBasic = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigGrenadier = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigMedic = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigEngineer = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigRifleman = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigAutoRifleman = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset"];
_rigSquadLeader = ["rhs_6b23_digi_6sh92_headset_mapcase"];
_rigTeamLeader = ["rhs_6b23_digi_6sh92_headset_mapcase"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_cu_ocp"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["rhsusf_iotv_ocp"];
_pilotGlasses = ["G_Bandanna_tan"];

// Crewman
_crewUniform = ["rhs_uniform_cu_ocp"];
_crewHelmet = ["rhsusf_cvc_ess"];
_crewRig = ["rhsusf_iotv_ocp"];
_crewGlasses = ["G_Bandanna_khk"];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["U_B_SpecopsUniform_sgg"];
_sfhelmet = ["H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk"];
_sfRig = _mediumRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons and backpacks

	removeBackpack _unit;
	removeallweapons _unit;
	removeAllAssignedItems _unit;
	removeAllItems _unit;					// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
	
	// The following code removes any pre-added NVGs

	if(_nvg in (assignedItems _unit)) then
	{
		_unit unassignItem _nvg;
		_unit removeItem _nvg;
	};
	// uncomment to remove nvgoogles
	
//	_unit linkItem _nvg;					// add universal NVG for this faction

	//==========Anything you want everyone to have goes here============================
	/// I think this works?
	//uncomment what you want everyone to have
	//_unit linkItem "BWA3_ItemNaviPad"; 					// add gps to this faction
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem _riflemanRadio; 					//No one doesn't have a squad shortrange
	
//=======================================================================================
};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_csat_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;					//_COrifle
		_unit addWeapon _Binocular;
		_unit addItem _mapTools;
		_unit linkItem "BWA3_ItemNaviPad";
		["co"] call _backpack;
		_attachments = [_scope3];
		_hg_attachments = [_hg_flashlight];
	};

	// LOADOUT: RO/JTAC
	case "ro":
	{
		_unit addmagazines [_glriflemag,8];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _vector;
		_unit addItem _mapTools;
		_unit linkItem "BWA3_ItemNaviPad";
		["lr"] call _backpack;
		_attachments = [_scope3];
	};
	
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];	
		_unit addweapon _glrifle;
		_unit addWeapon _Binocular;
		_unit addItem _mapTools;
		_unit linkItem "BWA3_ItemNaviPad";
		["dc"] call _backpack;
		_attachments = [_scope3];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,8];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_smokegrenade,2]; // Add to vest? Need to test if that works in this context.
		_unit addmagazines [_smokegrenadeblue,2]; // Add to vest? Need to test if that works in this context.
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon _Binocular;
		_unit linkItem "BWA3_ItemNaviPad";
		_unit addItem _mapTools;
		["ftl"] call _backpack;
		_attachments = [_scope2];
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,1];
		_unit addweapon _AR;
		["ar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_riflemag,10];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		_attachments = [_scope1, _silencer1];
	};

// LOADOUT: DESIGNATED MARKSMEN
	case "dm":
	{
		_unit addmagazines [_dmrMag,6];
		_unit addmagazines [_dmrMag_tr,2];
		_unit addweapon _dmr;
		_unit addmagazines [_grenade,5];
		_unit addmagazines [_smokegrenade,2];
		["dm"] call _backpack;
		_attachments = [ _M14Scope];
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag1,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag1,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
	};
// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,6];
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================


// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;