#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

removeAllWeapons _unit;
removeAllAssignedItems _unit;
clearAllItemsFromBackpack _unit;
removeAllContainers _unit;
removeHeadgear _unit;


	switch (_type) do
	{
			case "SL":
			
		{	

		   
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Officer";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";	   
		   
		   _unit addWeapon "ItemRadio";
			_unit addWeapon "Binocular";
			_unit addItem "ACRE_PRC148";
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];
			_unit addMagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addMagazine "smokeshell";
			_unit addMagazine "smokeshell";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";			
			
			

		};
		
			case "TL":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
			_unit addWeapon "ItemRadio";	
			_unit addItem "ACRE_PRC148";			
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];
			_unit addMagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addMagazine "smokeshell";
			_unit addMagazine "smokeshell";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";				
			(unitBackpack _unit) addItemCargoGlobal ["SatchelCharge_Remote_Mag", 2];
			_unit addWeapon "Binocular";
		
			};

			case "UGL":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Grenadier";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
			
			_unit addWeapon "ItemRadio";			
			_unit addMagazines ["UK3CB_BAF_30Rnd", 8];
			_unit addMagazine "UK3CB_BAF_30Rnd_T";
			_unit addMagazine "smokeshell";
			_unit addMagazine "smokeshell";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			(unitBackpack _unit) addItemCargoGlobal ["rhsusf_100Rnd_762x51", 1];
			(unitBackpack _unit) addItemCargoGlobal ["rhs_200rnd_556x45_M_SAW", 1];
			(unitBackpack _unit) addItemCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
			_unit addWeapon "UK3CB_BAF_L85A2_UGL_HWS";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";				
			
		};

			case "CMT":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Medic";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_C";
		   _unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_A";		   
			
			_unit addWeapon "ItemRadio";			
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];					
			_unit addMagazine "smokeshell";
			_unit addMagazine "smokeshell";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "rhs_mag_m67";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";				
			(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing", 5];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 3];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage", 3];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_packingBandage", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_salineIV", 5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 15];
		};			

			case "LMG":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S6_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_D";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
		   
			_unit addWeapon "ItemRadio";			
			_unit addMagazine "CUP_100Rnd_TE4_Green_Tracer_556x45_M249";
			_unit addMagazine "CUP_100Rnd_TE4_Green_Tracer_556x45_M249";
			_unit addItem "ACE_SpareBarrel";
			_unit addMagazine "CUP_100Rnd_TE4_Green_Tracer_556x45_M249";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addWeapon "CUP_lmg_minimipara";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
		};					
		
		case "GPMG":
		{
	
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S6_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   	
			
			_unit addWeapon "ItemRadio";			
			_unit addMagazine "rhsusf_50Rnd_762x51";
			_unit addMagazine "rhsusf_50Rnd_762x51";
			_unit addMagazine "rhsusf_50Rnd_762x51";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addWeapon "rhs_weap_m240B_CAP";
			_unit addMagazine "rhsusf_50Rnd_762x51";			
			_unit addMagazine "rhsusf_50Rnd_762x51";
			_unit addMagazine "rhsusf_50Rnd_762x51";		
			_unit addMagazine "rhsusf_50Rnd_762x51";			
			
		};					
		
		case "MM":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S6_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
		   
			_unit addWeapon "ItemRadio";			
			_unit addMagazines ["UK3CB_BAF_20Rnd", 7];	
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addWeapon "UK3CB_BAF_L129A1_Grippod";
			_unit addPrimaryWeaponItem "UK3CB_BAF_TA648";			
			
		};							
		
		
		case "RM":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
		   
			_unit addWeapon "ItemRadio";	
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];					
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			(unitBackpack _unit) addItemCargoGlobal ["UK3CB_BAF_75Rnd", 1];
			(unitBackpack _unit) addItemCargoGlobal ["UK3CB_BAF_200Rnd", 1];
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";		
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			
		};	
		
				case "MORTAR":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S6_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
		   
			_unit addWeapon "ItemRadio";	
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];					
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			(unitBackpack _unit) addItemCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_shells", 4];
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";		
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addWeapon "UK3CB_BAF_L16";
			_unit addItem "ACE_MapTools";
			_unit addItem "ACE_RangeTable_82mm";
			_unit addItem "ACE_ReportCard";
			
		};	
		
						case "MORTARA":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S6_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";
		   _unit addBackpack "CUP_B_USMC_AssaultPack";		   
		   
			_unit addWeapon "ItemRadio";	
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];					
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			(unitBackpack _unit) addItemCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_shells", 4];
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";		
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addWeapon "UK3CB_BAF_L16_Tripod";
			
		};	
				case "Sig":
		{
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_C";
		   _unit addBackpack "UK3CB_BAF_B_Bergen_MTP_JTAC_H_A";		   
			
			_unit addWeapon "ItemRadio";		
			_unit addItem "ACRE_PRC148";
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];			
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC117F", 1];
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";			
			_unit addPrimaryWeaponItem "CUP_acc_LLM";	
			_unit addItem "ACE_ReportCard";

			
			};
		
		case "LAT":
		{
	
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";	   
			
			_unit addWeapon "ItemRadio";		
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";					
			_unit addItemToBackpack "rhs_m136_hedp_mag";
			_unit addWeapon "rhs_weap_M136_hedp";
		
			
		};
				case "JAV":
		{
	
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";	   
			
			_unit addWeapon "ItemRadio";		
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";					
			_unit addWeapon "UK3CB_BAF_Javelin_Slung_Tube";
			_unit addWeapon "UK3CB_BAF_Javelin_CLU";
		
			
		};
						case "JAVA":
		{
	
			
		   _unit forceAddUniform "CUP_U_B_BAF_MTP_S5_UnRolled";
		   _unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2";
		   _unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_B";	   
			
			_unit addWeapon "ItemRadio";		
			_unit addMagazine "rhs_mag_m67";
			_unit addMagazine "smokeshell";
			_unit addMagazines ["CUP_30Rnd_556x45_Stanag", 8];
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addmagazine "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			_unit addWeapon "CUP_arifle_L85A2_G";
			_unit addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS_Dot";
			_unit addPrimaryWeaponItem "CUP_acc_LLM";					
			_unit addWeapon "UK3CB_BAF_Javelin_Slung_Tube";
		
			
		};
		
		
			
	};
		
		
	_unit addWeapon "ItemMap";
	_unit addWeapon "ItemCompass";
	_unit addWeapon "ItemWatch";
	_unit addItem "ACE_tourniquet";
	_unit addItem "ACE_packingBandage";
	_unit addItem "ACE_morphine";
	_unit addItem "ACE_fieldDressing";
	_unit addItem "ACE_fieldDressing";
	_unit addItem "ACE_elasticBandage";
	_unit addItem "rhsusf_ANPVS_14";
	_unit addItem "ACE_EarPlugs";
