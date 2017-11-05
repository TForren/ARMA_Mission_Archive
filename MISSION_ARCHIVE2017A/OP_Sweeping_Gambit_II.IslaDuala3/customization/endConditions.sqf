_eastCasualty = "BAF ARSENIC 1" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "Weapons Smugglers" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

if ( (_eastCasualty >= 90) || missionComplete) exitWith { //ends when Opfor deaths above or equal to 75%
	"The weapons smugglers in Kwako have been wiped out and the cache will be found and destroyed in time. The operation continues.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

if (!alive cache1) exitWith { //ends when Opfor deaths above or equal to 75%
	"The weapons cache has been destroyed. The operation continues.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
	"ARSENIC 1 has taken too many casualties and must retreat. ARSENIC 2 must take over.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (30); //This determines how frequently the end conditions should be checked in seconds