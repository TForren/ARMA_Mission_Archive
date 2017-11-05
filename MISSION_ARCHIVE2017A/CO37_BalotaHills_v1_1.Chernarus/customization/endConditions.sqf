_westCasualty = "CAF" call FNC_CasualtyPercentage;

if (_westCasualty >= 80) exitWith {

	"OPFOR VICTORY!<br />BLUFOR has retreated due to casualties." call FNC_EndMission;
};

if (BLUFOR_obj1Flag && BLUFOR_obj2Flag) exitWith {

	"BLUFOR VICTORY!<br />All objectives have been completed." call FNC_EndMission;

};

sleep (60);