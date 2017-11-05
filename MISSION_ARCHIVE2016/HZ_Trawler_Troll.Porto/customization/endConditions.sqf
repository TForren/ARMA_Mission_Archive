_westCasualty = "PMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Pirates" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	"With no time remaining to rescue the hostage, the PMC mission contract has expired and as they are no longer being paid to be here, the PMC forces are leaving.<br/><br/>PIRATE VICTORY<br/>" call FNC_EndMission;
}; // End time limit


if (_westCasualty >= 99) exitWith {//TOOO many casualties. End mission meow.

	"The PMC have suffered too many casualties and cannot continue the operation<br>The hostage will inevitably be recaptured by the pirates.<br/><br/>PIRATE VICTORY<br/>" call FNC_EndMission;
};

if (_eastCasualty >= 99) exitWith {//TOOO many casualties. End mission meow.

	"The Somalian pirates of the island have been wiped out.<br>The hostage will inevitably be rescued by the PMC.<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
};

if (!alive hostage) exitWith { //BLUFOR extracted,

	"The hostage has been killed. Nobody wins.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
};

if ((cram distance hostage) < 800) exitWith {
	"The hostage as been successfully escorted off the island of pirate death and is close enough to the PMC staging area for the PMC forces to claim victory.<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds