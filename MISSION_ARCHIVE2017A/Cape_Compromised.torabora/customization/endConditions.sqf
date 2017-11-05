_westCasualty = "US" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Taliban" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";


_crate1Cap = false;
_nearbyUnits = nearestObjects [getpos crate1, ["man"], 200];

_opforNear = false;
{
	if (side _x == east) then {
		_opforNear = true;
		};
} foreach _nearbyUnits;

if !(_opforNear) then {
	{
		if (side _x == west) then {_crate1Cap = true};
	} foreach _nearbyUnits;
};

if (_crate1Cap) exitWith {
	"The stinger crate have been secured by the US.<br/><br/>BLUFOR VICTORY" call FNC_EndMission;
};


if (_westCasualty >= 85) exitWith {
	"US were forced to pull out of the AO due to casualties.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};


if (_eastCasualty == 99) exitWith {
	"The Taliban threat in the are has been wiped out.<br/><br/>BLUFOR VICTORY" call FNC_EndMission;
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds

