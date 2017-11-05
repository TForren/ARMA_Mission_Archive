 _eastCasualty = "Al-Qaeda" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_indCasualty = "Civilians" call FNC_CasualtyPercentage; 
_westCasualty = "US Army" call FNC_CasualtyPercentage; 

if (triggerActivated bluforExtracted && ({alive _x} count [p1,p2] == 0)) exitWith {
	if (_westCasualty < 50) exitWith {
		"Both pilots have been killed and no remaining BLUFOR in the area. Al-Qaeda was unable to inflict heavy casualties. <br/><br/>STALEMATE<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty >= 50) exitWith {
		"Both pilots have been killed and no remaining BLUFOR in the area. US Forces have suffered substantial casualties. <br/><br/>Al-Qaeda VICTORY<br/>" call FNC_EndMission;
	};
};

if (triggerActivated bluforExtracted && ({alive _x} count [p1,p2] == 1)) exitWith {
	if (_westCasualty < 50) exitWith {
		"One pilot has been extracted from Fallujah. Al-Qaeda was unable to inflict heavy casualties. <br/><br/>PARTIAL US VICTORY<br/>" call FNC_EndMission;
	};

	if (_westCasualty >= 50) exitWith {
		"One pilot has been extracted from Fallujah but US Forces have suffered substantial casualties. <br/><br/>STALEMATE<br/>" call FNC_EndMission;
	};
};

if (triggerActivated bluforExtracted && ({alive _x} count [p1,p2] == 2)) exitWith {
	if (_westCasualty < 50) exitWith {
		"Both pilots have been extracted from Fallujah. Al-Qaeda was unable to inflict heavy casualties. <br/><br/>US VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty >= 50) exitWith {
		"Both pilots have been extracted from Fallujah but US Forces have suffered substantial casualties. <br/><br/>PARTIAL US VICTORY<br/>" call FNC_EndMission;
	};
};


//Time limit message/time and moved to settings.sqf

sleep (20); //This determines how frequently the end conditions should be checked in seconds