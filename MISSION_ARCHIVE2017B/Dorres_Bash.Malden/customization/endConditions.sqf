_eastCasualty = "Russian MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf


if (_eastCasualty >= 99) exitWith { //ends when Opfor deaths above or equal to 75%
	"Russian Forces have been wiped out <br/><br/>US VICTORY<br/>" call FNC_EndMission;
};

if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
	"US Forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

destroyedPods = {!alive _x} count [pod1,pod2,pod3,pod4,pod5,pod6];


if (destroyedPods >= 6 && ( [WEST, 1600, center] call FNC_AreaCount <= 0)) then {
	"All mortars have been destroyed and the US Forces have extracted.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};


//Time limit message/time and moved to settings.sqf

sleep (10); //This determines how frequently the end conditions should be checked in seconds