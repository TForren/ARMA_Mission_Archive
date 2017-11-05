_westCasualty = "US SOF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_captured = false;
_nearbyUnits = nearestObjects [getpos ammotruck, ["man"], 200];

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
	"The ammo truck has been captured by the US Forces.<br/><br/>US VICTORY" call FNC_EndMission;
};

if (_westCasualty >= 65) exitWith {
	"The US Forces have retreated due to casualties.<br/><br/>The UN ammo truck has been stolen by the local Militia.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};
if (_eastCasualty >= 99) exitWith {
	"The Militia have been wiped out.<br/><br/>US VICTORY" call FNC_EndMission;
};
if (!alive ammotruck) exitWith {
	"The ammo truck has been destroyed!<br/><br/>MISSION FAILURE" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

