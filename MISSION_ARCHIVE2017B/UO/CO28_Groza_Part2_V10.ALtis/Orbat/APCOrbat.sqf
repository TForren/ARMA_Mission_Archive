	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	removeallweapons _unit;
	removeAllAssignedItems _unit;
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit addItemToUniform "ACE_personalAidKit";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_packingBandage";
	_unit addItemToUniform "ACE_packingBandage";
	_unit addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
	_unit addItemToUniform "ACE_EarPlugs";

	switch (_type) do
	{
		case "PL":
		{
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_mag_nspn_green";
			_unit addWeapon "Binocular";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "rhs_weap_pya";
			_unit addItem "ACRE_PRC148";
			_unit addPrimaryWeaponItem "rhs_acc_1p29";
		};		
		case "PSG":
		{
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_1p29";
			_unit addWeapon "Binocular";
			_unit addItem "ACRE_PRC148";
		};

			case "SL":
		{
			_unit addBackpack "rhs_assault_umbts";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_1p29";
			_unit addWeapon "Binocular";
			_unit addItem "ACRE_PRC148";
		};
		
			case "ASL":
		{
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addWeapon "Binocular";
			_unit addWeapon "rhs_weap_pya";		
			_unit addPrimaryWeaponItem "rhs_acc_1p29";			
			};

			case "SR":
		{
			_unit addBackpack "rhs_assault_umbts";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_GRD40_White";
			_unit addWeapon "rhs_weap_ak74m_gp25";
			_unit addPrimaryWeaponItem "rhs_acc_1p29";
		};

			case "MD":
		{
			_unit setVariable ["ace_medical_medicClass",1,true];
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_30Rnd_545x39_AK";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing", 5];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 3];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage", 3];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 20];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 8];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 3];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_salineIV", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 8];
			//(unitBackpack _unit) addItemCargoGlobal ["ACE_atropine", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 8];
			//(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 20];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_surgicalKit", 1];
			
		};		

			case "Gren":
		{
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "rhs_weap_rpg7";
			_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
		};	

			case "ARPG":
		{
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addWeapon "rhs_weap_ak74m";
			
		};	
		
			case "RPK":
		{
			_unit addMagazine ["rhs_100Rnd_762x54mmR",7];
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addWeapon "rhs_weap_pkm";
		};	
		
			case "Driver":
		{

			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addWeapon "rhs_weap_pya";		
		};	
		
		case "SVD":
		{
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_10Rnd_762x54mmR_7N1";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addWeapon "rhs_weap_svdp";
			_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
			

		};	
		
		case "RIF":
		{
			_unit addBackpack "rhs_assault_umbts";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK";
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addMagazine "rhs_VOG25";
			_unit addWeapon "rhs_weap_ak74m_gp25";
		};	
		
			//case "ATGM":
		//{
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "AT13";
			//_unit addWeapon "rhs_weap_ak74m";
			//_unit addweapon "MetisLauncher";
		//};
		
			//case "ATGMA":
		//{
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "rhs_30Rnd_545x39_AK";
			//_unit addMagazine "AT13";
			//_unit addWeapon "rhs_weap_ak74m";
		//};	

			case "BTR":
		{
			clearWeaponCargoGlobal _unit; 
			clearMagazineCargoGlobal _unit;
			clearBackpackCargoGlobal _unit;
			clearItemCargoGlobal _unit;

			_unit addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag", 4];
			_unit addMagazineCargoGlobal ["rhs_rpg7_OG7V_mag", 4];
			_unit addMagazineCargoGlobal ["rhs_rpg7_PG7VR_mag", 4];
			_unit addMagazineCargoGlobal ["rhs_rshg2_mag", 2];
			_unit addWeaponCargoGlobal ["rhs_weap_rpg26", 2];
			_unit addWeaponCargoGlobal ["rhs_weap_rshg2", 2];
			_unit addMagazineCargoGlobal ["rhs_30Rnd_545x39_AK", 40];
			_unit addMagazineCargoGlobal ["rhs_rpg26_mag", 2];
			_unit addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 15];
			//_unit addWeaponCargoGlobal "JS_RF_AK47";
			//_unit addMagazineCargoGlobal ["JS_30rnd_AK47", 20];
			_unit addMagazineCargoGlobal ["rhs_mag_rdg2_white", 6];
			_unit addMagazineCargoGlobal ["rhs_mag_rgd5", 10];
			_unit addItemCargoGlobal ["ACE_epinephrine", 5];
			_unit addItemCargoGlobal ["ACE_packingBandage", 10];
			_unit addItemCargoGlobal ["ACE_morphine", 5];
			_unit addItemCargoGlobal ["ACE_personalAidKit",5];			
			_unit addMagazineCargoGlobal ["rhs_VOG25", 20];
			_unit addMagazineCargoGlobal ["rhs_GRD40_White", 5];
			_unit addMagazineCargoGlobal ["rhs_VG40SZ", 10];
			_unit addItemCargoGlobal ["NVGoggles", 1];
			_unit addItemCargoGlobal ["rhs_acc_1pn93_1",1];
			_unit addItemCargoGlobal ["rhs_acc_1p29",1];
			_unit addItemCargoGlobal ["rhs_balaclava",4];
			_unit addItemCargoGlobal ["rhs_scarf",4];
		};
			case "Medicvan":
		{
			clearWeaponCargoGlobal _unit; 
			clearMagazineCargoGlobal _unit;
			clearBackpackCargoGlobal _unit;
			clearItemCargoGlobal _unit;
			
			_unit addItemCargoGlobal ["ACE_epinephrine", 50];
			_unit addItemCargoGlobal ["ACE_packingBandage", 100];
			_unit addItemCargoGlobal ["ACE_morphine", 50];
			_unit addItemCargoGlobal ["ACE_bloodIV_250",50];
			_unit addItemCargoGlobal ["ACE_salineIV_250",50];			
			_unit addItemCargoGlobal ["ACE_quikclot",50];
			_unit addItemCargoGlobal ["ACE_elasticBandage",50];
			_unit addItemCargoGlobal ["ACE_plasmaIV_250",50];
			_unit addItemCargoGlobal ["ACE_tourniquet",50];
			_unit addItemCargoGlobal ["ACE_fieldDressing",50];
			_unit addItemCargoGlobal ["ACE_personalAidKit",50];
		};
		
			//case "BTRATGM":
		//{
			//clearmagazinecargo _unit; 
			//clearweaponcargo _unit;

			//_unit addMagazineCargoGlobal ["rhs_30Rnd_545x39_AK", 10];
			//_unit addMagazineCargoGlobal ["AT13", 6];
			//_unit addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 15];
			//_unit addMagazineCargoGlobal ["rhs_mag_rdg2_white", 3];
			//_unit addMagazineCargoGlobal ["rhs_mag_rgd5", 5];
			//_unit addMagazineCargoGlobal ["ACE_epinephrine", 5];
			//_unit addMagazineCargoGlobal ["ACE_packingBandage", 10];
			//_unit addMagazineCargoGlobal ["ACE_personalAidKit",5];
			//_unit addMagazineCargoGlobal ["ACE_morphine", 5];
		//};		
	};

_unit addPrimaryWeaponItem "rhs_acc_dtk";