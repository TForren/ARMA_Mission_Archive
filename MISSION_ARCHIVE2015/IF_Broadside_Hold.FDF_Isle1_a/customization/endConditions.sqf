_westCasualty = "Ukraine Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Novorossiya" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv
//_eastCasualty = "Sahrani Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!<br/><br/>UKRAINE ARMY VICTORY" call FNC_EndMission;
	
};

if (_westCasualty >= 100) exitWith {
	"The Ukraine Army Forces have been wiped out.<br/><br/>NOVOROSSIYA VICTORY" call FNC_EndMission;
};


if (_eastCasualty >= 100 ) exitWith {
	"The Novorossiya Forces have been wiped out.<br/><br/>UKRAINE ARMY VICTORY" call FNC_EndMission;
};

if ("EAST" == "capturezone" call FNC_isCaptured) exitWith {
	"The farmstead has been captured by the Novorossiya Forces!<br/><br/>NOVOROSSIYA VICTORY" call FNC_EndMIssion;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds