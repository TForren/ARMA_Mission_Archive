// Civilian Opinion Init
// by: Kinch 
// Synopsis: This file compiles all of the other files so everything works... I hope.

lkco_fnc_AddUnit = compile preprocessfilelinenumbers "civ_interact\lkco_fnc_AddUnit.sqf";

lkco_fnc_neutralcivdeath = compile preprocessfilelinenumbers "civ_interact\lkco_fnc_neutralciv_death.sqf";
lkco_fnc_goodcivdeath = compile preprocessfilelinenumbers "civ_interact\lkco_fnc_goodciv_death.sqf";
lkco_fnc_greatcivdeath = compile preprocessfilelinenumbers "civ_interact\lkco_fnc_greatciv_death.sqf";

lkco_fnc_ArmBadCiv = compile preprocessfilelinenumbers "civ_interact\lkco_fnc_ArmBadCiv.sqf";