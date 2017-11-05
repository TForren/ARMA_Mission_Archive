_westCasualty = "US" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "RU" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (!(alive zsu1) && !(alive zsu2)) exitWith {
	"MISSION SUCCEEDED<br />You've destroyed both of the ZSUs responsible for the deaths of your comrades. May their souls rest in peace.<br />The souls of your comrades, that is. The reds can burn in hell for all you care." call FNC_EndMission;
};

if (_eastCasualty >= 90) exitWith {
	
	"MISSION SUCCEEDED<br />You've eliminated damn near every Russian in the area. I call that a job well done." call FNC_EndMission;
	
};

if (_westCasualty >= 80) exitWith {
	
	"MISSION FAILED<br />You may have died in vain, but at least you died in vain with honour." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds