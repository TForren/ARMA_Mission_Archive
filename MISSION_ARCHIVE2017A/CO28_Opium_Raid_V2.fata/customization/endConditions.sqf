_westCasualty = "Delta Force" call FNC_CasualtyPercentage;
_eastCasualty = "Panthera Group" call FNC_CasualtyPercentage;

if (_westCasualty >= 65) exitWith {
	
	"Panthera Group have won the day.<br />Delta Force has retreated due to casualties." call FNC_EndMission;
	
};

if (hostage1 call FNC_IsRescued && hostage2 call FNC_IsRescued && hostage3 call FNC_IsRescued && hostage4 call FNC_IsRescued) exitWith {
		"Hostages Rescued" call FNC_EndMission;
};

if (!alive hostage1 && !alive hostage2 && !alive hostage3 && !alive hostage4) exitWith {
		"Hostages Killed" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds