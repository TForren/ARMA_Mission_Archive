// F3 - Folk Assign Gear Script (Server-side)
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_faction","_typeofUnit","_unit"];

// ====================================================================================

// DETECT unit FACTION
// The following code detects what faction the unit's slot belongs to, and stores
// it in the private variable _faction

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;
_faction = toLower (faction _unit);

// ====================================================================================

// DECIDE IF THE SCRIPT SHOULD RUN
// Depending on locality the script decides if it should run

if !(local _unit) exitWith {};

// ====================================================================================

// SET A PUBLIC VARIABLE
// A public variable is set on the unit, indicating their type. This is mostly relevant for the F3 respawn component

_unit setVariable ["f_var_assignGear",_typeofUnit,true];

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS 2

private [
"_glrifle","_glriflemag","_glriflemag_tr","_glmag1","_glmag2",
"_glsmokewhite","_glsmokegreen","_glsmokered",
"_glflarewhite","_glflarered","_glflareyellow","_glflaregreen",
"_AR","_ARmag","_ARmag_tr",
"_MMG","_MMGmag","_MMGmag_tr",
"_HMG","_HMGmount",
"_RAT","_RATmag",
"_MAT","_MATmag1","_MATmag2",
"_HAT","_HATmag1","_HATmag2",
"_MTR","_MTRmount",
"_RAA","_RAAmag",
"_dmr","_dmrmag", "_dmrmag_tr",
"_SNrifle","_SNriflemag",
"_pistol","_pistolmag",
"_grenade","_smokegrenade","_smokegrenadegreen","_smokegrenadeblue","_smokegrenadered","_smokeGrenadePurple",
"_rifle","_riflemag","_riflemag_tr",
"_diverWep","_diverMag1","_diverMag2",
"_diverPistol","_diverPMag",
"_carbine","_carbinemag","_carbinemag_tr",
"_smg","_smgmag1","_smgmag2","_smgmag_tr",
"_bagsmall","_bagmedium","_baglarge",
"_ATmine1","_ATmine2","_satchel1","_satchel2","_APmine1","_APmine2",
"_medkit","_rifle_attach",
"_carbine_attach","_smg_attach",
"_glrifle_attach","_AR_attach",
"_MMG_attach","_SNrifle_attach"
,"_APmine", "_nvg",
"_chemgreen","_chemred","_chemblue","_chemyellow","_flashbang",
"_handFlareGreen","_handFlareRed","_handFlareWhite","_handFlareYellow",
"_bandage","_morphine","_epipen","_bloodBag","_cabletie","_defusalKit",
"_earBuds","_videoProbe","_M47Clacker","_M26Clacker","_mapTools","_spareBarrel","_IRStrobe",
"_kestrel","_vector",
"_riflemanRadio","_leaderRadio","_longRangeRadio",
"_bagEng","_bagMed","_bagDemo"
];

// ====================================================================================

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",false,true];

// ====================================================================================

// If the unitfaction is different from the group leader's faction and the unit is not a vehicle, the latters faction is used
if ((_unit isKindOF "CAManBase")&&(_faction != toLower (faction (leader group _unit)))) then {_faction = toLower (faction (leader group _unit))};

// DEBUG
if (f_var_debugMode == 1) then
{
	_unit sideChat format ["DEBUG (assignGear.sqf): unit faction: %1",_faction];
};

// ====================================================================================

// ====================================================================================

// GEAR: BLUFOR > NATO
// The following block of code executes only if the unit is in a NATO slot; it
// automatically includes a file which contains the appropriate equipment data.


if (_faction == "blu_f") then {
#include "f_assignGear_nato.sqf"
};


// ====================================================================================

// GEAR: OPFOR > CSAT
// The following block of code executes only if the unit is in a CSAT slot; it
// automatically includes a file which contains the appropriate equipment data.

if (_faction == "opf_f") then {
	#include "f_assignGear_csat.sqf"
};

// ====================================================================================

// GEAR: INDEPEDENT > AAF
// The following block of code executes only if the unit is in a AAF slot; it
// automatically includes a file which contains the appropriate equipment data.

if(_faction == "ind_f") then {
	#include "f_assignGear_aaf.sqf";
};

// ====================================================================================

// GEAR: FIA
// The following block of code executes only if the unit is in a FIA slot (any faction); it
// automatically includes a file which contains the appropriate equipment data.

if (_faction in ["blu_g_f","opf_g_f","ind_g_f"]) then {
	#include "f_assignGear_fia.sqf"
};

// ====================================================================================

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",true,true];

// DEBUG

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

if (isNil "_carbine") then { //_carbine should exist unless no faction has been called
	player globalchat format ["DEBUG (assignGear.sqf): Faction %1 is not defined.",_faction];
} else {
 	if (f_var_debugMode == 1) then	{
		player sideChat format ["DEBUG (assignGear.sqf): Gear for %1: %1 slot selected.",_unit,_faction,_typeofUnit];
	};
};

// ====================================================================================
