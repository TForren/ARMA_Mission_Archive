_westCasualty = "Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

allDestroyed = !(alive gaz) && !(alive gaz1) && !(alive gaz2);

if (_westCasualty >= 95) exitWith { //ends when Bluefor deaths above or equal to 75%
	"Insurgent forces have taken too many casualties to continue operations. <br/><br/>HELLENIC FORCES VICTORY<br/>" call FNC_EndMission;
};

if (allDestroyed && ([WEST, 550, garrisonArea1] call FNC_AreaCount <= 0)) exitWith { //ends when Bluefor deaths above or equal to 75%
	"The KA-52 has been destroyed and Insurgent Forces have extracted. <br/><br/>INSURGENT VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (20); //This determines how frequently the end conditions should be checked in seconds