// group this setGroupId ["1'6"]; id = ["GenericSL", this] call compile preprocessFileLineNumbers "customization\E1.sqf";
// [this, "UNICEF Hemmit", "USARMY"] call FNC_TrackAsset;
// [this, "Entrenched DShK", "INSURGENT"] call FNC_TrackAsset;
// [group this, getPos this, 135] call BIS_fnc_taskPatrol;
// {deleteVehicle _x} forEach (crew vehicle this) + [vehicle this]
	
	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemGPS";

	
	switch (_type) do
	{
		case "GenericSL":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
_unit addItemToVest "ACRE_PRC148";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 6 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addHeadgear "H_HelmetB_TI_tna_F";
		};
				
		case "Medic":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_Bergen_tna_F";
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
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
(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 8];
(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 5];
_unit addHeadgear "H_HelmetB_TI_tna_F";
		};

		case "Generic":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 6 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addHeadgear "H_HelmetB_TI_tna_F";
		};
		
		case "GenericGL":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 6 do {_unit addItem "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_AssaultPack_tna_F";
for "_i" from 1 to 4 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 4 do {_unit addItem "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {_unit addItem "1Rnd_SmokeRed_Grenade_shell";};
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addHeadgear "H_HelmetB_TI_tna_F";
		};
		
		case "GenericAT":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_Bergen_tna_F";
for "_i" from 1 to 2 do {_unit addMagazine "tb_mk13_heat";};
for "_i" from 1 to 1 do {_unit addMagazine "tb_mk13_hedp";};
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addHeadgear "H_HelmetB_TI_tna_F";
_unit addWeapon "tb_launcher_mk13";
		};
		
		case "GenericAAT":
		{
_unit forceAddUniform "U_B_CTRG_Soldier_F";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "V_PlateCarrier1_tna_F";
for "_i" from 1 to 8 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_personalAidKit";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_Bergen_tna_F";
for "_i" from 1 to 2 do {_unit addMagazine "tb_mk13_heat";};
for "_i" from 1 to 1 do {_unit addMagazine "tb_mk13_hedp";};
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addItemToBackpack "ACE_Vector";
_unit addHeadgear "H_HelmetB_TI_tna_F";
		};
					
	};
