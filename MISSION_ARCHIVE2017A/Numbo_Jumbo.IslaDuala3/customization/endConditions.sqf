_eastCasualty = "Boko Harem" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf


if (_eastCasualty >= 75) exitWith { //ends when Opfor deaths above or equal to 75%
	"Boko Harem Forces have suffered heavy casualties.<br/><br/>US VICTORY<br/>" call FNC_EndMission;
};


if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"US Forces have taken too many casualties to continue operations. <br/><br/>BOKO HAREM VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds