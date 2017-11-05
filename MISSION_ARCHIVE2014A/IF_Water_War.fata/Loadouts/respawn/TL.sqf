		waitUntil {!isNull player};       //to prevent MP / JIP issues

	_unit = _this select 0;
	removeallweapons _this;
   Removeheadgear _this;
   removeBackpack _this;
   removeVest _this;
   _this unassignItem "NVGoggles";
   _this removeItem "NVGoggles";     

        _this addHeadgear 'H_mas_usr_Booniehat_des'
        _this addVest 'V_mas_usr_PlateCarrier2_rgr_d';
        _this addBackpack 'B_mas_Kitbag_des';
        _this addWeapon 'arifle_mas_m4';
        _this addPrimaryWeaponItem 'optic_MRCO';
        _this addPrimaryWeaponItem 'acc_pointer_IR';
        _this addWeapon 'hgun_mas_m9_F';
		_this addHeadGear 'LOG_Shemagh_Tan';
		
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 

		_this addMagazine "HandGrenade";
		_this addMagazine "HandGrenade";
		_this addMagazine "SmokeShell";
		_this addMagazine "SmokeShell";
		_this addMagazine "SmokeShellRed";
		_this addMagazine "SmokeShellRed";
		_this addMagazine "SmokeShellGreen";
		_this addMagazine "SmokeShellGreen";

		_this addItem "FirstAidKit";
		_this addItem "Rangefinder";


if(true) exitWith{};
