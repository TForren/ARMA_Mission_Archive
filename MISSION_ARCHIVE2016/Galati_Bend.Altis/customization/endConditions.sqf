_westCasualty = "BAF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

sleep 1;

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"BAF ARSENIC 1 forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

remainingDuders = ({side _x == east} count list opforInTown);

if (remainingDuders < 4) exitWith { //ends when Opfor deaths above or equal to 75%
	
	"Remaining MSV in Galatai have been rendered combat ineffective. <br/><br/>BAF VICTORY<br/>" call FNC_EndMission;
	
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds