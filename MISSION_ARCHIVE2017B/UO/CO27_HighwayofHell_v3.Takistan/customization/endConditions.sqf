_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "TAKI" call FNC_CasualtyPercentage;

if (_westCasualty >= 85) exitWith {
	
	"TAKI DECISIVE VICTORY<br />USMC has retreated due to casualties." call FNC_EndMission;
	
};

if (_eastCasualty >= 85) exitWith {
	
	"USMC DECISIVE VICTORY<br />TAKI has retreated due to casualties." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds