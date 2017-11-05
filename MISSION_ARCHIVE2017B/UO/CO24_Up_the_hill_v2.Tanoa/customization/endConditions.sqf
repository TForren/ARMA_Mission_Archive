_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Rebels" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 70) exitWith {
	
	"REBELS DECISIVE VICTORY<br />USMC has retreated due to casualties." call FNC_EndMission;
	
};

if (_eastCasualty >= 90) exitWith {
	
	"USMC DECISIVE VICTORY<br />REBELS has retreated due to casualties." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds