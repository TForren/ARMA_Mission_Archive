private ["_type","_unit"];

_type = _this select 0;
_unit = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeAllAssignedItems _unit;
clearAllItemsFromBackpack _unit;
removeAllContainers _unit;
removeHeadgear _unit;

_hgSelection = ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ess_ucp"];
_headgear = _hgSelection select floor random count _hgSelection;

_m4Selection = ["rhs_weap_m4"];
_m4Weapon = _m4Selection select floor random count _m4Selection;

_unit addHeadgear _headgear;
_unit addUniform "rhs_uniform_cu_ucp_101st";

(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];


_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMap";
_unit linkItem "ACE_EarPlugs";
_unit addItem "ACRE_PRC343";

switch (_type) do {
	case "PL":
	{
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

		_unit addWeapon "hgun_P07_F";

		_unit addItem "ACRE_PRC148";
		_unit addWeapon "Rangefinder";
		_unit linkItem "ACE_EarPlugs";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "SL":
	{
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";


		_unit addItem "ACRE_PRC148";
		_unit addWeapon "Binocular";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "RTO":
	{
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		_unit addBackpack "UKAF_PackCom";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

		_unit addItem "ACRE_PRC117F";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

	};

	case "MEDIC":
	{
		_unit addVest "rhsusf_iotv_ucp_medic";
		_unit addBackpack "B_Carryall_oli";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";


		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellGreen",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_bloodIV", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 5];
	};

	case "TL":
	{
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
		_unit addWeapon "rhs_weap_M136_hedp";

		_unit addWeapon "Binocular";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "AR":
	{
		_unit addVest "rhsusf_iotv_ucp_SAW";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon "rhs_weap_m249_pip_L_para";


		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit)addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "GREN":
	{
		_unit addVest "rhsusf_iotv_ucp_grenadier";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon "rhs_weap_m4_m203";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";


		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_M713_red",7];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "RFL":
	{
		_unit addVest "rhsusf_iotv_ucp_rifleman";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

		_unit addWeapon "rhs_weap_M136_hedp";


		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_m136_hedp_mag",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "MG":
	{
		_unit addVest "rhsusf_iotv_ucp_SAW";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon "rhs_weap_m240B_CAP";


		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_50Rnd_762x51",4];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		
		
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_50Rnd_762x51",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "AMG":
	{
		_unit addVest "rhsusf_iotv_ucp_rifleman";
		_unit addBackpack "B_Carryall_oli";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";


		_unit addWeapon "Binocular";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];


		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_50Rnd_762x51",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "AT":
	{
		_unit addVest "rhsusf_iotv_ucp_rifleman";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

		_unit addWeapon "rhs_weap_fgm148";


		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};

	case "AAT":
	{
		_unit addVest "rhsusf_iotv_ucp_rifleman";
		_unit addBackpack "B_Carryall_oli";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";


		_unit addWeapon "Binocular";

		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];

	};
	
	case "AA":
	{
		_unit addVest "rhsusf_iotv_ucp_rifleman";
		_unit addBackpack "rhsusf_assault_eagleaiii_ucp";

		_unit addWeapon _m4Weapon;
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			
		_unit addWeapon "rhs_weap_fim92";


		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue",2];
		(vestContainer _unit) addItemCargoGlobal ["ACE_Sandbag_empty",3];

		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_fim92_mag",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_15",1];
	};


};
