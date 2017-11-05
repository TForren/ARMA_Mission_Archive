_westCasualty = "blu" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "Insurgent"
_eastCasualty = "smug" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 85) exitWith {
	
	"Smugglers Victory" call FNC_EndMission;
	
};

_eastCount = [independent,800,obj] call FNC_AreaCount;
    if(_eastcount < 2) exitWith{
		"Blufor Victory" call FNC_EndMission;
	};

if ((time / 120) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds