_westCasualty = "BAF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
//_eastCasualty = "Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;

}; // End time limit

	
if (_westCasualty >= 80) exitWith {//TOOO many casualties. End mission meow.

	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;

};


sleep (60); //This determines how frequently the end conditions should be checked in seconds