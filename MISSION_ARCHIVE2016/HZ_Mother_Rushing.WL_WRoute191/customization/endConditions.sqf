_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "USSR" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"The US Forces have taken too many casualties to hold the front. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (_eastCasualty >= 100) exitWith { //ends when Opfor deaths above or equal to 75%
	
	"The assaulting USSR conscripts have been wiped out. <br/><br/>BLUEFOR VICTORY<br/>" call FNC_EndMission;
	
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds