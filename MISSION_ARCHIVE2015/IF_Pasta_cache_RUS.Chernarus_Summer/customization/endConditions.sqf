_westCasualty = "VDV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_cachedestroyed = (!alive cache);

_bluforExtracted = (triggerActivated bluforExtracted);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_cachedestroyed) exitWith  //cache destroyed
	{
		if (_westCasualty >= 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining Opfor have been forced to extract.<br/>Fortunately, the cache has been destroyed but OPFOR have suffered heavy casualties.<br/><br/>PARTIAL OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining Opfor have been forced to extract.<br/>Fortunately the cache has been destroyed and the mission was successful.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};

	};


}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	if (_cachedestroyed) exitWith  //cache destroyed
	{
		"The OPFOR have suffered too many casualties and cannot continue the operation.<br/>Fortunately, the cache has been destroyed and the losses are not in vain.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if !(_cachedestroyed) exitWith  //cache not destroyed
	{
		"The OPFOR have suffered too many casualties and cannot continue the operation.<br/>Unfortunately, the cache was not destroyed and the mission has ended in failure.<br/><br/>INDFOR VICTORY<br/>" call FNC_EndMission;
	};

};

if (_bluforExtracted && _cachedestroyed && (time > 60)) exitWith { //Opfor extracted, cache destroyed

	if (_westCasualty >= 60) exitWith 
	{
	"With all remaining OPFOR extracted from the AO and the cache destroyed, the mission was successful. Unfortunately, OPFOR have suffered heavy casualties to destroy the cache.<br/><br/>PARTIAL OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With all remaining OPFOR extracted from the AO and the cache destroyed, the mission was successful.<br/><br/>DECISIVE OPFOR VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds