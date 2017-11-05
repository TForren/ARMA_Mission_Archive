_westCasualty = "GAL Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


_bluforExtracted = (triggerActivated bluforExtracted);


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_cachedestroyed) exitWith  //cache destroyed
	{
		if (_westCasualty >= 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining GAL have been forced to extract.<br/>Fortunately, the cocaine has been secured but GAL have suffered heavy casualties.<br/><br/>PARTIAL GAL VICTORY<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining GAL have been forced to extract.<br/>Fortunately the cocaine has been secured and the mission was successful.<br/><br/>GAL VICTORY<br/>" call FNC_EndMission;
		};

	};


}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	if (_cachedestroyed) exitWith  //cache destroyed
	{
		"The GAL have suffered too many casualties and cannot continue the operation.<br/>Fortunately, the cocaine has been secured and the losses are not in vain.<br/><br/>MINOR GAL VICTORY<br/>" call FNC_EndMission;
	};
	if !(_cachedestroyed) exitWith  //cache not destroyed
	{
		"The GAL have suffered too many casualties and cannot continue the operation.<br/>Unfortunately, the cocaine was not secured and the mission has ended in failure.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};

};


if (_bluforExtracted && ((cache distance (getmarkerpos "HQ")) < 10) ) exitWith { //GAL extracted,

	if (_westCasualty >= 60) exitWith 
	{
	"With all remaining GAL extracted from the AO and the cache destroyed, the mission was successful. Unfortunately, GAL have suffered heavy casualties to secure the cocaine.<br/><br/>PARTIAL GAL VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With all remaining GAL extracted from the AO and the cocaine secured, the mission was successful.<br/><br/>DECISIVE GAL VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds