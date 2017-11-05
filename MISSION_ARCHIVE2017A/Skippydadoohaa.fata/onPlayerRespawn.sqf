//[<newUnit>,<oldUnit>,<respawn>,<respawnDelay>]

_unit = _this select 0;
_oldUnit = _this select 1;

if (side _unit == east) then {

_chosenHeadgear = O_headgear call BIS_fnc_selectRandom;
_chosenUniform = O_uniform call BIS_fnc_selectRandom;

_unit addHeadgear _chosenHeadgear;
_unit forceAddUniform _chosenUniform;
_unit addvest O_vest;

_unit addItem "ACE_morphine";
_unit addItem "ACE_EarPlugs";
_unit addItem "ACE_elasticBandage";
_unit addItem "ACE_elasticBandage";
_unit addItem "ACE_packingBandage";
_unit addItem "ACE_packingBandage";
_unit addItem "ItemMap";
_unit addItem "ItemWatch";
_unit addItem "ItemCompass";
_unit additem "rds_weap_latarka_janta";

_rand = floor (random 9);

switch (_rand) do {
    case 0: {
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addweapon ( ["rhs_weap_akm","rhs_weap_akms","hlc_rifle_ak47"] call BIS_fnc_selectRandom);
	}; 
	case 1: {
		_unit addMagazine "rhs_30Rnd_545x39_AK";
		_unit addMagazine "rhs_30Rnd_545x39_AK";
		_unit addMagazine "rhs_30Rnd_545x39_AK";
		_unit addMagazine "rhs_30Rnd_545x39_AK";
		_unit addMagazine "rhs_30Rnd_545x39_AK";
		_unit addweapon ( ["hlc_rifle_ak74","hlc_rifle_ak74_dirty","hlc_rifle_ak74_dirty2","hlc_rifle_aks74","rhs_weap_aks74u"] call BIS_fnc_selectRandom);
	};
	case 2: {
		_unit addMagazine "rhs_30Rnd_762x39mm";
		_unit addMagazine "rhs_30Rnd_762x39mm";
		_unit addMagazine "rhs_30Rnd_762x39mm";
		_unit addMagazine "rhs_30Rnd_762x39mm";
		_unit addMagazine "rhs_30Rnd_762x39mm";
		_unit addweapon ( ["rhs_weap_m70ab2","rhs_weap_m70b1","rhs_weap_m70ab2","rhs_weap_m92"] call BIS_fnc_selectRandom);
	};
	case 3: {
		_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_unit addweapon ( ["RH_M16a1","RH_M16A2"] call BIS_fnc_selectRandom);
	};
	case 4: {
		_unit addMagazine "LOP_10rnd_77mm_mag";
		_unit addMagazine "LOP_10rnd_77mm_mag";
		_unit addMagazine "LOP_10rnd_77mm_mag";
		_unit addMagazine "LOP_10rnd_77mm_mag";
		_unit addMagazine "LOP_10rnd_77mm_mag";
		_unit addweapon ( ["LOP_Weap_LeeEnfield","LOP_Weap_LeeEnfield"] call BIS_fnc_selectRandom);
	};
	case 5: {
		_unit addMagazine "rhsgref_5Rnd_762x54_m38";
		_unit addMagazine "rhsgref_5Rnd_762x54_m38";
		_unit addMagazine "rhsgref_5Rnd_762x54_m38";
		_unit addMagazine "rhsgref_5Rnd_762x54_m38";
		_unit addMagazine "rhsgref_5Rnd_762x54_m38";
		_unit addweapon ( ["rhs_weap_m38","rhs_weap_m38"] call BIS_fnc_selectRandom);
	};
	case 6: {
		_unit addBackpack "rhs_rpg_empty";
		_unit addMagazine "rhs_rpg7_OG7V_mag";
		_unit addMagazine "rhs_rpg7_PG7VL_mag";
		_unit addMagazine "rhs_rpg7_PG7VL_mag";
		_unit addMagazine "rhs_mag_9x18_8_57N181S";
		_unit addMagazine "rhs_mag_9x18_8_57N181S";
		_unit addMagazine "rhs_mag_9x18_8_57N181S";
		_unit addweapon "rhs_weap_makarov_pm";
		_unit addweapon "rhs_weap_rpg7";
	};
	case 7: {
		_unit addBackpack "rhs_sidor";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addMagazine "hlc_75Rnd_762x39_m_rpk";
		_unit addweapon "hlc_rifle_rpk";
	};
	case 8: {
		_unit addBackpack "rhs_sidor";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addMagazine "rhs_45Rnd_545X39_AK";
		_unit addweapon "hlc_rifle_rpk74n";
	};
    default {
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addMagazine "rhs_30Rnd_762x39mm_89";
		_unit addweapon ( ["rhs_weap_akm","rhs_weap_akms","hlc_rifle_ak47"] call BIS_fnc_selectRandom);
	}; 
};

};