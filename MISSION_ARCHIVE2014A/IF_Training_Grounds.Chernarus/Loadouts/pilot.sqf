// [this] call compile preprocessFileLineNumbers "scripts\loadout_med.sqf";

_box = _this select 0; 
_unit = _this select 1;
_id = _this select 2;  


if (!isNull _unit) then {
    removeAllWeapons _unit;
    removeAllItems _unit;
    removeBackpack _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeHeadgear _unit;
    removeGoggles _unit;
	
	comment "Add containers";
	_unit forceAddUniform "SP_0000_Standard_FieldUniform_Grey_SS";
	_unit addVest "SP_AssaultMolle1_Black";
	for "_i" from 1 to 4 do {_unit addItemToVest "9Rnd_45ACP_Mag";};
	_unit addItem 'AGM_EarBuds';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Morphine';
	_unit addItem 'AGM_Morphine';
	
	_unit addHeadgear "H_PilotHelmetHeli_B";
	_unit addGoggles "PU_shemagh_GryBLK";

	comment "Add weapons";
	_unit addWeapon "kae_m1911a1";

	comment "Add items";
	_unit linkItem "ItemWatch";
	_unit addItem 'tf_anprc152'; 
	_unit assignItem 'tf_anprc152';
	_unit linkItem "ItemGPS";


    _unit selectWeapon "this";
    reload _unit;
};

