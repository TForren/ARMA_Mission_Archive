_guerCasualty = "AAF" call FNC_CasualtyPercentage;
_eastCasualty = "CSAT" call FNC_CasualtyPercentage;

if (_guerCasualty >= 90) exitWith {

	{_x disableAI "TARGET"; _x disableAI "AUTOTARGET"} forEach allUnits;
	["INDFOREliminated", true] call FNC_EndMission;

};

if (_eastCasualty >= 85) exitWith {

	["OPFOREliminated", false] call FNC_EndMission;

};


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition

	["TimeLimit", false] call FNC_EndMission;

};

sleep (60);