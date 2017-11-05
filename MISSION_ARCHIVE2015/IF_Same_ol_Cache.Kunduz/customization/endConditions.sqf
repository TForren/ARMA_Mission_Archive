_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "US Forces"
_eastCasualty = "Sand People" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

_cacheDestroyed = (!alive cache);
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

"TIME LIMIT REACHED!" call FNC_EndMission;

};
 //Too many casualties
if (_westCasualty >= 80) exitWith {

	if (_cacheDestroyed) exitWith {
		"The US Forces have suffered too many casualties and are combat ineffective. However, the Insurgent Cache has been destroyed so the sacrifice has not gone in vain.<br/><br/>US Forces PARTICAL VICTORY<br/>" call FNC_EndMission;
	};
	
	if (!_cacheDestroyed) exitWith {
		"The US Forces have suffered too many casualties and are combat ineffective. With the cache still intact, the Insurgents have claimed victory.<br/><br/>OPFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};

};


if (_cacheDestroyed && (TriggerActivated bluforExtracted)) exitWith {
	
	if (_westCasualty >= 50) exitWith {
		"With the cache destroyed and the remaining US Forces extracted, the insurgents will be unable to continue distribution of small arms to other cells in Kunduz. However, with heavy casualties suffered by the BLUFOR, the insurgents have not completely failed.<br/><br/>US Forces PARTICAL VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty < 50) exitWith {
		"With the cache destroyed and the US Forces extracted, the insurgents will be unable to continue distribution of small arms to other cells in Kunduz.<br/><br/>US Forces DECISIVE VICTORY<br/>" call FNC_EndMission;

	};
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds
