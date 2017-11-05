_westCasualty = "BAF ARSENIC 1" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_eastCasualty = "Weapons Smugglers" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

_destroyed = {!alive _x} count [p1,p2,p3,p4,p5];

if ( (_eastCasualty >= 90) || missionComplete) exitWith { //ends when Opfor deaths above or equal to 75%
	"The weapons smugglers in Kwako have been wiped out and the cache will be found and destroyed in time. The operation continues.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

if (_destroyed == 5) exitWith { //ends when Opfor deaths above or equal to 75%
	"All smuggler aircraft have been destroyed.<br/><br/>DECISIVE VICTORY<br/>" call FNC_EndMission;
};

if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
	"ARSENIC 1 has taken too many casualties and must retreat. ARSENIC 2 must take over.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (missionComplete) exitWith {
	if (_destroyed == 0) exitWith {
		"The operation is over. No enemy aircraft were destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};	
	if (_destroyed == 1) exitWith {
		"The operation is over. Only 1 of the aircraft was destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_destroyed == 2) exitWith {
		"The operation is over. 2 out of the 5 aircraft were destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_destroyed == 3) exitWith {
		"The operation is over. 3 out of the 5 aircraft were destroyed.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_destroyed == 4) exitWith {
		"The operation is over. 4 out of the 5 aircraft were destroyed.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	
};

//Time limit message/time and moved to settings.sqf

sleep (30); //This determines how frequently the end conditions should be checked in seconds