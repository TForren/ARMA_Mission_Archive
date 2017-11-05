// Civilian Opinion - Good Civilian Death
// by: Kinch
// Synopsis: This script determines if a "good" civilian died by the hands of a BLUFOR player and lowers the side's approval rating (a GVAR).

_civ = this select 0;
_killer = this select 1;

if {side _killer == WEST} then {
hint format ["%1 killed a civilian sympathetic to us! Our approval rating has decreased",_killer];
FIAapproval = FIAapproval - 3; };