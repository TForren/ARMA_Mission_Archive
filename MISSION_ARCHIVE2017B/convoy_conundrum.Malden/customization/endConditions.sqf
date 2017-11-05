_westCasualty = "MARSOC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf


if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"MARSOC forces have taken too many casualties to continue operations. <br/><br/>INSURGENT VICTORY<br/>" call FNC_EndMission;
};


//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds