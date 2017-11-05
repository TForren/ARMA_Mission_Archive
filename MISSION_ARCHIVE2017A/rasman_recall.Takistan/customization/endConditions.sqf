_westCasualty = "BAF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Weapons Smugglers" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_captured = false;
_nearbyUnits = nearestObjects [getpos cache, ["man"], 100];

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

if (_captured) exitWith {
	"The weapons shipment has been secured by the BAF.<br/><br/>BLUFOR VICTORY" call FNC_EndMission;
};

if (_westCasualty >= 65) exitWith {
	"The BAF have retreated due to casualties.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};
if (_eastCasualty >= 99) exitWith {
	"The Weapons Smugglers have been wiped out.<br/><br/>BLUFOR VICTORY" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

