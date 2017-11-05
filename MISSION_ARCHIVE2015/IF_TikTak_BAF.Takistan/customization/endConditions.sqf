_westCasualty = "BAF Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

_supplied1 = (TriggerActivated supplyTrig1);
_supplied2 = (TriggerActivated supplyTrig2);
_supplied3 = (TriggerActivated supplyTrig3);

_anySupplied = (_supplied1 || _supplied2 || _supplied3);
_allSupplied = (_supplied1 && _supplied2 && _supplied3);

_BLUFORExtracted = (triggerActivated bluforExtracted);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_cachedestroyed) exitWith  //cache destroyed
	{
		if (_westCasualty >= 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining BLUFOR have been forced to extract.<br/>Fortunately, the cache has been destroyed but BLUFOR have suffered heavy casualties.<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith 
		{
		"With no time remaining for the operation to continue, the remaining BLUFOR have been forced to extract.<br/>Fortunately the cache has been destroyed and the mission was successful.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
		};

	};


}; // End time limit

	
if (_westCasualty >= 80) exitWith {//TOOO many casualties. End mission meow.

	if (_allSupplied) exitWith  
	{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>However, all supplies were delivered to the villages and hearts and minds have been won.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_anySupplied) exitWith 
	{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Some supplies have been delivered, but not all.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if !(_anySupplied) exitWith 
	{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>With no supplies delivered to any of the villages, the OPFOR will take home victory.<br/><br/>DECISIVE OPFOR VICTORY<br/>" call FNC_EndMission;
	};

};

if (_eastCasualty == 100) exitWith {//TOOO many casualties. End mission meow.

	if (_allSupplied) exitWith  
	{
		"The OPFOR have lost too many fighters and cannot continue the attack on BLUFOR.<br/>With all supplies delivered to the villages, the BLUFOR have claimed victory.<br/><br/>DECISIVE BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_anySupplied) exitWith 
	{
		"The OPFOR have lost too many fighters and cannot continue the attack on BLUFOR.<br/>With some supplies already delivered, it is only a matter of time before the rest of the villages favor the BLUFOR<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if !(_anySupplied) exitWith 
	{
		"The OPFOR have lost too many fighters and cannot continue the attack on BLUFOR.<br/>Although no supplies have been delivered yet, the BLUFOR will spend the rest of the day delivering food.<br/><br/>SOON TO BE BLUFOR VICTORY<br/>" call FNC_EndMission;
	};

};

if (_BLUFORExtracted && _allSupplied) exitWith { //BLUFOR extracted,

	"All supplies have been delivered and the BLUFOR have successfully extracted from the AO. The OPFOR were unable to stop the BLUFOR from winning the favor of the locals.<br/><br/>DECISIVE BLUFOR VICTORY<br/>" call FNC_EndMission;
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds