_westCasualty = "US ARMY" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "RUS TV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

if (_westCasualty >= 80) exitWith {
	"The US armor has been eliminated.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};
if (_eastCasualty >= 90) exitWith {
	"The Russian armor has been eliminated.<br/><br/>US VICTORY" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

