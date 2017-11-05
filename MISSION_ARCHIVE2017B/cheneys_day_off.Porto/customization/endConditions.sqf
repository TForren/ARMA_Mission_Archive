//Helper vars if possible to help admin to know when to call
eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
publicVariable "eastCasualty";

westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
publicVariable "westCasualty";

testVar = TRUE;
publicVariable "testVar";

//Old end conditions system
//if (_eastCasualty >= 60) exitWith { //ends when Opfor deaths above or equal to 75%
//	"INSERTSIDEHERE forces have taken too many casualties to continue operations. <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
//};

//if (_westCasualty >= 60) exitWith { //ends when Bluefor deaths above or equal to 75%
//	"INSERTSIDEHERE forces have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
//};

//Time limit message/time and moved to settings.sqf

/*
FinalMessage = "";
{
	_curDuder = missionNameSpace getVariable (format ["%1",_x]);
	_msg =  _msg + str(player) + ": " + str(format ["%1", _curDuder]);

} foreach allPlayers;

victoryMessage = FinalMessage;
globalVariable "victoryMessage";
*/
sleep (10); //This determines how frequently the end conditions should be checked in seconds