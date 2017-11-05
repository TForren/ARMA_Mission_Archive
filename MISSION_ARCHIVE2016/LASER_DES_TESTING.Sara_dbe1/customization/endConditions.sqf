_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_intelCaptured = ((evidence distance longcat) < 500);

_bluforExtracted = (TriggerActivated bluforExtracted);


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty >= 60) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining BLUFOR have been forced to extract.<br/>With heavy casualties suffered by the BLUFOR, the SLA claim victory.<br/><br/>SLA VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining BLUFOR have been forced to extract.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
	};

}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/><br/>SLA VICTORY<br/>" call FNC_EndMission;
};


if (_intelCaptured && _bluforExtracted) exitWith { 

	if (_westCasualty >= 60) exitWith 
	{
	"The evidence proving SLA and Russian Federation munitions deals recovered by the operating BLUFOR, the mission was successful. Unfortunately, BLUFOR have suffered heavy casualties in doing so.<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"The evidence proving SLA and Russian Federation munitions deals recovered by the operating BLUFOR, the mission was successful.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds