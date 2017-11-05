_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_oneTruckDestroyed = (!alive transport2) || (!alive transport1);
_bothTrucksDestroyed = (!alive transport1) && (!alive transport2);

_bothTrucksFinished = ((transport1 distance (getmarkerpos "end")) < 150) && ((transport2 distance (getmarkerpos "end")) < 150);
_oneTruckFinished = ((transport1 distance (getmarkerpos "end")) < 150) || ((transport2 distance (getmarkerpos "end")) < 150);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_oneTruckDestroyed) exitWith 
	{
		if (_westCasualty >= 60) exitWith 
		{
		"No time remaining for the operation to continue. The BLUFOR have lost one prisoner transport and have suffered heavy casualties.<br/><br/>NAPA VICTORY<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith 
		{
		"No time remaining for the operation to continue. The BLUFOR have lost one prisoner transport but have not suffered heavy casualties.<br/><br/>Partial NAPA VICTORY<br/>" call FNC_EndMission;
		};

	};

}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	if (_bothTrucksDestroyed) exitWith 
	{
	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both prisoner transport were lost.<br/><br/>DECISIVE NAPA VICTORY<br/>" call FNC_EndMission;
	};

	if (_oneTruckDestroyed) exitWith 
	{
	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One prisoner transport was lost.<br/><br/>NAPA VICTORY<br/>" call FNC_EndMission;
	};

};

if (_bothTrucksFinished) exitWith {

	if (_westCasualty >= 60) exitWith 
	{
	"Both prisoner transports were successfully escorted to the Northern Prison Camp.. Unfortunately, BLUFOR have suffered heavy casualties in doing so..<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"Both prisoner transports were successfully escorted to the Northern Prison Camp.<br/><br/>DECISIVE BLUFOR VICTORY<br/>" call FNC_EndMission;
	};

};

if (_oneTruckDestroyed && _oneTruckFinished) exitWith {

	if (_westCasualty >= 60) exitWith 
	{
	"One prisoner transports was successfully escorted to the Northern Prison Camp.. Unfortunately, BLUFOR have suffered heavy casualties in doing so..<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"One prisoner transports was successfully escorted to the Northern Prison Camp.. Unfortunately, BLUFOR have suffered heavy casualties in doing so..<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
	};

};
sleep (60); //This determines how frequently the end conditions should be checked in seconds