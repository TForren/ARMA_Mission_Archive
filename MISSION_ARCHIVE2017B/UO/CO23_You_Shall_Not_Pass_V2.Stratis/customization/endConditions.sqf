_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "VDV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (!(alive HVT)) exitWith {
    
    "Good job chaps!<br />HVT DEAD" call FNC_EndMission;
    
};

if (_westCasualty >= 90) exitWith {
	
	"VDV DECISIVE VICTORY<br />USMC has retreated due to casualties." call FNC_EndMission;
	
};


sleep (30); //This determines how frequently the end conditions should be checked in seconds