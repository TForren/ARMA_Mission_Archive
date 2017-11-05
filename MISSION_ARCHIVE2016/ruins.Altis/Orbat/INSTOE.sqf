    private ["_type", "_unit"];

    _type = _this select 0;
    _unit = _this select 1;
    if (!local _unit) exitWith {};
    
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
    _unit linkItem "ItemRadio";

                
                
    _WeaponArray =[
	"rhs_weap_akm",
	"rhs_weap_ak103",
    "rhs_weap_akm",
    "rhs_weap_akms"
                ];
    
    
    _HelmetArray =[
	"JO_Pakol_Blue",
	"JO_Pakol_Brown",
	"JO_Pakol_Cream",
	"JO_Pakol_Grey",
	"JO_Pakol_LBrown",
	"H_Shemag_olive",
	"JO_Helmet_SSH60",
	"H_Shemag_olive_hs",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",
	"JO_Taqiyah_Brown",
	"JO_Taqiyah_P2",
	"JO_Taqiyah_P",
	"JO_Turban_Blue",
	"JO_Turban_BG",
	"JO_Turban_LBlue",
	"JO_Turban_PW",
	"JO_Turban_WR",
	"tin_helmet_uotc_beret"
                ];
                
                
    _UniformArray =[
	"JO_Phiran_Purple",
	"JO_Phiran_LBlue",
	"JO_Phiran_Cream",
	"JO_Phiran_Cream2",
	"JO_Phiran_Blue",
	"JO_Pashtun_Blue",
	"JO_Pashtun_Cream",
	"JO_Pashtun_Grey",
	"JO_Pashtun_Brown"
                ];
                
                
    _VestArray =[
	"rhs_6sh46"
				];
				

	        _ranGun = _WeaponArray select floor random count _WeaponArray;
            _ranHelmet = _HelmetArray select floor random count _HelmetArray;
            _ranUniform = _UniformArray select floor random count _UniformArray;
            _ranVest = _VestArray select floor random count _VestArray;
    
    switch (_type) do
    {
        case "TL":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
				_unit addMagazine "rhs_30Rnd_762x39mm";
				
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
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
				
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
		
			
			case "MEDIC":
        {
            _unit addWeapon _ranGun;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack "B_TacticalPack_blk";
			
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
				
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
	};      
	
	
	