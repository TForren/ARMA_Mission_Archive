_guerCasualty = "AAF" call FNC_CasualtyPercentage;
_westCasualty = "FIA" call FNC_CasualtyPercentage;

if (_guerCasualty >= 75) exitWith {

	["INDFOREliminated", false] call FNC_EndMission;

};

if (_westCasualty >= 95) exitWith {

	["BLUFOREliminated", true] call FNC_EndMission;

};


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith {

	["TimeLimit", false] call FNC_EndMission;

};

sleep (60);