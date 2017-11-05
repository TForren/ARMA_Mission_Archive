_backpacks = [];
_uniforms = [];
_vests = [];
_hats = []; 
_handWeaponsCfg = [];
_RiflesCfg = [];
_machinegunsCfg = [];
_LaunchersCfg = [];
_opticsCfg = [];
_muzzleCfg = [];
_accCfg = [];
_glasses = []; 
_heads = []; 

// Backpacks
_count =  count (configFile >> "CfgVehicles");
for "_x" from 0 to (_count-1) do
{
  _item=((configFile >> "CfgVehicles") select _x);
  if (isClass _item) then
  {
    if (getnumber (_item >> "scope") == 2) then  
    {
      if (gettext (_item >> "vehicleClass") == "Backpacks") then  
      {
        _backpacks = _backpacks + [configname _item]
};};};};


// CfgWeapons stuff, most gear/weapons
_count =  count (configFile >> "CfgWeapons");
for "_x" from 0 to (_count-1) do
{
  _item=((configFile >> "CfgWeapons") select _x);
  if (isClass _item) then
  {
    if (getnumber (_item >> "scope") == 2) then  // public
    {
	  if (isClass (_item >> "ItemInfo")) then {
	  
		_infoType = (getnumber (_item >> "ItemInfo" >> "Type"));
		
		switch (_infoType) do
		{
			case 201: {_opticsCfg = _opticsCfg + [configName _item];}; 
			case 101: {_muzzleCfg = _muzzleCfg + [configName _item];};
			case 301: {_accCfg = _accCfg + [configName _item];}; 
			case 605: {_hats = _hats + [configName _item];}; 
			case 801: {_uniforms = _uniforms + [configName _item];}; 
			case 701: {_vests = _vests + [configName _item];}; 
		}; 
	  };
	  
      if (count(getarray (_item >> "magazines")) !=0 ) then  //WeaponHardMounted
      {
        _type = getnumber (_item >> "type");
        if (_type == 2) then  //WeaponSlotHandGun
        {
          _handWeaponsCfg = _handWeaponsCfg + [configName _item];
        }
        else
        {
          if (_type == 1) then  //WeaponSlotPrimary
          {
            _RiflesCfg = _RiflesCfg + [configName _item];
          }
          else
          {
            if (_type == 1+4) then  //WeaponSlotPrimary + WeaponSlotSecondary
            {
              _machinegunsCfg = _machinegunsCfg + [configName _item];
            }
            else
            {
              if (_type == 4) then  //WeaponSlotSecondary
              {
                _LaunchersCfg = _LaunchersCfg + [configName _item];
              };
            };
          };
        };
      };
    };
  };
};

// Glasses
_count =  count (configFile >> "CfgGlasses");
for "_x" from 0 to (_count-1) do
{
	_item=((configFile >> "CfgGlasses") select _x);
	if (isClass _item) then
	{
		if (getnumber (_item >> "scope") == 2) then  // public
		{_glasses = _glasses + [configName _item];};
	};
};

// Faces
_count =  count (configFile >> "CfgFaces" >> "Man_A3");
for "_x" from 0 to (_count-1) do
{
	_item=((configFile >> "CfgFaces" >> "Man_A3") select _x);
	if (isClass _item) then {_heads = _heads + [configName _item];};
};

dsl_BackpackTypes = [""] + _backpacks;
dsl_UniformTypes = [""] + _uniforms;
dsl_VestTypes = [""] + _vests;
dsl_HatTypes = [""] + _hats;
dsl_Glasses = [""] + _glasses; 
dsl_WeaponListPistols = [""] + _handWeaponsCfg;
dsl_WeaponListPrimaries = [""] + _riflesCfg + _machinegunsCfg;
dsl_CurrentOpticTypes = [""] + _opticsCfg;
dsl_Launchers = [""] + _LaunchersCfg; 
dsl_WeaponAccessoryTypes = [""] + _accCfg; 
dsl_Heads = [""] + _heads; 
dsl_Muzzle = [""] + _muzzleCfg; 