//Written by beta
//Kitout spawned AI


if (isServer) then
{
	private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;

	removeAllWeapons _unit;
	removeAllItems _unit;

	_unit addMagazine "ACE_SSWhite_FG";
	_unit addMagazine "ACE_Bandage";

	_unit addWeapon "ItemWatch";
	_unit addWeapon "ItemCompass";
	_unit addWeapon "ACE_GlassesGasMask_RU";
	_unit addWeapon "ACE_Earplugs";

	switch (_type) do
	{
		case "1ic":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6,7,8,9];
			{_unit addMagazine "HandGrenade_East";} forEach [1,2];
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_P159_RD90";
			_unit addWeapon "Binocular";
			_unit addWeapon "ItemMap";
			
			_unit setVariable ["ACE_RuckMagContents", [["30Rnd_545x39_AK", 6], ["ACE_30Rnd_545x39_T_AK", 2], ["HandGrenade_East", 1], ["SmokeShell", 1], ["SmokeShellRed", 1], ["SmokeShellGreen", 1], ["SmokeShellBlue", 1], ["SmokeShellYellow", 1], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2], ["ACE_Knicklicht_R", 2], ["ACE_Knicklicht_G", 2], ["ACE_Knicklicht_B", 1], ["ACE_Knicklicht_Y", 1]]];
		};
		
		case "2ic":
		{
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6,7,8,9];
			{_unit addMagazine "1Rnd_HE_GP25";} forEach [1,2,3,4,5,6];
			{_unit addMagazine "HandGrenade_East";} forEach [1,2];
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "AK_74_GL";
			_unit addWeapon "ACE_Rucksack_RD90";
			_unit addWeapon "Binocular";
			_unit addWeapon "ItemMap";
			
			_unit setVariable ["ACE_RuckMagContents", [["30Rnd_545x39_AK", 4], ["ACE_30Rnd_545x39_T_AK", 1], ["HandGrenade_East", 1], ["SmokeShell", 1], ["SmokeShellRed", 1], ["SmokeShellGreen", 1], ["SmokeShellBlue", 1], ["SmokeShellYellow", 1], ["ACE_SSWhite_FG", 3], ["ACE_Bandage", 3], ["ACE_Knicklicht_R", 2], ["ACE_Knicklicht_G", 2], ["ACE_Knicklicht_B", 1], ["ACE_Knicklicht_Y", 1], ["1Rnd_SMOKE_GP25", 4], ["1Rnd_SMOKERED_GP25", 2], ["1Rnd_SMOKEGREEN_GP25", 2], ["FlareRed_GP25", 2], ["FlareGreen_GP25", 2], ["FlareYellow_GP25", 2], ["1Rnd_HE_GP25", 8]]];
		};
		
		case "rfl":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6,7,8,9];
			{_unit addMagazine "HandGrenade_East";} forEach [1,2];
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_Rucksack_RD90";
			
			_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x54_PK", 1], ["30Rnd_545x39_AK", 8], ["ACE_30Rnd_545x39_T_AK", 1], ["HandGrenade_East", 2], ["SmokeShell", 2], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
		};
		
		case "gren":
		{
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6,7,8,9];
			{_unit addMagazine "1Rnd_HE_GP25";} forEach [1,2,3,4,5,6];
			{_unit addMagazine "HandGrenade_East";} forEach [1,2];
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "AK_74_GL";
			_unit addWeapon "ACE_Rucksack_RD90";
			
			_unit setVariable ["ACE_RuckMagContents", [["30Rnd_545x39_AK", 6], ["ACE_30Rnd_545x39_T_AK", 1], ["HandGrenade_East", 1], ["SmokeShell", 1], ["ACE_SSWhite_FG", 3], ["ACE_Bandage", 3], ["1Rnd_SMOKE_GP25", 4], ["1Rnd_HE_GP25", 16]]];
		};
		
		case "rflat":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6,7,8,9];
			{_unit addMagazine "HandGrenade_East";} forEach [1,2];
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_RPG22";
			
			_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x54_PK", 1], ["30Rnd_545x39_AK", 8], ["ACE_30Rnd_545x39_T_AK", 1], ["HandGrenade_East", 2], ["SmokeShell", 2], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
			_unit setVariable ["ACE_WeaponOnBack", "ACE_Rucksack_RD90"];
		};
		
		case "mg":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "100Rnd_762x54_PK";} forEach [1,2,3,4];
			_unit addMagazine "HandGrenade_East";
			_unit addMagazine "SmokeShell";
			
			_unit addWeapon "PK";
			_unit addWeapon "ACE_Rucksack_RD90";
			
			_unit setVariable ["ACE_RuckMagContents", [["HandGrenade_East", 1], ["SmokeShell", 1], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
		};
		
		case "rpg7":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4];
			_unit addMagazine "HandGrenade_East";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "OG7";
			{_unit addMagazine "PG7V";} forEach [1,2];
			
			_unit addWeapon "AK_74";
			_unit addWeapon "RPG7V";
			
			_unit setVariable ["ACE_RuckMagContents", [["OG7", 3], ["PG7V", 3], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
			_unit setVariable ["ACE_WeaponOnBack", "ACE_Rucksack_RD90"];
		};
		
		case "rpg29":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4,5,6];
			_unit addMagazine "HandGrenade_East";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "ACE_RPG29_TBG29";
			_unit addMagazine "ACE_RPG29_PG29";
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_RPG29";
			
			_unit setVariable ["ACE_RuckMagContents", [["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
			_unit setVariable ["ACE_WeaponOnBack", "ACE_Rucksack_RD90"];
		};
		
		case "agun":
		{
			_unit addMagazine "ACE_SSWhite_FG";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4];
			_unit addMagazine "HandGrenade_East";
			_unit addMagazine "SmokeShell";
			_unit addMagazine "PG7V";
			_unit addMagazine "ACE_RPG29_TBG29";
			_unit addMagazine "ACE_RPG29_PG29";
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_Rucksack_RD90";
			
			_unit setVariable ["ACE_RuckMagContents", [["OG7", 2], ["PG7V", 2], ["ACE_SSWhite_FG", 2], ["ACE_Bandage", 2]]];
		};
		
		case "med":
		{
			{_unit addMagazine "ACE_Bandage";} forEach [1,2,3,4];
			_unit addMagazine "ACE_Morphine";
			_unit addMagazine "ACE_Epinephrine";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3,4];
			{_unit addMagazine "SmokeShell";} forEach [1,2,3,4,5,6,7,8];
			
			_unit addWeapon "AK_74";
			_unit addWeapon "ACE_Rucksack_RD90";
			_unit addWeapon "ItemMap";
			
			_unit setVariable ["ACE_RuckMagContents", [["30Rnd_545x39_AK", 2], ["SmokeShell", 4], ["SmokeShellPurple", 2], ["ACE_SSWhite_FG", 3], ["ACE_Bandage", 30], ["ACE_Morphine", 20], ["ACE_Epinephrine", 20], ["ACE_Knicklicht_R", 2], ["ACE_Knicklicht_G", 2], ["ACE_Knicklicht_B", 1], ["ACE_Knicklicht_Y", 1]]];
		};
		
		case "crew":
		{
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "30Rnd_545x39_AK";} forEach [1,2,3];
			
			_unit addWeapon "AKS_74_U";
			_unit addWeapon "ItemMap";
		};
	};

	_unit enableAI "ANIM";
};
