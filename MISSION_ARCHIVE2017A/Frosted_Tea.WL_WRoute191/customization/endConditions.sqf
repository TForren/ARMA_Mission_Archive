_westCasualty = "BAF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
_eastCasualty = "Separatists" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

sleep 1;

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"BAF ARSENIC 1 forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};


_allDead = !(alive c1) && !(alive c2) && !(alive c3) && !(alive c4) && !(alive c5) && !(alive c6);

if (_allDead) then {
	"BAF ARSENIC 1 has successfully destroyed the separatist convoy. <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds