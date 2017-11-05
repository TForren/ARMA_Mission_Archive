_eastCasualty = "Gecko 611" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_indCasualty = "Sunni Mujahideen" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

if (_eastCasualty >= 85) exitWith { //ends when Opfor deaths above or equal to 75%
	"Gecko 611 has taken too many casualties and cannot continue the mission.<br/><br/>MUJAHIDEEN VICTORY<br/>" call FNC_EndMission;
};

_captured = false;
_nearbyUnits = nearestObjects [[1986.62,3153.6,0], ["man"], 100];

_enemyNear = false;
{
	if (side _x == independent) then {
		_enemyNear = true;
		};
} foreach _nearbyUnits;

if !(_enemyNear) then {
	{
		if (side _x == east) then {_captured = true};
	} foreach _nearbyUnits;
};


if (_captured) exitWith {
	"Gecko 611 has taken control of the Mujahideen village.<br/><br/>SOVIET VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (10); //This determines how frequently the end conditions should be checked in seconds