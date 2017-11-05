// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.
// called from the role loadouts.
// BACKPACK: MEDIC================So this is how F3 was doing Backpacks originally. Unless you know what you're up to you shouldn't
//case "m":=======================Need to worry about these comments. Proceed.
//{
	// BACKPACK: LIGHT
//	if (f_param_backpacks <= 1) then { 	
//		clearMagazineCargoGlobal (unitBackpack _unit);
//		(unitBackpack _unit) addItemCargoGlobal [_bandage, 20];
//		(unitBackpack _unit) addItemCargoGlobal [_epipen, 10];
//		(unitBackpack _unit) addItemCargoGlobal [_morphine, 10];
//		(unitBackpack _unit) addItemCargoGlobal [_bloodbag, 4];
//	};	
	// BACKPACK: HEAVY
//	if (f_param_backpacks == 2) then {
//		_unit addBackpack _bagMed;
//		clearMagazineCargoGlobal (unitBackpack _unit);
//		(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
//		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 6];
//		(unitBackpack _unit) addItemCargoGlobal [_firstaid, 12];
//	};
//};

// BACKPACK: LONG RANGE RADIO
case "lr":
{
		_unit addBackpack _longRangeRadio;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_glmag1, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glmag2, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glFlareRed, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glSmokeRed, 6];
		(unitBackpack _unit) addItemCargoGlobal [_glSmokeGreen, 6];
};

// BACKPACK: CO
case "co":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_IRStrobe, 1];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_leaderRadio, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glmag2, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glFlareRed, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glSmokeRed, 3];
		(unitBackpack _unit) addItemCargoGlobal [_glSmokeGreen, 3];
		(unitBackpack _unit) addItemCargoGlobal [_glSmokeWhite, 3];
		(unitBackpack _unit) addItemCargoGlobal [_glmag1, 2];
};

// BACKPACK: DEPUTY COMMANDER / SQUAD LEADER

case "dc":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glmag1, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glmag2, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glFlareRed, 4];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: FIRE TEAM LEADER

case "ftl":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glmag1, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glmag2, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glFlareRed, 4];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: MEDIC
case "m":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 20];
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 10];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 10];
		(unitBackpack _unit) addItemCargoGlobal [_bloodbag, 3];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: GRENADIER G
case "g":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_glFlareWhite, 10];
		(unitBackpack _unit) addItemCargoGlobal [_glmag1, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 2];
};

// BACKPACK: AR
case "ar":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_spareBarrel, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
};

// BACKPACK: AAR
case "aar":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_spareBarrel, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
};

// BACKPACK: DESIGNATED MARKSMEN (DM)
case "dm":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_dmrMag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_dmrMag_tr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
};

// BACKPACK: CARABINEER (CAR)
case "car":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: MMG GUNNER (MMG)
case "mmg":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_spareBarrel, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_spareBarrel, 1];
		(unitBackpack _unit) addItemCargoGlobal [_attach2, 1];
		(unitBackpack _unit) addItemCargoGlobal [_handFlareRed, 2];
		(unitBackpack _unit) addItemCargoGlobal [_chemblue, 1];
		(unitBackpack _unit) addItemCargoGlobal [_mmgMag, 4];
};

// BACKPACK: HEAVY MG GUNNER (HMGG)
case "hmgg":
{
	_unit addBackpack _baghmgg;
};

// BACKPACK: HEAVY MG ASSISTANT GUNNER (HMGAG)
case "hmgag":
{
	_unit addBackpack _baghmgag;
};

// BACKPACK: MAT GUNNER (MATG)
case "matg":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
{
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
};

// BACKPACK: HEAVY AT GUNNER (HATG)
case "hatg":
{
	_unit addBackpack _baghatg;
};

// BACKPACK: HEAVY AT ASSISTANT GUNNER (HATAG)
case "hatag":
{
	_unit addBackpack _baghatag;
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
	_unit addBackpack _bagmtrg;
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
	_unit addBackpack _bagmtrag;
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
	(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
	(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: HEAVY SAM GUNNER (HSAMG)
case "hsamg":
{
	_unit addBackpack _baghsamg;
};

// BACKPACK: HEAVY SAM ASSISTANT GUNNER (HSAMAG)
case "hsamag":
{
	_unit addBackpack _baghsamag;
};

// BACKPACK: ENGINEER (DEMO)
case "eng":
{
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_Defusalkit,1];
		(unitBackpack _unit) addItemCargoGlobal [_M47Clacker,1];
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel1,2];
		(unitBackpack _unit) addItemCargoGlobal [_satchel2,1];
};

// BACKPACK: ENGINEER (MINES)
case "engm":
{
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_Defusalkit,1];
		(unitBackpack _unit) addItemCargoGlobal [_M47Clacker,1];
		(unitBackpack _unit) addItemCargoGlobal	[_ATMine2,2];
		(unitBackpack _unit) addItemCargoGlobal	[_APMine1,2];
		(unitBackpack _unit) addItemCargoGlobal	[_APMine2,2];
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_handFlareRed, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
		(unitBackpack _unit) addItemCargoGlobal [_cabletie, 3];
};

// BACKPACK: DIVER (DIV)
case "div":
{
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
		(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
		(unitBackpack _unit) addItemCargoGlobal [_satchel1, 2];
		(unitBackpack _unit) addItemCargoGlobal [_APMine1, 3];
		(unitBackpack _unit) addItemCargoGlobal [_EarBuds, 1];
		(unitBackpack _unit) addItemCargoGlobal [_M47Clacker,1];
		(unitBackpack _unit) addItemCargoGlobal [_Defusalkit,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
};

// BACKPACK: UAV
case "uav":
{
	_unit addBackpack _baguav;
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagsmall;
	(unitBackpack _unit) addItemCargoGlobal [_epipen, 1];
	(unitBackpack _unit) addItemCargoGlobal [_morphine, 1];
	(unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
};