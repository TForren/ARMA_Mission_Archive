
//_westCasualty = "Rangers" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
//_eastCasualty = "Spetsnaz" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if ({side _x == WEST} count allunits <= 0) exitWith {//TOOO many casualties. End mission meow.

	"The US Army Rangers have been wiped out and the Spetsnaz have claimed the Experimental Prototype as their own.<br/><br/>SPETSNAZ VICTORY<br/>" call FNC_EndMission;
};

if ({side _x == EAST} count allunits <= 0) exitWith {//TOOO many casualties. End mission meow.

	"The Russian Spetsnaz have been wiped out and the US Army Rangers have successfully recovered the Experimental Prototype.<br/><br/>RANGERS VICTORY<br/>" call FNC_EndMission;
};


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (opforowned) exitWith {
	"No time remaining for the operation to continue.<br/>The Spetsnaz have control of the Experimental Prototype.<br/><br/>SPETSNAZ VICTORY<br/>" call FNC_EndMission;
	};
	if (bluforowned) exitWith {
	"No time remaining for the operation to continue.<br/>The Spetsnaz have control of the Experimental Prototype.<br/><br/>SPETSNAZ VICTORY<br/>" call FNC_EndMission;
	};
}; // End time limit


//hint "loop";

sleep 25; //This determines how frequently the end conditions should be checked in seconds