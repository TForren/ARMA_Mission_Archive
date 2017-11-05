_westCasualty = "1PLT" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

_winning = [east,500,TEST] call FNC_AreaCount;
if (_winning <= 0) exitWith 
{
       "Your platoon cleared Objective Runway" call FNC_EndMission;
};


if (_westCasualty >= 35) exitWith {
	
	"MSV DECISIVE VICTORY<br />1 Platoon has retreated back to the ORV due to casualties." call FNC_EndMission;
	
};

if (_eastCasualty >= 95) exitWith {
	
	"1 PLATOON DECISIVE VICTORY<br />MSV forces have been sweeped from the airfield." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds