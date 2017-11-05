	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	removeallweapons _unit;
	removeAllAssignedItems _unit;
	_unit addWeapon "ItemMap";
	_unit addWeapon "ItemCompass";
	_unit addWeapon "ItemWatch";
	_unit addWeapon "ItemRadio";
	_unit addItemToUniform "ACE_personalAidKit";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_packingBandage";
	_unit addItemToUniform "ACE_packingBandage";
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};

	
	switch (_type) do
	{
		case "SL":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			_unit addItem "ACE_MapTools";
			_unit addWeapon "Binocular";
			_unit addItem "ACRE_PRC148";
			_unit addItem "ACE_microDAGR";
			
			//Weapons
			_unit addWeapon "rhs_weap_m4a1_grip";
			_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		};
		
		case "RIFLE":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			
			//Weapons
			_unit addWeapon "rhs_weap_m4a1_grip";
			_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "rhs_weap_M136";
		};
		
		case "JTAC":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_bare_norotos_arc_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			_unit addItem "ACE_MapTools";
			_unit addWeapon "Laserdesignator_03";
			_unit addItem "ACRE_PRC148";
			_unit addItem "ACE_microDAGR";
			_unit addItemToBackpack "ACRE_117f";
			
			//Weapons
			_unit addWeapon "rhs_weap_mk18_KAC";
			_unit addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "ACE_optic_Hamr_PIP";
			_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		};
		
		case "MG":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_SAW";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Ammo
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			
			//Weapons
			_unit addWeapon "rhs_weap_m249_pip";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		};
		
		case "GL":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";
			
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			
			_unit addMagazine "1Rnd_Smoke_Grenade_shell";
			_unit addMagazine "1Rnd_Smoke_Grenade_shell";
			_unit addMagazine "1Rnd_Smoke_Grenade_shell";
			_unit addMagazine "1Rnd_Smoke_Grenade_shell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			_unit addWeapon "Binocular";
			
			//Weapons
			_unit addWeapon "rhs_weap_m4a1_m203";
			_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "rhs_weap_M136";
		};
		
		case "MEDIC":
		{
			//Clothing
			_unit addHeadgear "rhsusf_mich_helmet_marpatwd_alt_headset";
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "tin_backpack_indus_ocp";
			
			//Medical
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_personalAidKit";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_surgicalKit";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_atropine";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			
			//Weapons
			_unit addWeapon "rhs_weap_m4a1_grip";
			_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		};
	};
