_westCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
// _eastCasualty = "Russia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 80) exitWith {
	
	"RUSSIAN DECISIVE VICTORY<br />Militia has retreated due to casualties." call FNC_EndMission;
	
};

//	if (_eastCasualty >= 75) exitWith {
//		
//		"USMC DECISIVE VICTORY<br />VDV has retreated due to casualties." call FNC_EndMission;
//	
//	};



sleep (30); //This determines how frequently the end conditions should be checked in seconds