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
	"rhs_weap_ak74m",
    "rhs_weap_ak74m_dtk",
    "rhs_weap_ak74m_pkas",
    "rhs_weap_ak74m_1p63",
    "rhs_weap_ak74m_pso1m2",
    "rhs_weap_ak74m_1p29",
    "rhs_weap_ak74m_camo",
    "rhs_weap_ak74m_camo_dtk",
    "rhs_weap_akm",
    "rhs_weap_akms",
    "rhs_weap_ak103",
    "rhs_weap_ak103_dtk",
    "rhs_weap_ak103_1",
    "rhs_weap_ak103_1_dtk",
    "rhs_weap_ak103_2",
    "rhs_weap_ak103_2_dtk",
    "rhs_weap_ak74m_2mag",
    "rhs_weap_ak74m_2mag_dtk",
    "rhs_weap_ak74m_2mag_camo",
    "rhs_weap_ak74m_2mag_camo_dtk",
    "rhs_weap_ak74m_camo_pkas",
    "rhs_weap_ak74m_camo_1p63",
    "rhs_weap_ak74m_camo_pso1m2",
    "rhs_weap_ak74m_camo_1p29",
    "rhs_weap_ak74m_desert",
    "rhs_weap_ak74m_desert_dtk",
    "rhs_weap_ak74m_plummag",
    "rhs_weap_ak74m_plummag_dtk",
    "rhs_weap_M590_8RD",
    "rhs_weap_M590_5RD"
                ];
    
    
    _HelmetArray =[
    "tin_helmet_ugf_olive",
    "tin_helmet_ugf_ttsko",
    "H_Booniehat_tan",
    "tin_helmet_cri_rastr",
    "rhs_Booniehat_m81",
    "tin_helmet_uotc_beret",
    "H_Hat_tan",
    "ACC_Booniehat_W",
    "CORX_Helmet_M81",
    "H_HelmetB_light_black",
    "tin_helmet_caf_CG634_TW_scrim_GUP",
    "H_Watchcap_blk",
    "UKAF_MK7_ScrimB",
    "rhs_beanie_green",
    "H_Bandanna_khk_hs",
    "CORX_ATACS_FG_helmet",
    "IDF_Helmet_CQB_4",
    "tin_helmet_caf_CG634_tw_scrim",
    "tin_helmet_uotc_beret",
    "IDF_Helmet_CQB_3",
    "ACC_H_MICH_W",
    "rhs_tsh4",
    "H_Booniehat_khk_hs",
    "H_Bandanna_sgg",
    "IDF_Helmet_CQB_5",
    "H_Shemag_olive",
    "tin_helmet_uotc_beret",
    "H_Hat_grey",
    "tb_alfr_mich_AFPAT",
    "H_MilCap_blue",
    "rhsusf_opscore_02_tan",
    "IDF_Helmet_CQB_1",
    "H_Shemag_olive_hs",
    "H_Bandanna_sand",
    "H_MilCap_gry",
    "CORX_Helmet_M81",
    "UKAF_MK7_Scrim",
    "IDF_Helmet_CQB_Golani",
    "H_Hat_camo",
    "rhs_tsh4_ess_bala",
    "CORX_Helmet_Olive",
    "H_Bandanna_khk",
    "H_ShemagOpen_tan",
    "H_Bandanna_cbr",
    "H_HelmetB_light_snakeskin",
    "H_HelmetB_light",
    "CORX_DPCU_helmet",
    "H_Cap_oli_hs",
    "H_Cap_surfer",
    "tin_helmet_uotc_beret",
    "H_Bandanna_camo"
                ];
                
                
    _UniformArray =[
    "tin_uniform_ugf_olive",
    "tin_uniform_ugf_ttsko",
    "tin_uniform_cri_rastr",
    "tin_uniform_ru_digi",
    "tin_uniform_ru_skol",
    "tin_uniform_ru_surpat",
    "ACC_U_Pantera_W",
    "CORX_Uniform_ATACS_FG",
    "tin_uniform_fra_ce",
    "U_BG_Guerrilla_6_1",
    "U_BG_Guerilla1_1"
                ];
                
                
    _VestArray =[
    "tin_vest_ugf_olive",
    "tin_vest_ugf_ttsko",
    "tin_vest_cri_rastr",
    "V_PlateCarrierIA1_dgtl",
    "CORX_Vest_Olive2",
    "CORX_Vest_M81",
    "CORX_ATACS_FG_vest",
    "rhs_vydra_3m",
    "ACC_V_TacVest_W",
    "ACC_V_TacVest_D",
    "V_Press_F",
    "V_TacVest_oli",
    "V_TacVest_camo",
    "V_TacVest_khk",
    "V_TacVest_brn",
    "tin_vest_fra_tacvest_black",
    "V_TacVest_blk",
    "rhsusf_spc"
                ];
                
    _BackpackArray =[
    "tin_backpack_ugf_oliveLight",
    "tin_backpack_ugf_ttsko",
    "tin_backpack_ugf_olive",
    "tin_backpack_cri_rastr",
    "ACC_Bergen_W",
    "B_AssaultPack_cbr",
    "B_AssaultPack_khk",
    "B_AssaultPack_rgr",
    "ACC_FieldPack_W",
    "B_TacticalPack_rgr"
                ];
				

	        _ranGun = _WeaponArray select floor random count _WeaponArray;
			_ranSight = _SightArray select floor random count _sightarray;
            _ranHelmet = _HelmetArray select floor random count _HelmetArray;
            _ranUniform = _UniformArray select floor random count _UniformArray;
            _ranVest = _VestArray select floor random count _VestArray;
            _ranBackpack = _BackPackArray select floor random count _BackPackArray;
    
    switch (_type) do
    {
        case "TL":
        {
            _unit addWeapon _ranGun;
			_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
			if ((_ranGun == "rhs_weap_akm") || (_ranGun == "rhs_weap_akms") || (_ranGun == "rhs_weap_ak103") || (_ranGun == "rhs_weap_ak103_dtk") || (_ranGun == "rhs_weap_ak103_1") || (_ranGun == "rhs_weap_ak103_1_dtk") || (_ranGun == "rhs_weap_ak103_2") || (_ranGun == "rhs_weap_ak103_2_dtk")) then
            {
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
            };

            if (_ranGun == "rhs_weap_M590_8RD") then
            {
                _unit addMagazine "rhsusf_8Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_8Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
            };

            if (_ranGun == "rhs_weap_M590_5RD") then 
            {
				_unit addMagazine "rhsusf_5Rnd_doomsday_Buck";
				_unit addMagazine "rhsusf_5Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
            };
			
			if ((_ranGun == "rhs_weap_aks74u") || 
				(_ranGun == "rhs_weap_aks74") || 
				(_ranGun == "rhs_weap_ak74") || 
				(_ranGun == "rhs_weap_ak74m_plummag_dtk") || 
				(_ranGun == "rhs_weap_ak74m_plummag") || 
				(_ranGun == "rhs_weap_ak74m_desert_dtk") || 
				(_ranGun == "rhs_weap_ak74m_desert") || 
				(_ranGun == "rhs_weap_ak74m_camo_1p29") || 
				(_ranGun == "rhs_weap_ak74m_camo_pso1m2") || 
				(_ranGun == "rhs_weap_ak74m_camo_1p63") || 
				(_ranGun == "rhs_weap_ak74m_camo_pkas") || 
				(_ranGun == "rhs_weap_ak74m_2mag_camo_dtk") || 
				(_ranGun == "rhs_weap_ak74m_2mag_camo") || 
				(_ranGun == "rhs_weap_ak74m_2mag_dtk") || 
				(_ranGun == "rhs_weap_ak74m_2mag") || 
				(_ranGun == "rhs_weap_ak74m_camo_dtk") || 
				(_ranGun == "rhs_weap_ak74m_camo") || 
				(_ranGun == "rhs_weap_ak74m_1p29") || 
				(_ranGun == "rhs_weap_ak74m_pso1m2") || 
				(_ranGun == "rhs_weap_ak74m_1p63") || 
				(_ranGun == "rhs_weap_ak74m_pkas") || 
				(_ranGun == "rhs_weap_ak74m_dtk") || 
				(_ranGun == "rhs_weap_ak74m")) then 
				{
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
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
					_unit addWeapon "Binocular";
					_unit addItem "ACRE_PRC148";
					_unit addItem "ACE_microDAGR";
            };
			
			case "MEDIC":
        {
            _unit addWeapon _ranGun;
			_unit addPrimaryWeaponItem _ranSight;
			_unit addHeadgear _ranHelmet;
			_unit forceAddUniform _ranUniform;
			_unit addVest _ranVest;
			_unit addBackpack _ranBackpack;
			
			if ((_ranGun == "rhs_weap_akm") || (_ranGun == "rhs_weap_akms") || (_ranGun == "rhs_weap_ak103") || (_ranGun == "rhs_weap_ak103_dtk") || (_ranGun == "rhs_weap_ak103_1") || (_ranGun == "rhs_weap_ak103_1_dtk") || (_ranGun == "rhs_weap_ak103_2") || (_ranGun == "rhs_weap_ak103_2_dtk")) then
            {
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
                _unit addMagazine "rhs_30Rnd_762x39mm";
            };

            if (_ranGun == "rhs_weap_M590_8RD") then
            {
                _unit addMagazine "rhsusf_8Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_8Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
                _unit addMagazine "rhsusf_8Rnd_00Buck";
            };

            if (_ranGun == "rhs_weap_M590_5RD") then 
            {
				_unit addMagazine "rhsusf_5Rnd_doomsday_Buck";
				_unit addMagazine "rhsusf_5Rnd_doomsday_Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
                _unit addMagazine "rhsusf_5Rnd_00Buck";
            };
			
			if ((_ranGun == "rhs_weap_aks74u") || 
				(_ranGun == "rhs_weap_aks74") || 
				(_ranGun == "rhs_weap_ak74") || 
				(_ranGun == "rhs_weap_ak74m_plummag_dtk") || 
				(_ranGun == "rhs_weap_ak74m_plummag") || 
				(_ranGun == "rhs_weap_ak74m_desert_dtk") || 
				(_ranGun == "rhs_weap_ak74m_desert") || 
				(_ranGun == "rhs_weap_ak74m_camo_1p29") || 
				(_ranGun == "rhs_weap_ak74m_camo_pso1m2") || 
				(_ranGun == "rhs_weap_ak74m_camo_1p63") || 
				(_ranGun == "rhs_weap_ak74m_camo_pkas") || 
				(_ranGun == "rhs_weap_ak74m_2mag_camo_dtk") || 
				(_ranGun == "rhs_weap_ak74m_2mag_camo") || 
				(_ranGun == "rhs_weap_ak74m_2mag_dtk") || 
				(_ranGun == "rhs_weap_ak74m_2mag") || 
				(_ranGun == "rhs_weap_ak74m_camo_dtk") || 
				(_ranGun == "rhs_weap_ak74m_camo") || 
				(_ranGun == "rhs_weap_ak74m_1p29") || 
				(_ranGun == "rhs_weap_ak74m_pso1m2") || 
				(_ranGun == "rhs_weap_ak74m_1p63") || 
				(_ranGun == "rhs_weap_ak74m_pkas") || 
				(_ranGun == "rhs_weap_ak74m_dtk") || 
				(_ranGun == "rhs_weap_ak74m")) then 
				{
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
                _unit addMagazine "rhs_30Rnd_545x39_AK";
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
	
	
	