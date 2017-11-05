	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	clearWeaponCargo _unit;
	clearMagazineCargo _unit;
	removeallweapons _unit;
	removeAllAssignedItems _unit;
	
	_unit forceAddUniform "rhs_uniform_cu_ocp";
	
	_unit addItem "ACE_MapTools";
	_unit addWeapon "ItemMap";
	_unit addWeapon "ItemCompass";
	_unit addWeapon "ItemWatch";
	_unit addWeapon "ItemRadio";
	_unit addWeapon "rhsusf_ANPVS_14";
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
			//Clothing
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
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
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
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
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
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
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			_unit addItem "ACE_MapTools";
			_unit addWeapon "Laserdesignator_03";
			_unit addItem "ACRE_PRC148";
			_unit addItem "ACE_microDAGR";
			_unit addItemToBackpack "ACRE_PRC117f";
			
			//Weapons
			_unit addWeapon "rhs_weap_mk18_KAC";
			_unit addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
			_unit addPrimaryWeaponItem "ACE_optic_Hamr_PIP";
			_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		};
		
		case "AR":
		{
			//Clothing
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_SAW";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
			//Ammo
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
			_unit addMagazine "rhsusf_200Rnd_556x45_soft_pouch";
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
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
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
		
		case "240":
		{
			//Clothing
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_SAW";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
			//Ammo
			_unit addMagazine "rhsusf_100Rnd_762x51";
			_unit addMagazine "rhsusf_100Rnd_762x51";
			_unit addMagazine "rhsusf_100Rnd_762x51";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
			
			//Weapons
			_unit addWeapon "rhs_weap_m240B";
			_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
		};
		
		case "AT":
		{
			//Clothing
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
			//Ammo
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "tb_mk13_hedp";
			_unit addMagazine "tb_mk13_heat";
			_unit addMagazine "tb_mk13_heat";
			_unit addMagazine "tb_mk13_hedp";
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
			_unit addWeapon "tb_launcher_mk13";
		};
		
		case "MEDIC":
		{
			//Clothing
			_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
			
			_unit addVest "rhsusf_iotv_ocp_Medic";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			
			//Medical
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_personalAidKit";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_surgicalKit";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_atropine";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
			
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
		
		case "PlanePilot":
		{
			//Clothing
			_unit addHeadgear "H_PilotHelmetFighter_B";
			_unit forceAddUniform "U_I_pilotCoveralls";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACRE_PRC117f";
			
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
		};
		
		case "HeloPilot":
		{
			//Clothing
			_unit addHeadgear "H_PilotHelmetHeli_B";
			_unit addVest "rhsusf_iotv_ucp_Medic";
			_unit forceAddUniform "rhs_uniform_cu_ucp";
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACRE_PRC117f";
			
			_unit addMagazine "SmokeShell";
			_unit addMagazine "SmokeShell";

			//Gear
			_unit addItem "ACE_EarPlugs";
		};
		
		case "HeloCrew":
		{
			//Clothing
			_unit addHeadgear "H_CrewHelmetHeli_B";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			
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
		
		case "HMMWV":
		{
			_unit addWeaponCargoGlobal ["launch_O_Titan_short_F",1];
			_unit addWeaponCargoGlobal ["rhs_weap_M136",3];
			_unit addMagazineCargoGlobal ["Titan_AT",2];
			
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];
			_unit addMagazineCargoGlobal ["SmokeShell",5];
			
			_unit addItemCargoGlobal ["ACE_quikclot",10];
			_unit addItemCargoGlobal ["ACE_personalAidKit",5];
			_unit addItemCargoGlobal ["ACE_morphine",10];
			_unit addItemCargoGlobal ["ACE_epinephrine",10];
			_unit addItemCargoGlobal ["ACE_atropine",10];
			_unit addItemCargoGlobal ["ACE_packingBandage",20];
			_unit addItemCargoGlobal ["ACE_fieldDressing",20];
			_unit addItemCargoGlobal ["ACE_elasticBandage",20];
			_unit addItemCargoGlobal ["ACE_tourniquet",10];
			_unit addItemCargoGlobal ["ACE_salineIV_500",6];
			_unit addItemCargoGlobal ["ACE_surgicalKit",5];
		};
	};