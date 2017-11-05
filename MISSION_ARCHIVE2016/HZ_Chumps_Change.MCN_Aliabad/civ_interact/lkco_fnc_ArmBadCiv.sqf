// Civilian Opinion - Arm the Bad Civs
// by: Kinch
// Synopsis: This script arms the "Really Bad" Civs and joins them to an OPFOR group in order to shoot at BLUFOR, there is no penalty for killing these guys.

_badCiv =(_this select 0);

// First, join them to OPFOR

[_badCiv] joinSilent grpNull;
_SideSwitcher = createCenter east;
_dummyGroupEast = createGroup east;
_switchingUnit =_dummyGroupEast createUnit ["O_Soldier_F",position _badCiv, [], 0, "FORM"];
[_badCiv] joinSilent _dummyGroupEast;
deleteVehicle _switchingUnit;
deleteGroup _dummyGroupEast;

// Then arm them with some firepower!

_badCiv addBackpack "B_FieldPack_ocamo";

_badCiv addMagazine "30Rnd_65x39_caseless_green";
_badCiv addWeapon "arifle_Katiba_C_F";
_badCiv addMagazine "30Rnd_65x39_caseless_green";
_badCiv addMagazine "30Rnd_65x39_caseless_green";