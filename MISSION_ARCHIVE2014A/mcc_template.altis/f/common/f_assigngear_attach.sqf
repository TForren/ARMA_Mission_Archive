// F3 - Folk ARPS Attachment Gear Script
// Credits: Head

// Get the weapon class of the _unit
_wepClass = primaryweapon _unit;
switch(_wepClass) do
{
	// if _wepClass corrosponds to the faction assingned _rifle then..
	case _rifle: 
	{
		// Check if there is a attachment array for this weapon
		if(!isnil "_rifle_attach") then
		{
			// If there is grab the primaryweapons already on the units gun by default
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				// loop trough the attachments and add them to the weapon
				_unit addPrimaryWeaponItem _x;
			} foreach _rifle_attach;
		};
	};
	case _carbine: 
	{
		if(!isnil "_carbine_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _carbine_attach;
		};
	};
	case _glrifle: 
	{
		if(!isnil "_glrifle_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _glrifle_attach;
		};
	};
	case _smg: 
	{
		if(!isnil "_smg_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _smg_attach;
		};
	};
	case _AR: 
	{
		if(!isnil "_AR_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _AR_attach;
		};
	};
	case _MMG: 
	{
		if(!isnil "_MMG_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _MMG_attach;
		};
	};
	case _SNrifle: 
	{
		if(!isnil "_SNrifle_attach") then
		{
			_wepItems = primaryWeaponItems _unit;
			{
				if (_x != "") then {
					_unit removePrimaryWeaponItem _x;
					_unit removeItem _x;
					};
			} foreach _wepItems;
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _SNrifle_attach;
		};
	};
	case _diverWep:
		{
			if(!isnil "_diverWep_attach") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _diverWep_attach;
			};
	};
	//=======================SF==============================================
	case _SFglrifle:
		{
			if(!isnil "_SFglrifle_attach") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _SFglrifle_attach;
			};
	};
	
	case _SFMMG:
		{
			if(!isnil "_SFMMG_attach") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _SFMMG_attach;
			};
	};
	
	case _SFMrkrifle:
		{
			if(!isnil "_SFMarkrifle_attach") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _SFMarkrifle_attach;
			};
		};
	
	case _SFrifle:
		{
			if(!isnil "_SFrifle_attach") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _SFrifle_attach;
			};
		};
	case _sniperRifle:
		{
			if(!isnil "_sniperRifle") then
			{
				_wepItems = primaryWeaponItems _unit;
				{
					if (_x != "") then {
						_unit removePrimaryWeaponItem _x;
						_unit removeItem _x;
						};
				} foreach _wepItems;
				{
					_unit addPrimaryWeaponItem _x;
				} foreach _sniperRifle_attach;
			};
		};
};