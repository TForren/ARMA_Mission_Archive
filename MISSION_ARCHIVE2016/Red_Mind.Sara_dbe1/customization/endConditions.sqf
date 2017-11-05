_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"INSERTSIDEHERE forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (!alive zeusCommander) exitWith { //ends when Opfor deaths above or equal to 75%
	
	"The MSV Commander has been eliminated! <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds