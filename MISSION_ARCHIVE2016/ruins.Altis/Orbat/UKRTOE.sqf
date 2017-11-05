    private ["_type", "_unit"];

    _type = _this select 0;
    _unit = _this select 1;
    if (!local _unit) exitWith {};
    
	clearMagazineCargoGlobal _unit;
    removeallweapons _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;
    removeUniform _unit;
	removeVest _unit;
    removeAllAssignedItems _unit;
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    _SightArray =[
    "rhs_acc_1p29",
    "rhs_acc_1p63",
    "rhs_acc_1p78",
    "rhs_acc_1pn93_1",
    "rhs_acc_1pn93_2",
    "rhs_acc_ekp1",
    "tb_acc_kobra",
    "rhs_acc_pkas",
    "rhs_acc_pso1m2"
                ];
                
                
    _WeaponArray =[
    "rhs_weap_ak74m_2mag",
	"rhs_weap_ak74m",
    "rhs_weap_ak74m_plummag"
	];
	
	_MGArray =[
	"JO_RF_RPK",
	"rhs_weap_pkm",
	"rhs_weap_pkp",
	"JO_RF_RPK74M"
	];
    
    
    _HelmetArray =[
	"tin_helmet_ugf_olive",
	"CORX_Helmet_M81",
    "tin_helmet_ugf_olive",
    "tin_helmet_ugf_ttsko",
    "IDF_Helmet_CQB_5",
	"tin_helmet_ugf_ttsko",
    "IDF_Helmet_CQB_1"
    ];
                
                
    _UniformArray =[
    "tin_uniform_ugf_olive",
    "tin_uniform_ugf_ttsko"
    ];
                
                
    _VestArray =[
    "tin_vest_ugf_olive",
    "tin_vest_ugf_ttsko"
                ];
                
    _BackpackArray =[
    "tin_backpack_ugf_oliveLight",
    "tin_backpack_ugf_ttsko",
    "tin_backpack_ugf_olive"
                ];
				
			_ranMG = _MGArray select floor random count _MGArray;
	        _ranGun = _WeaponArray select floor random count _WeaponArray;
			_ranSight = _SightArray select floor random count _sightarray;
            _ranHelmet = _HelmetArray select floor random count _HelmetArray;
            _ranUniform = _UniformArray select floor random count _UniformArray;
            _ranVest = _VestArray select floor random count _VestArray;
            _ranBackpack = _BackPackArray select floor random count _BackPackArray;
    
    switch (_type) do
    {
        case "SL":
        {
            _unit addWeapon _ranGun;
			//_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					_unit addWeapon "Binocular";
					_unit addItem "ACRE_PRC148";
					_unit addItem "ACE_microDAGR";
            };
			
		case "TL":
        {
            _unit addWeapon _ranGun;
			//_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					_unit addWeapon "Binocular";
            };
			
		case "RIFLE":
        {
            _unit addWeapon _ranGun;
			//_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "RIFLEAGS":
        {
            _unit addWeapon _ranGun;
			//_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
			
			
			case "RIFLEAT":
        {
            _unit addWeapon _ranGun;
			//_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
					_unit addMagazine "rhs_rpg7_PG7VL_mag";
					_unit addMagazine "rhs_rpg7_PG7VL_mag";
					_unit addMagazine "rhs_rpg7_OG7V_mag";
					
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
            };
			
			case "MEDIC":
        {
            _unit addWeapon _ranGun;
			//_unit addItem "ACRE_PRC148";
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
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
					
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_personalAidKit";};
					for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_surgicalKit";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_atropine";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_elasticBandage";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
					for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
            };
			
		case "RPK":
		{
				_unit addWeapon _ranMG;
				_unit addHeadgear _ranHelmet;
				_unit forceAddUniform _ranUniform;
				_unit addVest _ranVest;
				_unit addBackpack _ranBackpack;
				
				if (_ranMG == "JO_RF_RPK") then
				{
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
				};
				
				
				if (_ranMG == "rhs_weap_pkm") then
				{
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				};
				
				
				if (_ranMG == "rhs_weap_pkp") then
				{
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				};
				
				
				if (_ranMG == "JO_RF_RPK74M") then
				{
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				_unit addMagazine "jo_60rnd_AK12";
				};
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
			};
			
			case "AT":
        {
            _unit addWeapon _ranGun;
			//_unit addItem "ACRE_PRC148";
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
		
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
				
					_unit addMagazine "rhs_rpg7_PG7VL_mag";
					_unit addMagazine "rhs_rpg7_PG7VL_mag";
					_unit addMagazine "rhs_rpg7_OG7V_mag";
					_unit addMagazine "rhs_rpg7_OG7V_mag";
			
					_unit addWeapon "rhs_weap_rpg7";
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					_unit addWeapon "Binocular";
					_unit addItem "ACRE_PRC148";
					_unit addItem "ACE_microDAGR";
        };
		
		// Gear to be added to all:
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		
		case "M109":
		{
		_unit addMagazineCargoGlobal ["SA_155mm_m483a1",15];
		_unit addMagazineCargoGlobal ["SA_155mm_m795",25];
		_unit addMagazineCargoGlobal ["SA_155mm_m825a1",5];
		_unit addMagazineCargoGlobal ["SA_155mm_m485",15];
		};
	};      