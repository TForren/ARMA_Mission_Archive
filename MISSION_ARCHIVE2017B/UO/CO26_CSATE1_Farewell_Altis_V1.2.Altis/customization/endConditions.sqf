_eastCasualty = "CSAT" call FNC_CasualtyPercentage;

if (_eastCasualty >= 85) exitWith {
	["OPFOREliminated", false] call FNC_EndMission;
};

sleep (60);