waitUntil {!isNull player};       //to prevent MP / JIP issues

	_unit = _this select 0;
	removeallweapons _this;
   Removeheadgear _this;
   removeBackpack _this;
   removeVest _this;
   _this unassignItem "NVGoggles";
   _this removeItem "NVGoggles";     

        _this addHeadgear 'H_mas_usr_HelmetB_d'
        _this addVest 'V_mas_usr_PlateCarrier2_rgr_d';
        _this addBackpack 'B_mas_Kitbag_des';
        _this addWeapon 'LMG_mas_M249a_F';
        _this addPrimaryWeaponItem 'optic_mas_aim';
        _this addPrimaryWeaponItem 'acc_pointer_IR';
        _this addWeapon 'hgun_mas_m9_F';
        _this addGoggles 'G_Aviator';
	
		_this addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_this addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_this addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_this addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 
		_this addMagazine ["200Rnd_mas_556x45_T_Stanag", 200]; 

		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 

		_this addMagazine "HandGrenade";
		_this addMagazine "SmokeShellRed";
		_this addMagazine "SmokeShell";
		_this addMagazine "SmokeShell";
					
		_this addItem "FirstAidKit";
		_this addItem "FirstAidKit";

if(true) exitWith{};
