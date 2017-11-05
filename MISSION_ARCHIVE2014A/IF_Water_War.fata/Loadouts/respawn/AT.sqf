waitUntil {!isNull player};       //to prevent MP / JIP issues

	_unit = _this select 0;
	removeallweapons _this;
   Removeheadgear _this;
   removeBackpack _this;
   removeVest _this;
   _this unassignItem "NVGoggles";
   _this removeItem "NVGoggles";     

        _this addHeadgear 'H_mas_usr_HelmetB_light_d'
        _this addVest 'V_mas_usr_PlateCarrier2_rgr_d';
        _this addBackpack 'B_mas_AssaultPack_des_AT4';
        _this addWeapon 'arifle_mas_m4';
        _this addWeapon 'mas_launch_M136_F';
        _this addPrimaryWeaponItem 'optic_mas_Holosight_blk';
        _this addPrimaryWeaponItem 'acc_pointer_IR';
        _this addGoggles 'G_Tactical_Clear';
	
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 
		_this addMagazine ["30Rnd_mas_556x45_Stanag", 30]; 

		_this addMagazine ["mas_M136", 1]; 

		_this addMagazine "HandGrenade";
		_this addMagazine "HandGrenade";
		_this addMagazine "SmokeShell";

					
		_this addItem "FirstAidKit";
		_this addItem "FirstAidKit";

if(true) exitWith{};
