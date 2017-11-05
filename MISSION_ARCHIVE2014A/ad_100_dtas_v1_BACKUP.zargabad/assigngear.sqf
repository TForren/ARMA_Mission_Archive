private ["_bGiveWeapons", "_aClassSide", "_currentClass", "_i", "_magCount", "_tempBackpackItems", "_backpack"];

_bGiveWeapons = _this select 0;

gearAssigned = false;

_aClassSide = nextAttackerSide;
if (_bGiveWeapons) then
{
	_aClassSide = attackerSide;
};
_currentClass = currentDClass;
if (_aClassSide == sidePlayer) then
{
	_currentClass = currentAClass;
};

if (!_bGiveWeapons) then
{
	hint ((format [localize "STR_SelectedClass", _currentClass select 0]) + " " + (localize "STR_WeaponsWillBeGiven"));
};

removeAllWeapons player;
removeUniform player;
removeBackPack player;
removeVest player;
removeHeadGear player;
removeAllAssignedItems player;

player addWeapon "ItemMap";
player addWeapon "ItemCompass";
player addWeapon "ItemWatch";
player addWeapon "ItemGPS";

[_bGiveWeapons] call compile preprocessFileLineNumbers "addradio.sqf";

currentUniform = _currentClass select 1;
player forceAddUniform currentUniform;
//player forceAddUniform (_currentClass select 1);
//player setVariable ["currentUniform", (_currentClass select 1), true];

if ((_currentClass select 2) != "") then
{
	player addVest (_currentClass select 2);
};
_backpack = _currentClass select 3;
if (_backpack != "" && _bGiveWeapons) then
{
	player addBackpack _backpack;
};
if ((_currentClass select 4) != "") then
{
	if (hasMitsnefet && (_aClassSide == sidePlayer)) then
	{
		player addHeadgear mitsnefetHelmet;
	}
	else
	{
		player addHeadgear (_currentClass select 4);
	};
};
if ((_currentClass select 5) != "") then
{
	player linkItem (_currentClass select 5);
};

if (_bGiveWeapons) then
{
	
	// Fix for lack of room for launcher ammo in vest
	if (_backpack == "") then
	{
		player addBackPack "B_Bergen_sgg";
	};
	
	// Add 1 of each magazine
	
	{
		if ((_x select 1) > 0) then
		{
			player addMagazine (_x select 0);
		};
	} forEach (_currentClass select 7);

	// Add weapons
	{
		player addWeapon _x;
	} forEach (_currentClass select 6);
	
	// Fix for lack of room for launcher ammo in vest
	if (_backpack == "") then
	{
		_tempBackpackItems = backpackItems player;
		removeBackPack player;
		{player addMagazine _x} forEach _tempBackpackItems;
	};
	
	// Add rest of magazines
	{
		_magCount = (_x select 1) - 1;
		if (_magCount > 0) then
		{
			player addMagazines [_x select 0, _magCount];
		};
	} forEach (_currentClass select 7);

	_primaryWeapon = primaryWeapon player;
	if (_primaryWeapon != "") then
	{
		player selectWeapon _primaryWeapon;
		// Fix for weapons with grenade launcher
		_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
		player selectWeapon (_muzzles select 0);
	};
	
	{
		player addPrimaryWeaponItem _x;
	} forEach (_currentClass select 9);
	
	{
		player addHandgunItem _x;
	} forEach (_currentClass select 10);
};

// Add items
{
	for "_i" from 1 to (_x select 1) do
	{
		player addItem (_x select 0);
	};
} forEach (_currentClass select 8);

if ((!(_bGiveWeapons)) && (nightVision >= 0)) then
{
	player linkItem "NVGoggles";
}
else
{
	if ((nightVision > 0) && (_aClassSide == sidePlayer)) then
	{
		player linkItem "NVGoggles";
	}
	else
	{
		if (nightVision > 1) then
		{
			player linkItem "NVGoggles";
		};
	};
};

if (!(player hasWeapon "Rangefinder")) then
{
	player addWeapon "Binocular";
};

gearAssigned = true;