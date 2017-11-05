// Civilian Opinion - Add Unit
// by: Kinch
// Synopsis: This script makes the unit available for having an opinion, and whatnot.

_unit =(_this select 0);
_unitOpinion = FIAapproval + random 50 - random 50; // Change the random number to something smaller, like 10.
	
// Organize from "Good" to "Bad"

// Really Good Civ, big supporter of the Player Faction
	if (_unitOpinion > 80)
		then {
				_unit addEventHandler ["killed", "spawn lkco_fnc_greatcivdeath;"];
				[[_unit,"<t color=""#C4EAFF"">" + "Talk to Civilian","civ_interact\lkco_fnc_goodciv_conv.sqf"], "fnc_addactionMP", true, false] spawn BIS_fnc_MP;
			};
// Good Civ, has favorable view of thePlayer Faction
	if (_unitOpinion < 80 and _unitOpinion >= 60)
		then {
				_unit addEventHandler ["killed", "spawn lkco_fnc_goodcivdeath;"];
			};
// Neutral Civ, neither approves or disapproves of the Player Faction
	if (_unitOpinion < 60 and _unitOpinion >= 40)
		then {
				_unit addEventHandler ["killed", "spawn lkco_fnc_neutralcivdeath;"];
			};
// Bad Civ, disapproves of the Player Faction and generally supports the opposing faction
	if (_unitOpinion < 40 and _unitOpinion >= 20)
		then {

			};
// Really Bad Civ, hates the Player Faction and will openly "defend" themselves against them
	if (_unitOpinion < 20)
		then {
				0 = [_unit] call lkco_fnc_ArmBadCiv;
			};