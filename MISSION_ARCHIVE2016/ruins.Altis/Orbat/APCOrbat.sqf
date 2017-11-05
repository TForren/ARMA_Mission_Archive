	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	removeallweapons _unit;
	removeAllAssignedItems _unit;
	ClearWeaponCargoGlobal _unit;
	ClearMagazineCargoGlobal _unit;
	ClearItemCargoGlobal _unit;
	ClearBackpackCargoGlobal _unit;
	
	_unit addWeapon "ItemMap";
	_unit addWeapon "ItemCompass";
	_unit addWeapon "ItemWatch";
	
	//Uniform
	_unit forceAddUniform "rhs_uniform_flora_patchless";
	_unit addHeadgear "rhs_6b26";
	_unit addBackpack "rhs_assault_umbts";	
	
	//Medical
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

	
	switch (_type) do
	{
			case "SL":
		{
			_unit addVest "rhs_6b13_Flora_6sh92_radio";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addWeapon "rhs_weap_akm";
			_unit addWeapon "Binocular";
			_unit addItem "ACRE_PRC148";
		};

			case "GL":
		{
			_unit addVest "rhs_6b13_Flora_6sh92_vog";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
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
			_unit addMagazine "rhs_GRD40_White";
			_unit addWeapon "rhs_weap_akm_gp25";
		};	

			case "AT":
		{
			_unit addVest "rhs_6b13_Flora_6sh92_vog";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addWeapon "rhs_weap_akm";
			_unit addWeapon "rhs_weap_rpg7";
			_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
		};	

			case "ARPG":
		{
			_unit addVest "rhs_6b13_Flora_6sh92";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_PG7VL_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addMagazine "rhs_rpg7_OG7V_mag";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addWeapon "rhs_weap_akm";
			
		};	
		
		
			case "CREW":
		{
			_unit addVest "rhs_6b13_Flora";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "rhs_30Rnd_762x39mm";
			_unit addWeapon "rhs_weap_akms";			
		};	
		
		case "SVD":
		{
			_unit addVest "rhs_6b13_Flora_6sh92";
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
		
		case "RIFLE":
		{
			_unit addVest "rhs_6b13_Flora_6sh92";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addMagazine "JO_75rnd_RPK";
			_unit addMagazine "JO_75rnd_RPK";
			_unit addMagazine "JO_75rnd_RPK";
			_unit addWeapon "rhs_weap_akm";
		};	
		
		case "MEDIC":
		{
			_unit addVest "rhs_6b13_Flora_crewofficer";
			_unit addMagazine "rhs_mag_rgd5";
			_unit addMagazine "rhs_mag_rdg2_white";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addmagazine "rhs_30Rnd_762x39mm";
			_unit addWeapon "rhs_weap_akm";
		};
		
		case "BTR":
		{
			_unit addMagazineCargoGlobal ["rhs_mag_rgd5",10];
			_unit addMagazineCargoGlobal ["rhs_mag_rdg2_white",10];
			_unit addMagazineCargoGlobal ["rhs_30Rnd_762x39mm",25];
			_unit addWeaponCargoGlobal ["rhs_weap_akm",2];
		};
	};

