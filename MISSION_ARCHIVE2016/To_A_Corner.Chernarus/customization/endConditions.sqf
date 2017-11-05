_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 99) exitWith { //ends when Bluefor deaths above or equal to 75%
	"All crash survivors have been eliminated.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (_eastCasualty >= 80) exitWith { //ends when Opfor deaths above or equal to 75%
	
	"Severe casualties have been inflicted on the MSV and the crash survivors are free to call for evac. <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds