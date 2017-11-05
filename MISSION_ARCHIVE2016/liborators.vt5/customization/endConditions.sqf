_westCasualty = "REBEL" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

_winning = [west,200,TEST] call FNC_AreaCount;
if (_winning <= 1) exitWith 
{
       "YOUR BATTALION CLEARED THE NORTH SIDE OF THE AIRFIELD" call FNC_EndMission;
};


if (_westCasualty >= 90) exitWith {
	
	"METEOR 911 DECISIVE VICTORY<br />Follow on forces are now conducting an assault on the airfield." call FNC_EndMission;
	
};

if (_eastCasualty >= 35) exitWith {
	
	"GUERILLA PYRRHIC VICTORY<br />Your platoon was forced to retreat, but the enemy was wiped out by follow on forces." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds