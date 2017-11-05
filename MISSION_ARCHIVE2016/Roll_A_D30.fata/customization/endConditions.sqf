_westCasualty = "US Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "Iraqi Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

destroyedGuns = 0;

{
	if (!alive _x) then {
		destroyedGuns = destroyedGuns + 1;
	};
} foreach guns;

if (destroyedGuns == 3 && time > 10 ) then {

	if (_westCasualty <= 25) exitWith { //ends when Bluefor deaths above or equal to 75%
	"All three of the Iraqi Army D-30s have been destroyed.<br/><br/>DECISIVE US VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty > 25) exitWith { //ends when Bluefor deaths above or equal to 75%
	"All three of the Iraqi Army D-30s have been destroyed but the task was complete at the expense of multiple US Army soldiers.<br/><br/>US VICTORY<br/>" call FNC_EndMission;
	};	
};

if (_westCasualty >= 50) exitWith { //ends when Bluefor deaths above or equal to 75%
	"US Army CONDO 1 has taken too many casualties to continue operations.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (30); //This determines how frequently the end conditions should be checked in seconds