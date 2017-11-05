_eastCasualty = "Takistan Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf


//if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
//	"US forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
//};

//Time limit message/time and moved to settings.sqf

sleep (30); //This determines how frequently the end conditions should be checked in seconds