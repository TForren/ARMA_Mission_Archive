_westCasualty = "Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf



if ((_westCasualty >= 95) && (!alive aa1) && (!alive aa2)) exitWith { //ends when Bluefor deaths above or equal to 75%
		"Insurgent forces have been wiped out but the AA has been destoryed. <br/><br/>MINOR INSURGENT VICTORY<br/>" call FNC_EndMission;
};

if ((_westCasualty >= 95) && ((alive aa1) || (!alive aa2))) exitWith { //ends when Bluefor deaths above or equal to 75%
		"Insurgent forces have taken too many casualties and the AA is still active. <br/><br/>CSAT VICTORY<br/>" call FNC_EndMission;
};


if ((!alive aa1) && (!alive aa2) && ([WEST, 1500, garrisonArea1] call FNC_AreaCount <= 0)) exitWith { //ends when Bluefor deaths above or equal to 75%
	"The AA has been destroyed and Insurgent Forces have extracted. <br/><br/>INSURGENT VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (20); //This determines how frequently the end conditions should be checked in seconds