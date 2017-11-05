waitUntil {!isNull player};       //to prevent MP / JIP issues

_box = _unit select 0; 
_unit = _unit select 1;
_id = _unit select 2;  

if (side _user == west) then {
	removeallweapons _unit;
   Removeheadgear _unit;
   removeBackpack _unit;
   removeVest _unit;
   _unit unassignItem "NVGoggles";
   _unit removeItem "NVGoggles";     

        _unit addHeadgear 'H_mas_usr_HelmetB_d'
        _unit addVest 'V_mas_usr_PlateCarrier2_rgr_d';
        _unit addBackpack 'B_mas_Kitbag_des';
        _unit addWeapon 'LMG_mas_M249a_F';
        _unit addPrimaryWeaponItem 'optic_mas_aim';
        _unit addPrimaryWeaponItem 'acc_pointer_IR';
        _unit addWeapon 'hgun_mas_m9_F';
        _unit addGoggles 'G_Aviator';
	
		_unit addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_unit addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_unit addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_unit addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_unit addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 

		_unit addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_unit addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_unit addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_unit addMagazine ["15Rnd_mas_9x21_Mag", 15]; 

		_unit addMagazine "HandGrenade";
		_unit addMagazine "SmokeShellRed";
		_unit addMagazine "SmokeShell";
		_unit addMagazine "SmokeShell";
					
		_unit addItem "FirstAidKit";
		_unit addItem "FirstAidKit";
}
else {
_user sidechat "bloop; 
};

if(true) exitWith{};
