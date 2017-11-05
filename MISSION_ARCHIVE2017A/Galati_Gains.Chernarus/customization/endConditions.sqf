_eastCasualty = "ChDKZ" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "Jaegertruppe" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

_captured = false;
_nearbyUnits = nearestObjects [getpos cache, ["man"], 80];

_opforNear = false;
{
	if (side _x == east) then {
		_opforNear = true;
		};
} foreach _nearbyUnits;

if !(_opforNear) then {
	{
		if (side _x == west) then {_captured = true};
	} foreach _nearbyUnits;
};

if (_eastCasualty >= 99) exitWith { //ends when Opfor deaths above or equal to 75%
	"ChDKZ forces have been wiped out<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
	"The Jaegertruppe have suffered too many casualties to continue the mission. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (_captured) exitWith {
	"The Jaegertruppe have secured the stolen UN ammo crates.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds