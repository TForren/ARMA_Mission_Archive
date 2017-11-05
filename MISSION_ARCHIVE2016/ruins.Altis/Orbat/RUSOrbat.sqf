	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	clearWeaponCargo _unit;
	clearMagazineCargo _unit;
	removeallweapons _unit;
	removeAllAssignedItems _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;
    removeUniform _unit;
	removeVest _unit;
	
	_unit addBackpack "rhs_assault_umbts";
	_unit forceAddUniform "rhs_uniform_msv_emr";
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit addItem "ACE_tourniquet";
	_unit addItem "ACE_morphine";
	_unit addItem "ACE_quikclot";
	_unit addItem "ACE_quikclot";
	_unit addItem "ACE_quikclot";
	_unit addItem "ACE_fieldDressing";
	_unit addItem "ACE_fieldDressing";
	_unit addItem "ACE_fieldDressing";
	_unit addItem "ACE_packingBandage";
	_unit addItem "ACE_packingBandage";
	_unit addItem "ACE_packingBandage";
	_unit addItem "ACE_elasticBandage";
	_unit addItem "ACE_elasticBandage";
	_unit addItem "ACE_elasticBandage";
	_unit addMagazine "SmokeShell";
	_unit addMagazine "SmokeShell";
	_unit addItem "ACE_EarPlugs";
	_unit addItem "ACE_MapTools";
	
	
	switch (_type) do
	{
		case "PL":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_headset_mapcase";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazines["rhs_30Rnd_545x39_AK",9];
			_unit addMagazine "rhs_mag_nspn_green";
			_unit addWeapon "Binocular";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "rhs_weap_pya";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addItem "ACRE_PRC148";
			
		};		
		case "PSG":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_headset_mapcase";
			_unit addMagazines["rhs_30Rnd_545x39_AK",9];
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addItem "ACRE_PRC148";
			_unit addWeapon "Binocular";
		};
		
		case "RTO":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_headset_mapcase";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazines["rhs_30Rnd_545x39_AK",9];
			_unit addMagazine "rhs_mag_nspn_green";
			_unit addWeapon "Binocular";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "rhs_weap_pya";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addItem "ACRE_PRC148";
		};

		case "SL":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_headset_mapcase";
			_unit addItem "ACRE_PRC148";
			_unit addMagazines["rhs_30Rnd_545x39_AK",12];
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addWeapon "Binocular";
		};
		
		case "1SL":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_headset_mapcase";
			_unit addItem "ACRE_PRC148";
			_unit addMagazines["rhs_30Rnd_545x39_AK",12];
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "Binocular";
		};
		
		case "RSL":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_radio";
			_unit addMagazines["rhs_30Rnd_545x39_AK",12];
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m_camo";
			_unit addWeapon "Binocular";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addItem "ACRE_PRC148";
			removeHeadgear _unit;
			removeGoggles _unit;
			_unit addHeadgear "rhs_Booniehat_flora";
			_unit addGoggles "rhs_scarf";
		};
		
		case "ASL":
		{
			_unit addHeadgear "rhs_tsh4";
			_unit addVest "rhs_6b23_digi_crewofficer";
			_unit addItem "ACRE_PRC148";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addWeapon "Binocular";
			_unit addWeapon "rhs_weap_pya";			
		};

		case "SR":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92_vog";
			_unit addMagazines["rhs_30Rnd_545x39_AK",12];
			_unit addMagazine "rhs_30Rnd_545x39_AK_green";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazines["rhs_VOG25",20];
			_unit addMagazine "rhs_GRD40_White";
			_unit addWeapon "rhs_weap_ak74m_gp25";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
		};

		case "MD":
		{
			_unit addHeadgear "rhs_6b28";
			_unit setVariable ["ace_medical_medicClass",1,true];
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazines["rhs_30Rnd_545x39_AK",8];
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
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
			(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_surgicalKit", 5];
		};		

		case "GREN":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazines["rhs_30Rnd_545x39_AK",8];
			_unit addWeapon "rhs_weap_ak74m";
			_unit addWeapon "rhs_weap_rpg7";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
		};	

		case "ARPG":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazines["rhs_30Rnd_545x39_AK",8];
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			
		};	
		
		case "RPK":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazines ["rhs_100Rnd_762x54mmR_green",4];
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addWeapon "rhs_weap_pkp";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addPrimaryWeaponItem "rhs_acc_1p78";
		};	
		
		case "DRIVER":
		{
			_unit addHeadgear "rhs_tsh4";
			_unit addVest "rhs_6b23_digi_crew";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addMagazine "rhs_mag_9x19_17";
			_unit addWeapon "rhs_weap_pya";	
		};	
		
		
		case "SVD":
		{
			_unit addVest "rhs_6b23_digi_sniper";
			_unit addMagazines["rhs_10Rnd_762x54mmR_7N1",8];
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addWeapon "rhs_weap_svdp_wd";
			_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
			removeHeadgear _unit;
			removeGoggles _unit;
			_unit addHeadgear "rhs_Booniehat_flora";
			_unit addGoggles "rhs_scarf";
			

		};	
		
		case "RIFLE":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_100Rnd_762x54mmR_green";

			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazines["rhs_30Rnd_545x39_AK",12];
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			_unit addWeapon "rhs_weap_rpg26";
		};

		case "RRIFLE":
		{
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazines["rhs_30Rnd_545x39_AK",5];
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addWeapon "rhs_weap_ak74m_camo";
			_unit addWeapon "rhs_weap_rpg26";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			removeHeadgear _unit;
			removeGoggles _unit;
			_unit addHeadgear "rhs_Booniehat_flora";
			_unit addGoggles "rhs_scarf";
		};
		
		case "RPOTL":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rgd5";

			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazines["rhs_30Rnd_545x39_AK",5];
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			
			removeBackpack _unit;
			_unit addBackpack "rhs_assault_umbts";
			_unit addBackpack "B_Carryall_oli";
			_unit addMagazines ["rhs_rpg7_TBG7V_mag",3];
		};
		
		case "ARPO":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rgd5";

			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazines["rhs_30Rnd_545x39_AK",5];
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			
			removeBackpack _unit;
			_unit addBackpack "rhs_assault_umbts";
			_unit addBackpack "B_Carryall_oli";
			_unit addMagazines ["rhs_rpg7_TBG7V_mag",5];
		};
		
		case "RPO":
		{
			_unit addHeadgear "rhs_6b28";
			_unit addVest "rhs_6b23_digi_6sh92";
			_unit addMagazine "rhs_mag_rgd5";

			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazines["rhs_30Rnd_545x39_AK",5];
			_unit addmagazine "rhs_30Rnd_545x39_AK_green";
			_unit addWeapon "rhs_weap_ak74m";
			_unit addPrimaryWeaponItem "rhs_acc_dtk";
			
			removeBackpack _unit;
			_unit addBackpack "rhs_assault_umbts";
			_unit addBackpack "B_Carryall_oli";
			_unit addMagazines ["rhs_rpg7_TBG7V_mag",4];

			_unit addWeapon "rhs_weap_rpg7";
			_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
		};		
	};