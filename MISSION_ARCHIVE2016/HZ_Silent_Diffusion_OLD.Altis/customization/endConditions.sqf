_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

/*
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

"TIME LIMIT REACHED!" call FNC_EndMission;

};
 //Too many casualties
if (_westCasualty >= 80) exitWith {

	if (_tanksDestroyed) exitWith {
		"The USMC have suffered too many casualties and are combat ineffective. However, the experimental T-80s have been destroyed so the USMC sacrifice has not gone in vain.<br/><br/>USMC PARTICAL VICTORY<br/>" call FNC_EndMission;
	};
	
	if (!_tanksDestroyed) exitWith {
		"The USMC have suffered too many casualties and are combat ineffective. With experimental T-80s still intact, the Russian Forces have decisively claimed victory.<br/><br/>OPFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};

};
//Opfor recaptured train
if (("EAST" == "capturezone" call FNC_isCaptured)) exitWith {

	if (_westCasualty >= 50) exitWith {
		"The Russian VDV have resecured the logistics train and have caused substantial casualties to the USMC Forces.<br/><br/>OPFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty < 50) exitWith {
		"The Russian VDV have resecured the logistics train and the experimental T-80s will soon be on their way to their very Russian destination. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};

};
//Tanks destroyed, blufor extracted
if (_tanksDestroyed && (triggeractivated bluforExtracted)) exitWith {

	if (_westCasualty >= 50) exitWith {
		"Despite suffering heavy casualties, the USMC have successfully destroyed the experimental T-80s and the remaining USMC Forces have been extracted. <br/><br/>USMC PARTICAL VICTORY due to heavy casualties<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty < 50) exitWith {
		"The experimental T-80s have been successfully destroyed with marignal USMC casualties.<br/><br/>USMC DECISIVE VICTORY<br/>" call FNC_EndMission;
	};
};

//Check if both helos are destroyed. If they are, check if tanks are destroyed. If not, let players continue by doing nothing.
if ((!alive vader1) && (!alive vader2)) exitWith {
	
	if (_tanksDestroyed) exitWith {
		"With no remaining mission critical USMC helicopters available, the USMC ground forces are unable to extract from the AO. However, with all experimental T-80s destroyed, their sacrifice has not gone in vain.<br/><br/>USMC PARTICAL VICTORY<br/>" call FNC_EndMission;
	};
};

*/
sleep (60); //This determines how frequently the end conditions should be checked in seconds
