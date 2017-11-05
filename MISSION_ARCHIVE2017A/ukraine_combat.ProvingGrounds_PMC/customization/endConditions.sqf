_eastCasualty = "Novorossia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "Ukraine Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf


if (_eastCasualty >= 80) exitWith { //ends when Opfor deaths above or equal to 75%
	"Novorossiya forces have taken too many casualties to continue operations. <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

if (_westCasualty >= 80) exitWith { //ends when Bluefor deaths above or equal to 75%
	"Ukraine Government forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (10); //This determines how frequently the end conditions should be checked in seconds