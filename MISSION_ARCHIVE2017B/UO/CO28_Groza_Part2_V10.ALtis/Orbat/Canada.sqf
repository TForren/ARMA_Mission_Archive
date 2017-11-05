private ["_type", "_unit"];

_type = _this select 0;
_unit = _this select 1;
if (!local _unit) exitWith {};

removeallweapons _unit;
removeAllAssignedItems _unit;
_unit addWeapon "ItemMap";
_unit addWeapon "ItemRadio";
_unit addWeapon "ItemCompass";
_unit addWeapon "ItemWatch";
_unit addItemToUniform "ACE_personalAidKit";
_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_packingBandage";
_unit addItemToUniform "ACE_packingBandage";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
switch(_type) do
{
	case "SL": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",8];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue",1];

		_unit addWeapon "binocular";

		_unit addWeapon "tb_arifle_mk21";
		_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "2IC": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",8];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "RIFLE": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",8];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";

		_unit addMagazine "rhs_m136_mag";
		_unit addWeapon "rhs_weap_M136";
	};

	case "GREN": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",8];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5];

		_unit addWeapon "tb_arifle_mk21_m203";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "LMG": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",1];

		_unit addWeapon "rhs_weap_m249_pip";
			_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";


		_unit addWeapon "hgun_P07_F";
	};


	case "PL": 
	{
		_unit linkItem "ItemGPS";

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue",1];

		_unit addWeapon "binocular";

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "ASL": 
	{
		_unit linkItem "ItemGPS";

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue",1];


		_unit addWeapon "rangefinder";

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "SIG": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";

		_unit addWeapon "hgun_P07_F";
	};

	case "MED": 
	{
		removeBackpack _unit;
		_unit addBackpack "tin_backpack_caf_carryall_tw_medic";
		clearAllItemsFromBackpack _unit;

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",4];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellPurple",2];

		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing",30];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage",30];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage",30];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet",5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine",15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine",15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_salineIV", 10];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit",10];

		_unit addWeapon "tb_arifle_mk21";

		_unit addWeapon "hgun_P07_F";
	};


	case "WDC": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
		_unit addWeapon "binocular";
		_unit addWeapon "tb_arifle_mk21";
		_unit addPrimaryWeaponItem "tb_acc_c79";
		_unit addWeapon "hgun_P07_F";
	};

	case "WD2IC": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["tb_mk13_hedp",1];

		_unit addWeapon "binocular";

		_unit addWeapon "tb_arifle_mk21_m203";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};

	case "GPMG": 
	{
		removeBackpack _unit;

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",4];

		_unit addWeapon "rhs_weap_m240B";
			_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";


		_unit addWeapon "hgun_P07_F";
	};

	case "aGPMG": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",5];

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";

		_unit addWeapon "hgun_P07_F";
	};

	case "AT": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["tb_mk13_heat",1];

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";

		_unit addMagazine "tb_mk13_heat";
		_unit addWeapon "tb_launcher_mk13";

		_unit addWeapon "hgun_P07_F";
	};

	case "AssAT": 
	{
		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];

		(unitBackpack _unit) addMagazineCargoGlobal ["tb_mk13_heat",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["tb_mk13_hedp",2];

			_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};


	case "OC": 
	{
		_unit linkItem "ItemGPS";

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",4];

		(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];

		_unit addWeapon "binocular";

		_unit addWeapon "tb_arifle_mk21";

		_unit addWeapon "hgun_P07_F";
	};

	case "FOO": {
		_unit linkItem "ItemGPS";

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];
		(vestContainer _unit) addMagazineCargoGlobal ["Laserbatteries",1];

		(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue",1];
		(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F",1];

		_unit addWeapon "Laserdesignator";

		_unit addWeapon "tb_arifle_mk21";
			_unit addPrimaryWeaponItem "tb_acc_c79";


		_unit addWeapon "hgun_P07_F";
	};


	case "CREWC": {
		_unit linkItem "ItemGPS";

		removeBackpack _unit;

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",4];

		_unit addWeapon "binocular";

		_unit addWeapon "tb_arifle_mk21c";

		_unit addWeapon "hgun_P07_F";
	};

	case "CREW": {
		_unit linkItem "ItemGPS";

		removeBackpack _unit;

		(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",3];

		(vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
		(vestContainer _unit) addItemCargoGlobal ["ToolKit",1];
		(vestContainer _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",4];

		_unit addWeapon "tb_arifle_mk21c";

		_unit addWeapon "hgun_P07_F";
	};

};
