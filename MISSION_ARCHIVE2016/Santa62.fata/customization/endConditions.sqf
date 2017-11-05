_westCasualty = "US SOF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_allDead = !(alive cache1) && !(alive cache2) && !(alive cache3);
  
if (_westCasualty >= 75) exitWith {
	"The US Forces have sufferred too many casualties and cannot continue Santa's work. Christmas is lost in the lands of FATA.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};

if (_allDead) exitWith {
	"Santa's gifts have been distributed to their proper locations with extreme speed. <br/><br/>MISSION SUCCESS" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

