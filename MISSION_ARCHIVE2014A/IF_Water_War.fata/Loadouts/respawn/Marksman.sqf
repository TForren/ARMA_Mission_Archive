		waitUntil {!isNull player};       //to prevent MP / JIP issues

	_unit = _this select 0;
	removeallweapons _this;
   Removeheadgear _this;
   removeBackpack _this;
   removeVest _this;
   _this unassignItem "NVGoggles";
   _this removeItem "NVGoggles";     

        _this addHeadgear 'H_Cap_tan'
        _this addVest 'V_mas_usr_PlateCarrier1_rgr_d';
        _this addBackpack 'B_AssaultPack_cbr';
        _this addWeapon 'srifle_mas_sr25';
        _this addPrimaryWeaponItem 'optic_mas_zeiss';
        _this addPrimaryWeaponItem 'acc_pointer_IR';
        _this addWeapon 'hgun_mas_m9_F';
        _this addGoggles 'G_Shades_Black';
	
		_this addMagazine ["20Rnd_mas_762x51_Stanag", 20]; 
		_this addMagazine ["20Rnd_mas_762x51_Stanag", 20]; 
		_this addMagazine ["20Rnd_mas_762x51_Stanag", 20]; 
		_this addMagazine ["20Rnd_mas_762x51_Stanag", 20]; 
		
		_this addMagazine ["20Rnd_mas_762x51_T_Stanag", 20]; 
		_this addMagazine ["20Rnd_mas_762x51_T_Stanag", 20]; 
		_this addMagazine ["20Rnd_mas_762x51_T_Stanag", 20]; 


		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 
		_this addMagazine ["15Rnd_mas_9x21_Mag", 15]; 

		_this addMagazine "HandGrenade";
		_this addMagazine "SmokeShell";

					
		_this addItem "Rangefinder";
		
		_this addItem "FirstAidKit";
		_this addItem "FirstAidKit";

if(true) exitWith{};
