_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if (_westCasualty >= 75) exitWith {
	"USMC has retreated due to casualties.<br/><br/>The arms dealer has supplied " + str opforPoints +  " towns with weapons.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds

