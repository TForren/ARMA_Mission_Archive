    private ["_type", "_unit"];

    _type = _this select 0;
    _unit = _this select 1;
    if (!local _unit) exitWith {};
    
	clearItemCargoGlobal _unit;
	clearBackpackCargoGlobal _unit;
	clearWeaponCargoGlobal _unit;
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
                
                
    _WeaponArray =[
	"rhs_weap_akm",
	"rhs_weap_ak103",
    "rhs_weap_akm",
    "rhs_weap_akms"
                ];
    
    
    _HelmetArray =[
	"rhs_6b27m_green",
	"rhs_6b26_green",
	"rhs_6b26_ess_green",
	"rhs_6b26",
	"rhs_6b26_ess",
	"rhs_6b27m_green_ess",
	"rhs_6b27m",
	"rhs_6b27m_ess"
                ];
                
                
    _UniformArray =[
	"rhs_uniform_FROG01_m81",
	"CORX_Uniform_M81",
	"rhs_uniform_FROG01_m81"
                ];
                
                
    _VestArray =[
	"tin_vest_fra_tacvest_black",
	"V_TacVest_camo",
	"rhs_6b13_6sh92",
	"V_TacVest_khk",
	"V_TacVest_oli",
	"rhs_6b13_6sh92",
	"rhs_6b13_Flora_6sh92",
	"rhs_6b13_Flora_6sh92_vog",
	"rhs_6b13_6sh92_vog"
                ];
                
    _BackpackArray =[
	"B_Kitbag_rgr",
	"rhs_assault_umbts",
	"B_TacticalPack_oli",
	"rhs_sidor",
	"B_TacticalPack_blk"
                ];
				
	_CrewHelmetArray =[
	"rhs_tsh4",
	"rhs_tsh4_bala",
	"rhs_gssh18",
	"rhsusf_cvc_green_helmet",
	"rhs_tsh4_ess",
	"tb_alfr_headset_01",
	"rhs_tsh4_ess_bala",
	"JO_Helmet_SSH60"
				];
				
			_ranCrewHelmet = _CrewHelmetArray select floor random count _CrewHelmetArray;
	        _ranGun = _WeaponArray select floor random count _WeaponArray;
            _ranHelmet = _HelmetArray select floor random count _HelmetArray;
            _ranUniform = _UniformArray select floor random count _UniformArray;
            _ranVest = _VestArray select floor random count _VestArray;
            _ranBackpack = _BackPackArray select floor random count _BackPackArray;
    
    switch (_type) do
    {
		case "SL":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
			_unit addItem "ItemRadio";
			_unit addItem "ACRE_PRC148";
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShellGreen";
					_unit addMagazine "SmokeShellRed";
					_unit addMagazine "SmokeShellYellow";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					_unit addWeapon "Binocular";
					_unit addItem "ACRE_PRC148";
        };
		
        case "TL":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
			_unit addItem "ItemRadio";
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShellGreen";
					_unit addMagazine "SmokeShellRed";
					_unit addMagazine "SmokeShellYellow";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					_unit addWeapon "Binocular";
					_unit addItem "ACRE_PRC148";
        };
		
		case "RIFLE":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			_unit addWeapon "rhs_weap_rpg26";
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "AT":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack "rhs_rpg_empty";
			_unit addWeapon "rhs_weap_rpg7";
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "ATa":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack "rhs_rpg_empty";
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				_unit addMagazine "rhs_rpg7_PG7VL_mag";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "MG":
        {
            _unit addWeapon "rhs_weap_pkm";
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					
				 _unit addMagazine "rhs_100Rnd_762x54mmR";
				 _unit addMagazine "rhs_100Rnd_762x54mmR";
        };
		
		case "MGa":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				_unit addMagazine "rhs_100Rnd_762x54mmR";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
			
			case "MEDIC":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_surgicalKit";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
					for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_atropine";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_elasticBandage";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
					for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_personalAidKit";};
            };
			
		case "CREW":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranCrewHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "VC":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranCrewHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			
			_unit addItem "ACRE_PRC148";
			_unit addItem "ItemRadio";
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addMagazine "SmokeShellGreen";
					_unit addMagazine "SmokeShellRed";
					_unit addMagazine "SmokeShellYellow";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
        };
		
		case "AR":
        {
            _unit addWeapon "JO_RF_RPK";
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					
				_unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
				_unit addMagazine "JO_75rnd_RPK";
                _unit addMagazine "JO_75rnd_RPK";
        };
		
		case "ARa":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
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
				_unit addMagazine "rhs_30Rnd_762x39mm_tracer";
				
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
					_unit addMagazine "rhs_mag_m67";
					_unit addMagazine "SmokeShell";
					_unit addItem "ACE_EarPlugs";
					_unit addItem "ACE_MapTools";
					
					_unit addMagazine "JO_75rnd_RPK";
					_unit addMagazine "JO_75rnd_RPK";
					_unit addMagazine "JO_75rnd_RPK";
					_unit addMagazine "JO_75rnd_RPK";
        };
		
		case "BTR":
		{
			_unit addMagazineCargoGlobal ["rhs_30Rnd_762x39mm",25];
			_unit addMagazineCargoGlobal ["JO_75rnd_RPK",8];
			_unit addMagazineCargoGlobal ["SmokeShell",8];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",5];
			_unit addMagazineCargoGlobal ["SmokeShellGreen",5];
			_unit addMagazineCargoGlobal ["SmokeShellRed",5];
			_unit addMagazineCargoGlobal ["SmokeShellYellow",5];
			_unit addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR",8];
			_unit addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag",10];
			
			_unit addItemCargoGlobal ["ACE_quikclot",20];
			_unit addItemCargoGlobal ["ACE_personalAidKit",5];
			_unit addItemCargoGlobal ["ACE_morphine",10];
			_unit addItemCargoGlobal ["ACE_epinephrine",10];
			_unit addItemCargoGlobal ["ACE_atropine",10];
			_unit addItemCargoGlobal ["ACE_packingBandage",25];
			_unit addItemCargoGlobal ["ACE_fieldDressing",30];
			_unit addItemCargoGlobal ["ACE_elasticBandage",20];
			_unit addItemCargoGlobal ["ACE_tourniquet",10];
			_unit addItemCargoGlobal ["ACE_salineIV_500",6];
			_unit addItemCargoGlobal ["ACE_surgicalKit",5];
		};
		
		// Gear to be added to all:
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
	};      
	
	
	