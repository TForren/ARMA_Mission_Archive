//Helper vars if possible to help admin to know when to call
eastCasualty = "Guards" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
publicVariable "eastCasualty";

westCasualty = "US Operators" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
publicVariable "westCasualty";

//Extra check as an example
//testVar = TRUE;
//publicVariable "testVar";

//Old end conditions system
//if (_eastCasualty >= 60) exitWith { //ends when Opfor deaths above or equal to 75%
//	"INSERTSIDEHERE forces have taken too many casualties to continue operations. <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
//};

if (objectivesComplete >= 3) exitWith { //ends when Opfor deaths above or equal to 75%
	"BLUFOR have sucessfully completed 3 objectives.<br/><br/>BLUFOR OPERATOR VICTORY<br/>" call FNC_EndMission;
};

if (westCasualty >= 99) exitWith { //ends when Opfor deaths above or equal to 75%
	"BLUFOR have been eliminated.<br/><br/>OPFOR GUARD VICTORY<br/>" call FNC_EndMission;
};

if (eastCasualty >= 99) exitWith { //ends when Opfor deaths above or equal to 75%
	"OPFOR have been eliminated.<br/><br/>BLUFOR OPERATOR VICTORY<br/>" call FNC_EndMission;
};

//if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
//	"INSERTSIDEHERE forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
//};

//Time limit message/time and moved to settings.sqf

sleep (10); //This determines how frequently the end conditions should be checked in seconds