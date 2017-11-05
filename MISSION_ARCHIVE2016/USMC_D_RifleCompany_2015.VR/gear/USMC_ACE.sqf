private ["_type","_unit"];

_type = _this select 0;
_unit = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeAllAssignedItems _unit;
clearAllItemsFromBackpack _unit;
removeBackpack _unit;
removeAllContainers _unit;
removeHeadgear _unit;
removeVest _unit;
removeUniform _unit;


_m16Selection = ["rhs_weap_m16a4_carryhandle_grip_pmag","rhs_weap_m16a4_carryhandle_pmag"];
_mbSelection = ["rhsusf_acc_SFMB556","rhsusf_acc_SF3P556"];
_m4Selection = ["rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_pmag"];
_sightSelection = ["rhsusf_acc_ACOG_USMC","rhsusf_acc_ACOG2_USMC","rhsusf_acc_ACOG3_USMC"];
_HelmSelection = ["rhsusf_lwh_helmet_marpatd","rhsusf_lwh_helmet_marpatd_ess"];
_m136 = ["rhs_weap_M136_hedp","rhs_weap_M136","rhs_weap_M136_hp"];

_m16 = _m16Selection select floor random count _m16Selection;
_mb = _mbSelection select floor random count _mbSelection;
_m4 = _m4Selection select floor random count _m4Selection;
_sight = _sightSelection select floor random count _sightSelection;
_Helm = _HelmSelection select floor random count _HelmSelection;
_at4 = _m136 select floor random count _m136;

_unit forceAddUniform "rhs_uniform_FROG01_d";
_unit addBackpack "CUP_B_USMC_MOLLE";

(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage",2];
(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet",2];
(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit",2];
(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot",2];

_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMap";
_unit addItem "ACRE_PRC343";
_unit addItem "ACE_CableTie";
_unit addItem "ACE_CableTie";
_unit addItem "ACE_CableTie";
_unit addItem "ACE_earplugs";

(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m67",2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_yellow",1];


switch (_type) do {
	case "PL":
	{
		_unit addVest "rhsusf_spc_squadleader";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		(unitBackpack _unit) addWeaponCargoGlobal ["ACE_MX2A",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit additem "ACE_microDAGR";
		_unit addItem "ACRE_PRC152";
		_unit addWeapon "ACE_Vector";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "RTO":
	{
		_unit addVest "CUP_V_B_RRV_DA2";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addItem "ACRE_PRC152";
		_unit addItem "ACRE_PRC117F";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "PSG":
	{
		_unit addVest "rhsusf_spc_squadleader";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",10];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 10];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 10];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_atropine", 10];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit additem "ACE_microDAGR";
		_unit addItem "ACRE_PRC152";
		_unit addWeapon "ACE_Vector";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "MEDIC":
	{
		_unit addVest "rhsusf_spc_corpsman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_bloodIV", 5];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_atropine", 20];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_salineIV_250", 4];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};
	
	case "CLS":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 8];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};

	case "SL":
	{
		_unit addVest "rhsusf_spc_squadleader";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		(unitBackpack _unit) addWeaponCargoGlobal ["ACE_MX2A",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit additem "ACE_microDAGR";
		_unit addItem "ACRE_PRC152";
		_unit addWeapon "ACE_Vector";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "TL":
	{
		_unit addVest "rhsusf_spc_teamleader";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(vestContainer _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",4];
		(vestContainer _unit) addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",8];
		(unitBackpack _unit) addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m4_m203";
		_unit addWeapon "rhs_weap_m72a7";
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addItem "ACRE_PRC152";
		_unit addWeapon "Binocular";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};
	
	case "HTL":
	{
		_unit addVest "rhsusf_spc_teamleader";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addweaponCargoGlobal ["rhs_weap_m32",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M433_HEDP",6];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m4;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addWeapon "rhs_weap_m72a7";
		_unit addPrimaryWeaponItem _sight;
		_unit addItem "ACRE_PRC152";
		_unit addWeapon "Binocular";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "AR":
	{
		_unit addVest "rhsusf_spc_mg";
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",6];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m249_pip_usmc";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
		_unit addHeadgear _Helm;
	};

	case "GR":
	{
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(vestContainer _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",8];
		(vestContainer _unit) addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m4_m203";
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};
	
	case "M27":
	{
		_unit addVest "rhsusf_spc_iar";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",10];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m27iar_grip";
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
		_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_unit addHeadgear _Helm; 
	};
	
	case "RM":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};
	
	
	case "RMWC":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_wirecutter",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};
	
	case "RMAT":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addWeapon _at4;
		_unit addHeadgear _Helm; 
	};
	
	case "DMR":
	{
		_unit addVest "rhsusf_spc_marksman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_mk262_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_mk262_Stanag",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhs_Booniehat_marpatd",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addPrimaryWeaponItem "optic_DMS";
		_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_unit addWeapon "ACE_vector";
		_unit addHeadgear _Helm; 
	};
	
	case "MDMR":
	{
		_unit addVest "rhsusf_spc_marksman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",2];
		(unitBackpack _unit) addItemCargoGlobal ["rhs_Booniehat_marpatd",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		_unit addWeapon "rhs_weap_sr25";
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_SR25S";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addPrimaryWeaponItem "optic_DMS";
		_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_unit addWeapon "ACE_vector";
		_unit addHeadgear _Helm; 
	};
	
	case "sniper":
	{
		_unit addVest "rhsusf_spc_marksman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",2];
		_unit addWeapon "rhs_weap_sr25";
		//U_O_FullGhillie_sard
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_SR25S";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addPrimaryWeaponItem "optic_DMS";
		_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_unit addWeapon "ACE_vector";
		_unit addHeadgear _Helm; 
	};
	
	case "spotter":
	{
		_unit addVest "rhsusf_spc_marksman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",5];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",2];
		_unit addWeapon "rhs_weap_sr25";
		//U_O_FullGhillie_sard
		//(uniformContainer _unit) addItemCargoGlobal ["optic_tws",1];
		_unit addPrimaryWeaponItem "rhsusf_acc_SR25S";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addPrimaryWeaponItem "optic_DMS";
		_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_unit addWeapon "ACE_vector";
		_unit addHeadgear _Helm; 
	};
	
	case "SMAW":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["DemoCharge_Remote_Mag",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_smaw_HEDP",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m14_th3",1];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m4";
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addWeapon "rhs_weap_smaw";
		_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";
	};

	case "SMAWA":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["DemoCharge_Remote_Mag",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_smaw_HEDP",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m14_th3",1];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m4";
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addWeapon "ACE_Vector";
		_unit addHeadgear _Helm; 
	};

	case "MG":
	{
		_unit addVest "rhsusf_spc_mg";
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m993",3];
		(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr",1];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon "rhs_weap_m240B";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_d";
		_unit addHeadgear _Helm; 
	};

	case "MGA":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_sparebarrel",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m993",2];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addWeapon "ACE_Vector";;
		_unit addHeadgear _Helm; 
	};
	
	case "MGAB":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m993",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr",4];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addHeadgear _Helm; 
	};

	case "ENG":
	{
		_unit addVest "rhsusf_spc_rifleman";
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
		(unitBackpack _unit) addItemCargoGlobal ["rhs_Booniehat_marpatd",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",1];
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m14_th3",2];
		//(unitBackpack _unit) addItemCargoGlobal ["optic_NVS",1];
		_unit addWeapon _m16;
		_unit addPrimaryWeaponItem _mb;
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
		_unit addPrimaryWeaponItem _sight;
		_unit addItem "MineDetector";
		_unit addHeadgear _Helm; 
	};

	case "HUMVEE":
		{
			clearWeaponCargoGlobal _unit; 
			clearMagazineCargoGlobal _unit;
			clearBackpackCargoGlobal _unit;
			clearItemCargoGlobal _unit;
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
			_unit addMagazineCargoGlobal ["SmokeShell", 6];
			_unit addMagazineCargoGlobal ["SmokeShellRed", 3];
			_unit addItemCargoGlobal ["ACE_epinephrine", 5];
			_unit addItemCargoGlobal ["ACE_packingBandage", 10];
			_unit addItemCargoGlobal ["ACE_morphine", 5];
			_unit addItemCargoGlobal ["ACE_personalAidKit",5];
			_unit addItemCargoGlobal ["rhsusf_ANPVS_15", 1];
			_unit addItemCargoGlobal ["optic_NVS",1];
			_unit addItemCargoGlobal ["MineDetector", 1];
			_unit addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 6];
			_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 1];
		};

	case "TRUCK":
		{
			clearWeaponCargoGlobal _unit; 
			clearMagazineCargoGlobal _unit;
			clearBackpackCargoGlobal _unit;
			clearItemCargoGlobal _unit;
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1];
			_unit addMagazineCargoGlobal ["SmokeShell", 6];
			_unit addMagazineCargoGlobal ["SmokeShellRed", 3];
			_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 1];
			_unit addItemCargoGlobal ["ACE_packingBandage", 3];
			_unit addItemCargoGlobal ["ACE_morphine", 1];
		};


};