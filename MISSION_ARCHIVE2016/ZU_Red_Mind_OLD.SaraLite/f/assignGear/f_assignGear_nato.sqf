// F3 - Folk Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		ro			- Radio Operator / JTAC
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//		dm			- Designated Marksmen
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY =========== VARIABLES DO NOT NEED TO BE INITIALIZED (APPARENTLY) ADD FREELY
_attach1 = "FHQ_acc_ANPEQ15_black";	// IR Laser
_attach2 = "FHQ_acc_LLM01F";		// Flashlight

_silencer1 = "muzzle_snds_H";		// M4 suppressor
_silencer2 = "hlc_muzzle_snds_M14";	// M249 Supressor

_scope1 = "FHQ_optic_HWS";				// Holosight
_scope2 = "FHQ_optic_HWS_G33";			//EOTech with 4x flip-up optic
_scope3 = "rhsusf_acc_ACOG3";			// MRCO Scope - 1x - 6x
_scope4 = "rhsusf_acc_LEUPOLDMK4";		// SOS Scope - 18x - 75x

//AR/MG Optics
_scope5 = "rhsusf_acc_compm4"; 			//Aimpoint for m249
_scope6 = "BWA3_optic_24x72";			//Elcan for M240


//FACTION SPECIFICS:  This should be the only thing that is different across all factions
_M14Scope = "hlc_optic_LRT_m14";

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";			// .45 suppressor
_hg_silencer2 = "BWA3_muzzle_snds_MP7";		// Only works for mp7
_hg_flashlight = "BWA3_acc_LLM01_flash";	// Flashlight
_hg_laser = "acc_pointer_IR"; 				//Only works for mp7

_hg_scope1 = "optic_MRD";			// MRD
_hg_scope2 = "BWA3_optic_RSAS"; 	//Diver Mp7
// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================
//=============================== WEAPON SELECTION=====================================
// =======VARIABLES MUST BE INITIALIZED IN fn_assignGear.sqf TO BE USED ON SERVER======
//=====================================================================================
// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "rhs_weap_m16a4_carryhandle";
_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifleMag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Standard Carabineer Weapon (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_m4_carryhandle";
_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbineMag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "hlc_smg_mp5n";
_smgMag1 = "hlc_30Rnd_9x19_B_MP5"; // Ball
_smgMag2 = "hlc_30Rnd_9x19_GD_MP5"; // Hollow Point
_smgMag_tr = "30Rnd_45ACP_Mag_SMG_01_tracer_green";

// Diver Weapon
_diverWep = "hlc_smg_mp5sd6";
_diverPistol = "BWA3_MP7";
_diverPMag = "BWA3_40Rnd_46x30_MP7";
_diverMag1 = "hlc_30Rnd_9x19_SD_MP5";
_diverMag2 = "hlc_30Rnd_9x19_GD_MP5";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glRifle = "rhs_m4a1_m320";
_glRifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glRifleMag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag1 = "rhs_mag_M441_HE";
_glmag2 = "rhs_mag_M433_HEDP";

// Smoke for FTLs, Squad Leaders, Launchers
_glSmokeWhite = "rhs_mag_M714_white";
_glSmokeGreen = "rhs_mag_M715_green";
_glSmokeRed = "rhs_mag_M713_red";
_glSmokeYellow = "rhs_mag_M716_yellow";

// Flares for FTLs, Squad Leaders, Launchers
_glFlareWhite = "rhs_mag_M585_white";
_glFlareRed = "rhs_mag_M662_red";
_glFlareGreen = "rhs_mag_M661_green";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "BWA3_P8";
_pistolMag = "BWA3_15Rnd_9x19_P8";

// Grenades
_grenade = "HandGrenade";
_mGrenade = "MiniGrenade";
_smokeGrenade = "SmokeShell";
_smokeGrenadeGreen = "SmokeShellGreen";
_smokeGrenadeBlue = "SmokeShellBlue";
_smokeGrenadeRed = "SmokeShellRed";
_smokeGrenadeRed = "SmokeShellpurple";
_flashBang = "AGM_M84";

//Hand Flares
_handFlareRed = "AGM_HandFlare_Red";
_handFlareGreen = "AGM_HandFlare_Green";
_handFlareWhite = "AGM_HandFlare_White";
_handFlareYellow = "AGM_HandFlare_Yellow";

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
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// TFAR Radios
_riflemanRadio = "tf_rf7800str";
_leaderRadio = "tf_anprc152";		
_longRangeRadio = "tf_rt1523g_big_rhs";	//backpack radio
_microdagr = "tf_microdagr";

// Backpacks
_bagsmall = "B_AssaultPack_cbr";		
_bagmedium = "rhsusf_assault_eagleaiii_ocp";
_baglarge =  "TRYK_B_Coyotebackpack";
_bagEng = "rhsusf_assault_eagleaiii_ocp_engineer";	// used by engineers
_bagMed = "TRYK_B_Medbag"; 	// used by medic  /rhsusf_assault_eagleaiii_ocp_medic
_bagDemo = "rhsusf_assault_eagleaiii_ocp_demo"; 	// used by demo specialist

_thorBackpack =  "EODS_THORIII_OCP";

_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner


// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT
// What weapon would each of these role have? 

// Automatic Rifleman weapon
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium MG weapon
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51";

// Rifleman AT weapon
_RAT = "rhs_weap_M136";
_RATmag = "rhs_m136_mag";

// Medium AT weapon
_MAT = "rhs_weap_fgm148";
_MATmag1 = "rhs_fgm148_magazine_AT";
_MATmag2 = "NLAW_F";

// Surface Air weapon
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

//Marksman's Weapon
_dmr = "hlc_rifle_M21";
_dmrMag = "hlc_20Rnd_762x51_B_M14";
_dmrMag_tr = "hlc_20Rnd_762x51_T_M14";

// Sniper's weapon
_SNrifle = "BWA3_G82";
_SNrifleMag = "BWA3_10Rnd_127x99_G82";

// Engineer items
_ATmine1 = "ATMine_Range_Mag";
_ATmine2 = "SLAMDirectionalMine_Wire_Mag";
_satchel1 = "DemoCharge_Remote_Mag";
_satchel2 = "SatchelCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

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
_lightHeadwear = ["rhsusf_patrolcap_ocp", "rhs_Booniehat_ocp"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_bare_tan", "rhsusf_ach_helmet_ocp", "rhsusf_ach_helmet_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_headset_ess_ocp"];
_baseGlasses = ["BWA3_G_Combat_Orange", "BWA3_G_Combat_Clear", "BWA3_G_Combat_Black"];

// Armored vests
_rigBasic = ["rhsusf_iotv_ocp"];
_rigGrenadier = ["rhsusf_iotv_ocp_grenadier"];
_rigMedic = ["rhsusf_iotv_ocp_medic"];
_rigEngineer = ["rhsusf_iotv_ocp_repair"];
_rigRifleman = ["rhsusf_iotv_ocp_rifleman"];
_rigAutoRifleman = ["rhsusf_iotv_ocp_SAW"];
_rigSquadLeader = ["rhsusf_iotv_ocp_squadleader"];
_rigTeamLeader = ["rhsusf_iotv_ocp_teamleader"];

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
_ghillieUniform = ["BWA3_Uniform_Ghillie_Tropen"];
_ghillieHelmet = [];
_ghillieRig = ["V_BandollierB_cbr"];
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
	//_unit linkItem "ItemGPS"; 			// add gps to this faction
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem _riflemanRadio; 			//No one doesn't have a squad shortrange
	
//=======================================================================================
};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_b.sqf";
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
		_unit addmagazines [_pistolmag,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;					//_COrifle
		_unit addweapon _pistol;
		_unit addWeapon _Binocular;
		_unit addItem _mapTools;
		_unit linkItem "ItemGPS";
		["co"] call _backpack;
		_attachments = [_attach1,_scope3];
		_hg_attachments = [_hg_flashlight];
	};

	// LOADOUT: RO/JTAC
	case "ro":
	{
		_unit addmagazines [_carbinemag,8];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _vector;
		_unit addItem _mapTools;
		_unit linkItem "ItemGPS";
		_unit addBackpack _longRangeRadio;
		_attachments = [_attach1,_scope1];
		_hg_attachments = [_hg_flashlight];
	};
	
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];	
		_unit addweapon _glrifle;
		_unit addWeapon _Binocular;
		_unit addItem _mapTools;
		_unit linkItem "ItemGPS";
		["dc"] call _backpack;
		_attachments = [_attach1,_scope3];
		_hg_attachments = [_hg_flashlight];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,8];
		_unit addweapon _carbine;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_smokegrenade,2]; // Add to vest? Need to test if that works in this context.
		_unit addmagazines [_smokegrenadeblue,2]; // Add to vest? Need to test if that works in this context.
		["m"] call _backpack;
		_hg_attachments = [_hg_flashlight];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon _Binocular;
		_unit linkItem "ItemGPS";
		_unit addItem _mapTools;
		["ftl"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,5];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["ar"] call _backpack;
		_attachments = [_attach1,_scope5];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,10];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
	};

// LOADOUT: DESIGNATED MARKSMEN
	case "dm":
	{
		_unit addmagazines [_dmrMag,6];
		_unit addmagazines [_dmrMag_tr,2];
		_unit addweapon _dmr;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["dm"] call _backpack;
		_attachments = [_attach1, _M14Scope];
	};
	
// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_MMGmag,5];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,4];
		_unit addweapon _MMG;
		["mmg"] call _backpack;
		_attachments = [_attach1,_scope6];
		_hg_attachments = [_hg_flashlight];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,10];
		_unit addweapon _rifle;
		_unit addWeapon _vector;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
	};
	
// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon _vector;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
	};
	
// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];
		_unit addweapon _SAM;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon _vector;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["msamag"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,5];
		_unit addweapon _SNrifle;
		_unit additem _bandage;
		_unit additem _bandage;
		_unit additem _morphine;
		_unit additem _epipen;
		_unit additem _EarBuds;
		_attachments = [_scope6];
		_unit linkItem "ItemGPS";

	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_dmrMag,3];
		_unit addmagazines [_dmrMag_tr,2];
		_unit addweapon _dmr;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _vector;
		_unit linkItem "ItemGPS";
		_unit linkItem _mapTools;
		_unit additem _bandage;
		_unit additem _bandage;
		_unit additem _morphine;
		_unit additem _epipen;
		_unit additem _kestrel;
			_unit additem _EarBuds;
		_unit addBackpack _longRangeRadio;
		_attachments = [_M14Scope, _silencer2];
		_hg_attachments = [_hg_flashlight];
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon _vector;
		_attachments = [];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
		_attachments = [];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		["cc"] call _backpack;
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokeGrenadeRed,1];
		_unit addmagazines [_smokeGrenadegreen,1];
		_unit addmagazines [_smokegrenadeblue,1];
		_unit addmagazines [_smokeGrenadePurple,1];
		_unit addmagazines [_chemblue,1];
		_attachments = [];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_satchel1,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag1,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		_hg_attachments = [_hg_flashlight];
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_diverPMag,3];
		_unit addweapon _diverPistol;
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,1];
		_attachments = [];
		_hg_attachments = [_hg_scope2, _hg_laser, _hg_silencer2];
		["div"] call _backpack;
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
		_unit addMagazineCargoGlobal [_flashBang, 4];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag1, 4];
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
		_unit addBackpackCargoGLobal ["APOBS_A", 4];
		_unit addBackpackCargoGLobal ["APOBS_B", 4];
		_unit addItemCargoGlobal [_M47Clacker, 4];
		_unit addItemCargoGlobal [_DefusalKit, 4];
		_unit addItemCargoGlobal [_satchel1, 4];
		_unit addItemCargoGlobal [_satchel2, 4];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
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
		_unit addMagazineCargoGlobal [_glmag1, 8];
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