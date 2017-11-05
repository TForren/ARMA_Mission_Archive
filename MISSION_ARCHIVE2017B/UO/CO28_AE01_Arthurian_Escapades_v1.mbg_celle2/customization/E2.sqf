// group this setGroupId ["1'6"]; id = ["Sniper", this] call compile preprocessFileLineNumbers "customization\E2.sqf";
// [this, "UNICEF Hemmit", "USARMY"] call FNC_TrackAsset;
// [this, "Entrenched DShK", "INSURGENT"] call FNC_TrackAsset;
// [group this, getPos this, 135] call BIS_fnc_taskPatrol;
// {deleteVehicle _x} forEach (crew vehicle this) + [vehicle this]
	
	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	if (!local _unit) exitWith {};
	
	removeallweapons _unit;
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

		case "Sniper":
		{
_unit forceAddUniform "U_B_T_FullGhillie_tna_F";
_unit addItemToUniform "ACE_RangeCard";
_unit linkItem "O_NVGoggles_ghex_F";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_personalAidKit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addVest "V_TacChestrig_grn_F";
_unit addItemToVest "ACRE_PRC148";
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_M33";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_mk211";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_7x45acp_MHP";};
_unit addItemToVest "rhsusf_mag_7x45acp_MHP";
_unit addBackpack "B_AssaultPack_tna_F";
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addItemToBackpack "Rangefinder";
_unit addItemToBackpack "rhsusf_mag_7x45acp_MHP";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_10Rnd_STD_50BMG_mk211";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_10Rnd_STD_50BMG_M33";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
_unit addHeadgear "H_HelmetB_TI_tna_F";
_unit addWeapon "rhs_weap_M107_w";
_unit addPrimaryWeaponItem "RKSL_optic_PMII_525_wdl";
_unit addWeapon "rhsusf_weap_m1911a1";
		};
		
		case "Spotter":
		{
_unit forceAddUniform "U_B_T_FullGhillie_tna_F";
_unit addItemToUniform "ACRE_PRC343";
_unit linkItem "O_NVGoggles_ghex_F";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_Kestrel4500";
_unit addItemToUniform "ACE_ATragMX";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_personalAidKit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_RangeCard";
_unit addVest "V_TacChestrig_grn_F";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addBackpack "B_Bergen_tna_F";
_unit addItemToBackpack "G_Balaclava_TI_G_tna_F";
_unit addItemToBackpack "H_Booniehat_tna_F";
_unit addItemToBackpack "Rangefinder";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "ACE_SpottingScope";
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToBackpack "ACE_DAGR";
_unit addItemToBackpack "ACRE_PRC148";
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20Rnd_762x51_S_M14";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_50Rnd_762x51_B_M14";};
_unit addHeadgear "H_HelmetB_TI_tna_F";
_unit addWeapon "hlc_rifle_M14_Bipod_Rail";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_B";
_unit addPrimaryWeaponItem "RKSL_optic_PMII_312_sunshade_wdl";
_unit addWeapon "rhsusf_weap_m1911a1";
		};
					
	};
