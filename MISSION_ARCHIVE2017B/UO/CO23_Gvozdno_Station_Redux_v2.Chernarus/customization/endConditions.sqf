_westCasualty = "2-13 Infantry Rgt" call FNC_CasualtyPercentage;
_eastCasualty = "Slovak Insurgents" call FNC_CasualtyPercentage;

if (_westCasualty >= 70) exitWith {
	"Mission End - Major Defeat: The U.S. forces were destroyed." call FNC_EndMission;
};

if (_eastCasualty >= 80) exitWith {
	if (_westCasualty <= 32) exitWith {
		"Mission End - Victory: The insurgents were destroyed and remnants retreated with minimal friendly casualties." call FNC_EndMission;
	};
	if (_westCasualty >=33 and _westCasualty <=49) exitWith {
		"Mission End - Minor Defeat: The cache was secured, but 3rd Platoon is now combat ineffective." call FNC_EndMission;
	};
		if (_westCasualty >= 50) exitWith {
		"Mission End - Major Defeat: The cache was secured by remnants of 3rd Platoon, it being destroyed in the process." call FNC_EndMission;
	};
};

if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	if (_westCasualty <= 32) exitWith {
		"Mission End - Stalemate: Time limit reached. 3rd Platoon retreated for now, taking minimal casualties." call FNC_EndMission;
	};
	if (_westCasualty >=33 and _westCasualty <=49) exitWith {
		"Mission End - Major Defeat: Time limit reached. 3rd Platoon was rendered combat ineffective. The platoon leader was relieved of duty." call FNC_EndMission;
	};
		if (_westCasualty >= 50) exitWith {
		"Mission End - Disaster: Time limit reached. 3rd platoon was destroyed." call FNC_EndMission;
	};
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds