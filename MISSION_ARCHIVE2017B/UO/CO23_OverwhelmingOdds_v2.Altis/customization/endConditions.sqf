_westCasualty = "US Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Russia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 50) exitWith {	
	"Russian Victory<br />The blocking position was overrun." call FNC_EndMission;
	
};

if (_eastCasualty >= 80) exitWith {	
	"US Army Victory<br/>The retreating Russian forces have been decimated." call FNC_EndMission;

};


if ((time / 45) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"You held the blocking position, mission complete" call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds