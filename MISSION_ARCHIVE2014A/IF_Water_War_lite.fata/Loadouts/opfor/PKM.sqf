//CAF_AK47 Loadout

_box = _this select 0; 
_unit = _this select 1;
_id = _this select 2;  


if (!isNull _unit) then {
    removeAllWeapons _unit;
	_unit addVest 'V_BandollierB_cbr';

	_unit addWeapon 'CAF_PKM';

	_unit addMagazine 'CAF_100RND_762x54_PKM';
	_unit addMagazine 'CAF_100RND_762x54_PKM';
	_unit addMagazine 'CAF_100RND_762x54_PKM';
	_unit addMagazine 'CAF_100RND_762x54_PKM';
	_unit addMagazine 'CAF_100RND_762x54_PKM';
	_unit addMagazine 'CAF_100RND_762x54_PKM';


	_unit addMagazine 'SmokeShell';
	_unit addItem 'itemMap';
	_unit assignItem 'itemMap';
	_unit addItem 'itemWatch'; 
	_unit assignItem 'itemWatch';

	_unit addItem 'AGM_EarBuds';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';
	_unit addItem 'AGM_Bandage';

    _unit selectWeapon "this";
    reload _unit;
};
