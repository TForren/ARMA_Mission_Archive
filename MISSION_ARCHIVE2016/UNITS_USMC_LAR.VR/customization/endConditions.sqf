_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"Put Text here" call FNC_EndMission;
};

if (_eastCasualty >= 75) exitWith { //ends when Opfor deaths above or equal to 75%
	
	"Put Text here" call FNC_EndMission;
	
};


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds