waitUntil {!isNull player};       //to prevent MP / JIP issues
hint "respawn";
	_unit = _unit select 0;
	removeallweapons _unit;
   Removeheadgear _unit;
   removeBackpack _unit;
   removeVest _unit;
   _unit unassignItem "NVGoggles";
   _unit removeItem "NVGoggles";     

        _unit addHeadgear 'H_mas_usr_beret'
        _unit addVest 'V_mas_usr_PlateCarrierGL_rgr_d';
        _unit addBackpack 'B_mas_Kitbag_des';
        _unit addWeapon 'arifle_mas_m4_m203';
        _unit addPrimaryWeaponItem 'optic_MRCO';
        _unit addPrimaryWeaponItem 'acc_pointer_IR';
        _unit addWeapon 'hgun_mas_acp_F';
		_unit addHeadGear 'LOG_Shemagh_Tan';
		
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_unit addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		
		_unit addMagazine ["10Rnd_mas_45acp_Mag", 10]; 
		_unit addMagazine ["10Rnd_mas_45acp_Mag", 10]; 
		_unit addMagazine ["10Rnd_mas_45acp_Mag", 10]; 
		_unit addMagazine ["10Rnd_mas_45acp_Mag", 10]; 
		
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_HE_Grenade_shell", 1]; 
		
		_unit addMagazine ["1Rnd_SmokeRed_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_SmokeRed_Grenade_shell", 1]; 
		
		_unit addMagazine ["1Rnd_SmokeGreen_Grenade_shell", 1]; 
		_unit addMagazine ["1Rnd_SmokeGreen_Grenade_shell", 1]; 

		_unit addMagazine "HandGrenade";
		_unit addMagazine "HandGrenade";
		_unit addMagazine "SmokeShell";
		_unit addMagazine "SmokeShell";
		_unit addMagazine "SmokeShellRed";
		_unit addMagazine "SmokeShellRed";
		_unit addMagazine "SmokeShellGreen";
		_unit addMagazine "SmokeShellGreen";

		_unit addItem "FirstAidKit";
		_unit addItem "Rangefinder";


if(true) exitWith{};
