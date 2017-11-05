_westCasualty = "2-13 Infantry Rgt" call FNC_CasualtyPercentage;
_eastCasualty = "125th Motor Rifle Rgt" call FNC_CasualtyPercentage;

if (_westCasualty >= 70) exitWith {
	
	"Mission End - Major Defeat: The U.S. forces were destroyed." call FNC_EndMission;
	
};

if (_eastCasualty >= 80) exitWith {
	if (_westCasualty <= 32) exitWith {
		"Mission End - Major Victory: The strongpoint was secured with minimal friendly casualties." call FNC_EndMission;
	};
	if (_westCasualty >=33 and _westCasualty <=49) exitWith {
		"Mission End - Minor Victory: The strongpoint was secured, but 3rd Platoon is now combat ineffective." call FNC_EndMission;
	};
		if (_westCasualty >= 50) exitWith {
		"Mission End - Minor Defeat: Strongpoint was secured by remnants of 3 Platoon, which were later reconstituted into C Company. The platoon leader was relieved of command." call FNC_EndMission;
	};
};

if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	if (_westCasualty <= 32) exitWith {
		"Mission End - Minor Defeat: Time limit reached. C Company was destroyed due to inability of 3 Platoon to complete its objective." call FNC_EndMission;
	};
		if (_westCasualty >= 33) exitWith {
		"Mission End - Major Defeat: Time limit reached. C Company was destroyed due to inability of 3 Platoon to complete its objective. 3rd platoon was also rendered combat ineffective." call FNC_EndMission;
	};
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds