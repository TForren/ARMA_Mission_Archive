_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

if (_westCasualty >= 50) exitWith {
	
	"the 101st platroon has suffered too many casualties and cannot maintain foothold security." call FNC_EndMission;
	
};


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

if("WEST" == "captureZone" call FNC_isCaptured) exitWith {
	"The 101st airborne have successfully secured a foothold in Podagorsk within the allocated time." call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds